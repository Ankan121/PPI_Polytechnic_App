import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ppi/constants/color.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../../../controller/homeController.dart';

class ppicareerallview extends StatefulWidget {
  ppicareerallview({super.key, required this.alllink, this.name});
  final alllink;
  final name;

  @override
  State<ppicareerallview> createState() => _ppicareerallviewState();
}

class _ppicareerallviewState extends State<ppicareerallview> {
  late final WebViewController _controller;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    _controller = createWebViewController(widget.alllink);
  }

  WebViewController createWebViewController(String url) {
    return WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            if (mounted) {
              setState(() {
                isLoading = progress < 100;
              });
            }
          },
          onPageStarted: (String url) {
            if (mounted) {
              setState(() {
                isLoading = true;
              });
            }
          },
          onPageFinished: (String url) {
            if (mounted) {
              setState(() {
                isLoading = false;
              });
            }
          },
          onHttpError: (HttpResponseError error) {},
          onWebResourceError: (WebResourceError error) {},
          onNavigationRequest: (NavigationRequest request) {
            if (request.url.startsWith('https://www.youtube.com/')) {
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse(widget.alllink));
  }

  // WebView controls
  Future<void> _goBack() async {
    if (await _controller.canGoBack()) {
      _controller.goBack();
    } else {
      Get.back();
      Get.snackbar("Exit", "The App");
      // Get.snackbar("Info", "No previous page");
    }
  }

  void _reloadPage() {
    _controller.reload();
  }

  Future<void> _clearCookies() async {
    final cookiesCleared = await WebViewCookieManager().clearCookies();
    Get.snackbar("Cookies", cookiesCleared ? "Cleared successfully" : "Failed to clear cookies");
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (await _controller.canGoBack()) {
          // WebView এর আগের পেজে যেতে পারলে ফিরে যাবে
          _controller.goBack();
          return false; // ব্যাক ইভেন্ট সম্পন্ন হয়ে গেলে false ফেরত দেয়
        } else {
          Get.snackbar("Exit", "The App");
          return true; // আগের পেজ না থাকলে স্ক্রিন থেকে বের হবে
        }
      },
      child: GetBuilder<HomeContrller>(builder: (HomeContrller homcon) {
        return Scaffold(
          backgroundColor: AppColor.homepageappbarcolor,
          appBar: AppBar(
            backgroundColor: AppColor.homepageappbarcolor,
            leading: IconButton(
              icon: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(
                    width: 3,
                    color: Colors.white,
                    style: BorderStyle.solid,
                  ),
                ),
                child: Icon(Icons.arrow_back, color: AppColor.whiteColor, size: 25),
              ),
              onPressed: _goBack,
            ),
            actions: [
              IconButton(
                onPressed: _reloadPage,
                icon: Icon(Icons.refresh, color: AppColor.whiteColor),
                tooltip: 'Reload',
              ),
              IconButton(
                onPressed: _clearCookies,
                icon: Icon(Icons.delete, color: AppColor.whiteColor),
                tooltip: 'Clear Cookies',
              ),
              IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: Icon(Icons.clear, color: AppColor.whiteColor),
                tooltip: 'Close',
              ),
            ],
            title: Center(
              child: Text(
                widget.name ?? 'Loading...',
                style: context.textTheme.titleLarge?.copyWith(
                  color: AppColor.whiteColor,
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            centerTitle: true,
          ),
          body: Stack(
            children: [
              WebViewWidget(controller: _controller),
              if (isLoading)
                Center(
                  child: CircularProgressIndicator(
                    color: AppColor.homepageappbarcolor,
                  ),
                ),
            ],
          ),
        );
      }),
    );
  }
}
