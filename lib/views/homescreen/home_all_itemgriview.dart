import 'package:flutter/material.dart';

class HomeAllItemgriview extends StatefulWidget {
  const HomeAllItemgriview({super.key});

  @override
  State<HomeAllItemgriview> createState() => _HomeAllItemgriviewState();
}

class _HomeAllItemgriviewState extends State<HomeAllItemgriview> {
  @override
  Widget build(BuildContext context) {
    return  Transform.translate(
      offset: Offset(0, -180),  // X এবং Y এ স্থানান্তর
      child: GridView.builder(
        itemCount: 20,
        physics: NeverScrollableScrollPhysics(),  // GridView scroll হবে না
        shrinkWrap: true,  // Content wrap করে ফেলা হবে
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,  // 2 টা column
          crossAxisSpacing: 10,  // Column এর মধ্যে spacing
          mainAxisSpacing: 10,  // Row এর মধ্যে spacing
          childAspectRatio: 1,  // Aspect ratio ঠিক রাখতে হবে (height:width = 1:1)
        ),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(20.0),
            child: Card(
              elevation: 5,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ), // Container এর background color
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // ClipRRect(
                    //     borderRadius: BorderRadius.circular(100),  // 20px এর গোলাকার কোণা
                    //     child: Container(
                    //       height: 80,  // Container এর উচ্চতা
                    //       width: 80,   // Container এর প্রস্থ
                    //       decoration: BoxDecoration(
                    //         color: Colors.white,
                    //         borderRadius: BorderRadius.all(Radius.circular(100)),
                    //         boxShadow: [
                    //           BoxShadow(
                    //             color: Colors.black.withOpacity(1),
                    //             spreadRadius: 5,
                    //             blurRadius: 7,
                    //             offset: Offset(0, 3), // changes position of shadow
                    //           ),
                    //         ],
                    //       ),
                    //       child: Center(
                    //         child: Image.asset('assets/homepage/1-appbarprofile.png',fit: BoxFit.fill,)
                    //       ),
                    //     ),
                    // ),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),  // Shadow এর রঙ
                            spreadRadius: 2,  // Shadow এর বিস্তার
                            blurRadius: 16,   // Blur এর পরিমাণ
                            offset: Offset(0, 5),  // Shadow এর অবস্থান (X,Y)
                          ),
                        ],
                      ),
                      child: CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.white,
                        child: ClipOval(
                            child: Image.asset('assets/homepage/1-appbarprofile.png',fit: BoxFit.fill,)
                        ),
                      ),
                    ),


                    Text('data')
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
