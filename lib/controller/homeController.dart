import 'package:get/get.dart';

import '../model/home_gridview.dart';
import '../model/ppialumniassociation.dart';

class HomeContrller extends GetxController {

  //==================Home Scren Gridview===================
  List HomeGridviewlist = [
    {
      'name': 'Admission\nand  Fee',
      'img': 'assets/homepage/3-admission and fee.png',
      'page': 'Admissionandfee',
    },
    {
      'name': 'Department',
      'img': 'assets/homepage/4-department.png',
      'page': 'Department',
    },
    {
      'name': 'Notice Board',
      'img': 'assets/homepage/5-noticeboard.png',
      'page': 'NoticeBoard',
    },
    {
      'name': 'Teachers\nInformation',
      'img': 'assets/homepage/6-teachers information.png',
      'page': 'TeachersInformation',
    },
    {
      'name': 'Result',
      'img': 'assets/homepage/7-result.jpg',
      'page': 'Result',
    },
    {
      'name': 'Student of the\nAward',
      'img': 'assets/homepage/8-student of the award.png',
      'page': 'StudentOfTheAward',
    },
    {
      'name': 'Skill Development',
      'img': 'assets/homepage/9-skill development.png',
      'page': 'SkillDevelopment',
    },
    {
      'name': 'Entertainment',
      'img': 'assets/homepage/10-entertainment.png',
      'page': 'Entertainment',
    },
    {
      'name': 'PPI Alumni\nAssociation',
      'img': 'assets/homepage/11-ppi alumni association.png',
      'page': 'PPIAluminiAssociation',
    },
    {
      'name': 'PPI Career',
      'img': 'assets/homepage/12-ppi career.png',
      'page': 'PPICareer',
    },
    {
      'name': 'About institute',
      'img': 'assets/homepage/13-about institute.png',
      'page': 'AboutInstitute',
    },
  ];

  //==================Admission and Fee===================
  List AdmissionandfeeItems = [
    {
      'buttonitem': 'Admission Requirement',
      'page': 'AdmissionRequirement',
    },
    {
      'buttonitem': 'Admission Fee',
      'page': 'AdmissionFee',
    },
    {
      'buttonitem': 'Wavier',
      'page': 'Wavier',
    },
    {
      'buttonitem': 'Kanchan Foundation Association',
      'page': 'KanchanFA',
    },
    {
      'buttonitem': 'Online Apply',
      'page': 'OnlineApply',
    },
  ];

  //==================Department===================
  List departmentitems = [
    {
      "buttonitem": "Computer",
      "items": "এই কোর্স সম্পর্কেঃ\n\nকম্পিউটার প্রযুক্তি তথ্য প্রযুক্তির সাথে সম্পর্কযুক্ত এবং কম্পিউটার, নেটওয়ার্ক, কম্পিউটার নেটওয়ার্ক ইত্যাদি অধ্যয়নের জন্য ব্যবহৃত হয়। এটি বিভিন্ন সফ্টওয়্যার প্রোগ্রাম এবং ডিভাইসগুলির একটি উন্নয়নশীল তালিকাকে অন্তর্ভুক্ত করে। কম্পিউটারগুলি সঠিকভাবে কাজ করে তা নিশ্চিত করার জন্য এটি প্রোগ্রামিং, নেটওয়ার্কিং, ডাটাবেস ডিজাইন এবং বিকাশ অন্তর্ভুক্ত করে।\n\nএকজন কম্পিউটার ইঞ্জিনিয়ার যেসব পদের দায়িত্ব পালন করে থাকেন সেগুলো হল-\n•   সফটওয়্যার ইঞ্জিনিয়ার\n•   হার্ডওয়্যার ইঞ্জিনিয়ার\n•   প্রোগ্রামার\n•   গ্রাফিক্স ডিজাইনার\n•   নেটওয়ার্কিং ইঞ্জিনিয়ার\n•   সফটওয়্যার টেস্টার\n•   ওয়েব ডিজাইনার\n•   অ্যাপ ডেভেলপার\n•   প্রজেক্ট ইঞ্জিনিয়ার\n•   টেকনিক্যাল রাইটার\n•   সিস্টেম এনালিস্ট\n•   ডাটাবেস ইঞ্জিনিয়ার\n•   ক্লাউড আর্কিটেক্ট\n\nকম্পিউটার ইঞ্জিনিয়ারের কর্মক্ষেত্রঃ\n\nবর্তমানে বাংলাদেশে ডিজিটালাইজেশনের কারণে সব ধরনের প্রতিষ্ঠানেই রয়েছে কম্পিউটার ইঞ্জিনিয়ারদের চাহিদা, সেরকম কিছু প্রতিষ্ঠান হল-\n•   পাওয়ার প্লান্ট, পিডিবি, পল্লী বিদ্যুৎ, ডেসকো, ওয়াসাসহ বিভিন্ন সরকারি প্রতিষ্ঠান।\n•   ইনফরমেশন এ্যান্ড কম্যুনিকেশন টেকনোলজি সেক্টর।\n•   সরকারি-বেসরকারি ব্যাংক ও বিমা কোম্পানিগুলোতে মেনটেইন্যান্স ও আইটি অফিসার হিসেবে।\n•   সৌর বিদ্যুৎ ও পরমাণু\n•   গবেষণাকেন্দ্র।\n•   শিল্প-কারখানা, গার্মেন্টস ইন্ডাস্ট্রি।\n•   ফাইন্যান্সিয়াল সার্ভিস সেক্টর।\n•   কম্পিউটার ইন্ডাস্ট্রি।\n•   টেলিকম্যুনিকেশন সেক্টর।\n•   ই-কমার্স সেক্টর।\n•   বায়োটেকনোলজি সেক্টর।\n•   বিভিন্ন প্রিন্ট এবং ইলেক্ট্রনিক্স মিডিয়া\n•   সরকারি ও বেসরকারি পলিটেকনিক ইন্সটিটিউটসমূহ।\n\nভর্তির যোগ্যতাঃ\n\nন্যূনতম এসএসসি/সমমান পাস। সাধারণ গণিতে ন্যূনতম জিপিএ ২.০০ এবং ৪০% নম্বর। বয়স এবং এসএসসি পাসের বছরের জন্য কোন সীমাবদ্ধতা নেই।\n\nউচ্চ শিক্ষার সুযোগঃ\n\nকম্পিউটার সাইন্স এন্ড টেকনোলজিতে সম্পূর্ণ ডিপ্লোমা করার পরে তাদের বিএসসি শেষ করার সুযোগ রয়েছে। এবং M.Sc. DUET, IEB এবং বাংলাদেশের অনেক বেসরকারি বিশ্ববিদ্যালয় থেকে কম্পিউটার সাইন্স এন্ড টেকনোলজিতে শিক্ষার্থীরা তাদের B.Sc., M.Sc. এবং বিদেশ থেকে পিএইচডি ডিগ্রি গ্রহণ করতে পারবে।\n\nপাঠ্যক্রমঃ\n\nবাংলাদেশ কারিগরি শিক্ষা বোর্ডের (বিটিইবি) ডিপ্লোমা ইন কম্পিউটার সাইন্স এন্ড টেকনোলজিতে - এর পাঠ্যক্রম তাত্ত্বিক এবং ব্যবহারিক উভয় উপাদান নিয়ে গঠিত। প্রোগ্রামের সময়কাল চার বছর, এবং এটি আটটি সেমিস্টারে বিভক্ত।"
    },
    {
      "buttonitem": "Electrical",
      "items": "এই কোর্স সম্পর্কেঃ\n\nইলেকট্রিক্যাল ইঞ্জিনিয়ারিং হলো বৃহত্তম ও দ্রুত বর্ধনশীল ক্ষেত্রগুলোর মধ্যে একটি যা বিদ্যুৎ, ইলেকট্রনিক্স এবং ইলেক্ট্রোম্যাগনেটিজমের শিক্ষণ এবং প্রয়োগ নিয়ে কাজ করে। ইলেকট্রিক্যাল ইঞ্জিনিয়ারিং বলতে মূলত বড় ধরনের বৈদ্যুতিক ব্যবস্থাপনা যেমন বিদ্যুৎ শক্তি উৎপাদন, সঞ্চালন, পরিবহন, টেলিযোগাযোগ, বৈদ্যুতিক সার্কিট ডিজাইন ও এস্টিমেটিং, বৈদ্যুতিক যন্ত্রপাতি নিয়ন্ত্রণ, পরিচালনা সহ ইত্যাদি কার্যাবলী সম্পাদন করাকে বোঝায়। শিল্পায়ন নির্ভর এ সময়ে যে কয়েকটি পেশাকে সবচেয়ে সম্ভাবনাময় ধরা হয়, ইলেকট্রিক্যাল ইঞ্জিনিয়ারিং তাদের মধ্যে একটি। একজন ইলেকট্রিক্যাল ইঞ্জিনিয়ার বিভিন্ন শিল্পে ব্যবহৃত যন্ত্রের ডিজাইন, নির্মাণ ও রক্ষণাবেক্ষণের কাজ করে থাকেন। ডিপ্লোমা ইন ইলেকট্রিক্যাল ইঞ্জিনিয়ারিং একটি ৪ বছরের প্রোগ্রাম যা ব্যবহারিক এবং দক্ষতা ভিত্তিক প্রশিক্ষণের উপর দৃষ্টি নিবদ্ধ করে।\n\nবৈদ্যুতিক প্রকৌশলের ক্ষেত্রটি বিদ্যুৎ উৎপাদন এবং ট্রান্সমিশন সিস্টেম, মোটর, ব্যাটারি এবং নিয়ন্ত্রণ ব্যবস্থা সহ বেশ কয়েকটি বিশেষ বিভাগে বিভক্ত হয়েছে। ইলেকট্রিক্যাল ইঞ্জিনিয়ারিং-এর মধ্যে ইলেকট্রনিক্সও রয়েছে, যা নিজেই আরও বেশি সংখ্যক উপশ্রেণীতে বিভক্ত হয়েছে, যেমন রেডিও ফ্রিকোয়েন্সি সিস্টেম, টেলিকমিউনিকেশন, রিমোট সেন্সিং, সিগন্যাল প্রসেসিং, ডিজিটাল সার্কিট, ইন্সট্রুমেন্টেশন, অডিও, ভিডিও এবং অপটোইলেক্ট্রনিক্স।\n\nBTEB দ্বারা প্রদত্ত ডিপ্লোমা ইন ইলেকট্রিক্যাল ইঞ্জিনিয়ারিং প্রোগ্রামে ভর্তির জন্য যোগ্য হতে, প্রার্থীদের অবশ্যই মাধ্যমিক শিক্ষা শেষ করতে হবে এবং 4.00 স্কেলে 2.50 এর ন্যূনতম গ্রেড পয়েন্ট গড় (GPA) প্রাপ্ত হতে হবে। ভর্তি প্রক্রিয়ার অংশ হিসাবে প্রার্থীদের একটি সাক্ষাত্কারে উত্তীর্ণ হতে হতে পারে।\n\nইলেকট্রিক্যাল ইঞ্জিনিয়ারিংয়ে চাকরির পদবিঃ\n\n•   উপসহকারী প্রকৌশলী\n•   সাইট ইঞ্জিনিয়ার\n•   জুনিয়র এক্সিকিউটিভ ইঞ্জিনিয়ার\n•   এস্টিমেটর\n•   প্রজেক্ট ইঞ্জিনিয়ার\n\nজব প্লেসমেন্ট সেক্টরঃ\n\nচার বছর মেয়াদি ডিপ্লোমা ইন ইলেকট্রিক্যাল ইঞ্জিনিয়ারিং পাশ করে সরাসরি সরকারি চাকরিতে দ্বিতীয় শ্রেণি অথবা নন-ক্যাডার পদমর্যাদায় (বেতন স্কেলঃ ১০ম-গ্রেড) যেসব প্রতিষ্ঠানে যোগদান করতে পারবেন তার তালিকা সমূহ নিম্নরূপ-\n•   বিদ্যুৎ উন্নয়ন বোর্ড\n•   নর্থ ওয়েস্ট পাওয়ার জোন\n•   শিক্ষা প্রকৌশল অধিদপ্তর\n•   ডেসকো\n•   বাংলাদেশ রেলওয়ে\n•   ডিপিডিসি\n•   সড়ক ও জনপথ অধিদপ্তর\n•   পাট ও বস্ত্র মন্ত্রণালয়\n•   গণপূর্ত অধিদপ্তর\n•   পার্বত্য চট্টগ্রাম বিষয়ক মন্ত্রণালয়\n•   ভূমি মন্ত্রণালয়\n•   ডাক ও টেলিযোগাযোগ ও তথ্য প্রযুক্তি\n•   স্থানীয় সরকার ও পল্লী উন্নয়ন\n•   প্রতিরক্ষা মন্ত্রণালয়\n•   সরকারি ব্যাংক সমূহ\n•   শিল্প মন্ত্রণালয়\n•   পানি উন্নয়ন বোর্ড\n•   ওয়াসা\n•   পি.জি.সি.বি\n•   সিটি কর্পোরেশন\n•   বাংলাদেশ পরমাণু শক্তি কমিশন\n•   বেপজা\n•   বি.টি.সি.এল\n•   বাংলাদেশ সেনাবাহিনী\n•   গ্যাস কোম্পানি লিমিটেড\n•   পলিটেকনিক ইন্সটিটিউট\n\nভর্তির যোগ্যতাঃ\n\nন্যূনতম এসএসসি/সমমান পাস। সাধারণ গণিতে ন্যূনতম জিপিএ ২.০০ এবং ৪০% নম্বর। বয়স এবং এসএসসি পাসের বছরের জন্য কোন সীমাবদ্ধতা নেই।\n\nউচ্চ শিক্ষার সুযোগঃ\n\nইলেকট্রিক্যাল ইঞ্জিনিয়ারিংয়ে সম্পূর্ণ ডিপ্লোমা করার পরে তাদের বিএসসি শেষ করার সুযোগ রয়েছে। এবং M.Sc. DUET, IEB এবং বাংলাদেশের অনেক বেসরকারি বিশ্ববিদ্যালয় থেকে সিভিল ইঞ্জিনিয়ারিংয়ে। ছাত্ররাও তাদের B.Sc., M.Sc. এবং বিদেশ থেকে পিএইচডি ডিগ্রি গ্রহণ করতে পারবে।\n\nপাঠ্যক্রমঃ\n\nবাংলাদেশ কারিগরি শিক্ষা বোর্ডের (বিটিইবি) ডিপ্লোমা ইন ইলেকট্রিক্যাল ইঞ্জিনিয়ারিং-এর পাঠ্যক্রম তাত্ত্বিক এবং ব্যবহারিক উভয় উপাদান নিয়ে গঠিত। প্রোগ্রামটির লক্ষ্য হল শিক্ষার্থীদের ইলেকট্রিক্যাল ইঞ্জিনিয়ারিংয়ের ক্ষেত্রে জ্ঞান এবং দক্ষতা প্রদান করা যাতে তারা বিভিন্ন শিল্প, সরকারী সংস্থা এবং নির্মাণ কোম্পানিতে কাজ করতে পারে। প্রোগ্রামের সময়কাল চার বছর, এবং এটি আটটি সেমিস্টারে বিভক্ত।"
    },
    {
      "buttonitem": "Mechanical",
      "items": "সংক্ষিপ্ত পরিচিতিঃ\n\nমেকানিক্যাল ইঞ্জিনিয়ারিং বা যন্ত্রকৌশল পৃথিবীর অন্যতম বৃহত্তম ও বিস্তৃত ইঞ্জিনিয়ারিং ক্ষেত্র। মেকানিক্যাল ইঞ্জিনিয়ারিংকে বলা হয় মাদার অব ইঞ্জিনিয়ারিং। যন্ত্র প্রকৌশল প্রকৌশলের একটি বিষয় যাতে যান্ত্রিক ব্যবস্থাসমূহ রক্ষণাবেক্ষণ, নকশা, উৎপাদন এবং বিশ্লেষণের জন্য পদার্থবিজ্ঞানের সূত্রগুলো ব্যবহার করা হয়। বলবিজ্ঞান, গতিবিজ্ঞান, তাপগতিবিজ্ঞান এবং শক্তি সম্বন্ধে একটি সুস্পষ্ট জ্ঞান এই প্রকৌশল অধ্যয়নের জন্য প্রয়োজনীয়। যন্ত্র প্রকৌশলীরা মোটরগাড়ি, বিমান, শীতাতপ নিয়ন্ত্রণ ব্যবস্থা, শিল্প কারখানার যন্ত্রপাতি নির্মাণ এবং চিকিৎসা বিজ্ঞানের যন্ত্রাদি নির্মাণে এই জ্ঞান ব্যবহার করেন।\n\nএকজন মেকানিক্যাল ইঞ্জিনিয়ারের কাজঃ\n\nমেকানিক্যাল ইঞ্জিনিয়াররা ছোট পার্টস থেকে শুরু করে অনেক বড় বড় মেশিন, যন্ত্রপাতি বা যানবাহন ডিজাইন ও সেই পণ্য উৎপাদনের পুরো পদ্ধতিকে অধিক কর্মক্ষম করার জন্য কাজ করে থাকেন। তারা একটা পণ্য তৈরির সকল পর্যায়ে (গবেষণা, নকশা, উৎপাদন, ইনস্টলেশন এবং চূড়ান্ত চালু) কাজ করতে পারেন।\n\nতাদের কাজগুলো সাধারণত নিম্নরূপঃ\n\n•   আর্থিকভাবে সাশ্রয়ী, নিরাপদ ও টেকশই সরঞ্জাম ডিজাইন ও তৈরি করা।\n•   অন্যান্য শ্রেণীর ইঞ্জিনিয়ারদের সাথে আলোচনা করে কোন প্রজেক্টের জন্য প্রয়োজনীয় দিকগুলো বাছাই করা\n•   তাত্বিক ডিজাইনের কার্যকারিতা জানার জন্য সিমুলেশন করা ও সেই অনুয়াযী ডিজাইনে প্রয়োজনীয় পরিবর্তন আনা।\n•   পণ্য সম্পর্কিত সমস্যা সমাধানের জন্য উৎপাদন বিভাগের লোকজন, সরবরাহকারী এবং গ্রাহকদের সঙ্গে আলোচনা করা।\n•   প্রকৌশল ও অন্যান্য খাতের পেশাদারদের সঙ্গে কাজ করা।\n•   যন্ত্রপাতির মেইনটেনেন্সের দায়িত্ব পালন করা।\n\nমেকানিক্যাল ইঞ্জিনিয়ারদের কর্মক্ষেত্রঃ\n\nমেকানিক্যাল ইঞ্জিনিয়ারদের কর্মসংস্থানের সুযোগ রয়েছে প্রায়ই প্রতিটি ক্ষেত্রে। সরকারি, বেসরকারি সেক্টরে এমন কি দেশের বাইরেও তাদের চাহিদা রয়েছে। উল্লেখ্যযোগ্য কিছু কর্মক্ষেত্র হল-\n•   মেকানিকাল ইঞ্জিনিয়ারিং-এ ডিপ্লোমা অর্জনের পর ২য় শ্রেণীর গেজেটেড কর্মকর্তা হিসেবে চাকরির সুযোগ আছে।\n•   সরকারি, বেসরকারি পলিটেকনিক ইন্সটিটিউটে জুনিয়র ইন্সট্রাকটর হিসেবে।\n•   ইঞ্জিনিয়ারিং, ট্রান্সপোর্ট, ম্যানুফ্যাকচারিং, কন্সট্রাকশন এবং প্রসেসিং কোম্পানি।\n•   ইউটিলিটিজ ( গ্যাস, পানি, বিদ্যুৎ প্রভৃতি ) কোম্পানি\n•   রেলওয়ে, বিমান, অটোমোবাইল, রিফাইনারি ইন্ডাস্ট্রি।\n•   পরমাণু শক্তি কমিশন, বাংলাদেশ শিপিং কর্পোরেশন, বাংলাদেশ বিজ্ঞান ও প্রযুক্তি গবেষণা কেন্দ্র সহ অন্যান্য বৃহত্তম সরকারি প্রতিষ্ঠান।\n•   বিভিন্ন ধরনের পাওয়ার প্লান্ট কোম্পানি যেমনঃ BPDB, DESCO, DPDC, PGCB, EGCB, NESCO, EGCB, NPCBL ইত্যাদি\n•   সরকারি বিভিন্ন মন্ত্রণালয় ও সংস্থা যেমনঃ পেট্রোবাংলা, সিটি কর্পোরেশন, BIWTA, BRTA, BRTC, WASA ইত্যাদি\n•   কনসালটেন্সি এজেন্সি।\n•   R & D বেইজড কোম্পানি\n•   সিভিল সার্ভিস।\n•   আর্মড ফোর্স।\n•   সরকারি এজেন্সি।\n\nমেকানিক্যাল ইঞ্জিনিয়ারিং এর পদবীঃ\n\n•   উপ-সহকারী প্রকৌশলী\n•   সহকারী প্রকৌশলী (পদোন্নতি সাপেক্ষে)\n•   প্রোডাকশন ইঞ্জিনিয়ার/ সুপারভাইজার\n•   প্লান্ট ইনচার্জ\n•   মেইনটেনেন্স ইঞ্জিনিয়ার\n\nভর্তির যোগ্যতাঃ\n\nন্যূনতম এসএসসি/সমমান পাস। সাধারণ গণিতে ন্যূনতম জিপিএ ২.০০ এবং ৪০% নম্বর। বয়স এবং এসএসসি পাসের বছরের জন্য কোন সীমাবদ্ধতা নেই।\n\nউচ্চ শিক্ষার সুযোগঃ\n\nমেকানিক্যাল ইঞ্জিনিয়ারিংয়ে সম্পূর্ণ ডিপ্লোমা করার পরে তাদের বিএসসি শেষ করার সুযোগ রয়েছে। এবং M.Sc. DUET, IEB এবং বাংলাদেশের অনেক বেসরকারি বিশ্ববিদ্যালয় থেকে সিভিল ইঞ্জিনিয়ারিংয়ে। ছাত্ররাও তাদের B.Sc., M.Sc. এবং বিদেশ থেকে পিএইচডি ডিগ্রি গ্রহণ করতে পারবে।\n\nপাঠ্যক্রমঃ\n\nবাংলাদেশ কারিগরি শিক্ষা বোর্ডের (বিটিইবি) ডিপ্লোমা ইন মেকানিক্যাল ইঞ্জিনিয়ারিং - এর পাঠ্যক্রম তাত্ত্বিক এবং ব্যবহারিক উভয় উপাদান নিয়ে গঠিত। প্রোগ্রামটির লক্ষ্য হল শিক্ষার্থীদের মেকানিক্যাল ইঞ্জিনিয়ারিংয়ের ক্ষেত্রে জ্ঞান এবং দক্ষতা প্রদান করা যাতে তারা বিভিন্ন শিল্প, সরকারী সংস্থা এবং নির্মাণ কোম্পানিতে কাজ করতে পারে। প্রোগ্রামের সময়কাল চার বছর, এবং এটি আটটি সেমিস্টারে বিভক্ত।"
    },
    {
      "buttonitem": "Civil",
      "items": "এই কোর্স সম্পর্কেঃ\n\nপ্রকৌশলের প্রাচীনতম এবং সমৃদ্ধ শাখা গুলোর মধ্যে একটি হল সিভিল ইঞ্জিনিয়ারিং। আধুনিক জীবনের জন্য প্রয়োজনীয় অবকাঠামোগত সকল সুযোগ সুবিধা যেমন – হাইওয়ে, সেতু, টানেল, স্কুল, হাসপাতাল, বিমানবন্দর এবং অন্যান্য ভবন, স্যুয়েজ সিস্টেম এবং পানি পরিশোধন সিস্টেম সম্পর্কিত পরিকল্পনা, নকশা, নির্মাণ, রক্ষণাবেক্ষন এবং তত্ত্বাবধান এসবই সিভিল ইঞ্জিনিয়ারিং-এ অন্তর্ভুক্ত। প্রকৌশলের এই শাখাটি শুধুমাত্র অবকাঠামোগত উন্নতিই করে না, এটি জনসাধারণ এবং পরিবেশের স্বাস্থ্যগত সংরক্ষণও নিশ্চিত করে। সুতরাং আধুনিক সভ্যতার প্রতিটি পর্যায়ে সিভিল ইঞ্জিনিয়ারিং এর ছোঁয়া রয়েছে।\n\nসিভিল ইঞ্জিনিয়ারদের পদবিঃ\n\n•   উপসহকারী প্রকৌশলী (সিভিল)\n•   প্রজেক্ট ইঞ্জিনিয়ার\n•   সাইট ইঞ্জিনিয়ার\n•   অটোক্যাড অপারেটর\n•   ডিজাইনার\n•   ড্রাফ্টম্যান\n•   ক্রাফ্ট ইন্সট্রাক্টর\n\nজব প্লেসমেন্ট সেক্টরঃ\n\nসরকারী সেক্টরঃ\n•   স্থানীয় সরকার প্রকৌশল ভাগ (এলজিইডি)\n•   স্থানীয় সরকার পল্লী বিভাগ (এলজিআরডি)\n•   স্থানীয় সরকার বিভাগ (এলজিডি)\n•   শিক্ষা প্রকৌশল বিভাগ (EED)\n•   রাজধানী উন্নয়ন কর্তৃপক্ষ (রাজউক)\n•   বাংলাদেশ সেতু কর্তৃপক্ষ (বিবিএ)\n•   বাংলাদেশ সড়ক পরিবহন কর্তৃপক্ষ (বিআরটিএ)\n•   বাংলাদেশ রেলওয়ে\n•   স্বাস্থ্য প্রকৌশল বিভাগ (এইচইডি)\n•   সড়ক ও জনপথ বিভাগ (আরএইচডি)\n•   গণপূর্ত বিভাগ (PWD)\n•   পাওয়ার গ্রিড কোম্পানি অব বাংলাদেশ (PGCB)\n•   বাংলাদেশ পানি উন্নয়ন বোর্ড (BWDB)\n•   বাংলাদেশ বিদ্যুৎ উন্নয়ন বোর্ড (বিপিডিবি)\n•   বাংলাদেশ পাওয়ার ডিস্ট্রিবিউশন কোম্পানি (বিপিডিসি)\n•   বাখরাবাদ গ্যাস ডিস্ট্রিবিউশন কোম্পানি\n•   পানি উন্নয়ন বোর্ড\n•   ঢাকা ওয়াসা\n\nপ্রাইভেট সেক্টরঃ\n\n•   আব্দুল মোনেম লিমিটেড\n•   কনকর্ড\n•   বিল্ডিং টেকনোলজি অ্যান্ড আইডিয়াস লিমিটেড (বিটিআই)\n•   DOM-INNO\n•   নাভানা\n•   আনোয়ার ল্যান্ডমার্ক\n•   শেলটেক\n•   শান্ত হোল্ডিংস লিমিটেড\n•   Rangs Properties Ltd\n•   বিএসআরএম\n•   কেএসআরএম\n•   একেএস\n•   ম্যাকডোনাল্ড স্টিল\n•   সরকার স্টিল\n•   প্রাণ আরএফএল\n\nভর্তির যোগ্যতাঃ\n\nন্যূনতম এসএসসি / সমমান পাস। সাধারণ গণিতে ন্যূনতম জিপিএ ২.০০ এবং ৪০% নম্বর। বয়স এবং এসএসসি পাসের বছরের জন্য কোন সীমাবদ্ধতা নেই।\n\nউচ্চ শিক্ষার সুযোগঃ\n\nসিভিল ইঞ্জিনিয়ারিংয়ে সম্পূর্ণ ডিপ্লোমা করার পরে তাদের বিএসসি শেষ করার সুযোগ রয়েছে। এবং M.Sc. DUET, IEB এবং বাংলাদেশের অনেক বেসরকারি বিশ্ববিদ্যালয় থেকে সিভিল ইঞ্জিনিয়ারিংয়ে। ছাত্ররাও তাদের B.Sc., M.Sc. এবং বিদেশ থেকে পিএইচডি ডিগ্রি গ্রহণ করতে পারে।\n\nপাঠ্যক্রমঃ\n\nবাংলাদেশ কারিগরি শিক্ষা বোর্ডের (বিটিইবি) ডিপ্লোমা ইন সিভিল ইঞ্জিনিয়ারিং - এর পাঠ্যক্রম তাত্ত্বিক এবং ব্যবহারিক উভয় উপাদান নিয়ে গঠিত। প্রোগ্রামটির লক্ষ্য হল শিক্ষার্থীদের সিভিল ইঞ্জিনিয়ারিংয়ের ক্ষেত্রে জ্ঞান এবং দক্ষতা প্রদান করা যাতে তারা বিভিন্ন শিল্প, সরকারি সংস্থা এবং নির্মাণ কোম্পানিতে কাজ করতে পারে। প্রোগ্রামের সময়কাল চার বছর, এবং এটি আটটি সেমিস্টারে বিভক্ত।"
    },
    {
      "buttonitem": "Automobile",
      "items": "সংক্ষিপ্ত পরিচিতিঃ\n\nঅটোমোবাইল ইঞ্জিনিয়ারিং, প্রযুক্তিগত অগ্রগতির শীর্ষে থাকা একটি গতিশীল এবং পরিবর্তনশীল ক্ষেত্র, যা আধুনিক বিশ্বের পরিবহন ব্যবস্থা গঠনে সবচেয়ে গুরুত্বপূর্ণ ভূমিকা পালন করে। অটোমোবাইল ইঞ্জিনিয়াররা মূলত স্বয়ংক্রিয় যানবাহনের সহজ ভাষায় (গাড়ি, মোটরসাইকেল, বাস বা ট্রাক) ডিজাইন ও উৎপাদন থেকে শুরু করে এর কর্মদক্ষতা এবং নিরাপত্তাকে জোরদার করে, পাশাপাশি উদ্ভাবনী এবং টেকসই পরিবহন ব্যবস্থা গড়ার পেছনের চালিকাশক্তি। অটোমোবাইল ইঞ্জিনিয়ারিং হল ইঞ্জিনিয়ারিং এর একটি মাল্টিডিসিপ্লিনারি শাখা যা মেকানিক্যাল, ইলেকট্রিক্যাল, ইলেকট্রনিক্স এবং কম্পিউটার ইঞ্জিনিয়ারিং ক্ষেত্রসমূহের সংমিশ্রণ।\n\nপড়াশোনার মূল ক্ষেত্রঃ\n\nক) পাওয়ারট্রেন সিস্টেমঃ এই সিস্টেমটি গাড়ির ইঞ্জিনে উৎপাদিত শক্তিকে চাকা পর্যন্ত পাঠানোতে ব্যবহৃত সকল যন্ত্রাংশ নিয়ে গঠিত। যেহেতু ইঞ্জিনই গাড়ির প্রাণ তাই অটোমোবাইল ইঞ্জিনিয়ারিং এ এই সিস্টেমটিতে সর্বোচ্চ গুরুত্বারোপ করা হয়।\nখ) গতিশীলতাঃ মোটরস্পোর্টস বা রেসিং, অটোমোবাইল শিল্পের একটি বড় অংশ। যার কারণে যেকোনো গাড়ির গতিশীলতা বিষয়টি নিয়ে অটোমোবাইল ইঞ্জিনিয়ারিং এ উল্লেখযোগ্যভাবে গুরুত্ব দেয়া হয়।\nগ) সেফটি ইঞ্জিনিয়ারিংঃ দুর্ঘটনা পরিবহন জগতের সবচেয়ে বড় প্রতিবন্ধকতা। দুর্ঘটনার হার কমিয়ে আনা এবং সড়কে নিরাপত্তার সাথে গাড়ি চালনার জন্য বিভিন্ন অত্যাধুনিক ব্যবস্থা সম্পর্কে জোর দেয়া হয়ে থাকে।\nঘ) ইমিশন কন্ট্রোলঃ বৈশ্বিক উষ্ণতা বর্তমান বিশ্বের সবচেয়ে বড় চ্যালেঞ্জ। অটোমোবাইল শিল্পকে সম্পূর্ণ কার্বণহীন করার লক্ষ্যে উন্নত প্রযুক্তি Electric Vehicle (EV) এবং হাইব্রিড গাড়ির দিকে গুরুতারোপ করা হয়।\nঙ) গাড়ির ডিজাইনঃ আকর্ষণীয় এবং এরোডায়নামিক দক্ষতাসম্পন্ন গাড়ির ডিজাইনে অটোমোবাইল ইঞ্জিনিয়াররা কাজ করে থাক যা সার্বিকভাবে গাড়ির দক্ষতা বৃদ্ধি করে।\n\nঅটোমোবাইল ইঞ্জিনিয়ারদের কাজের ক্ষেত্রঃ\n\nদেশ এবং দেশের বাহিরে অটোমোবাইল ইঞ্জিনিয়ারদের চাহিদা এখন তুঙ্গে। দেশের ভেতরে বিভিন্ন গাড়ি সংযোজনকারী প্রতিষ্ঠান, গাড়ি আমদানীকারক প্রতিষ্ঠান, গাড়ি বিক্রয়োত্তর সেবাদানকারী প্রতিষ্ঠান এবং বিভিন্ন বিপননকারী প্রতিষ্ঠানসমূহের ট্রান্সপোর্ট বিভাগে কাজ করার সুবর্ণ সুযোগ রয়েছে। বেসরকারি চাকরির পাশাপাশি অটোমোবাইল ইঞ্জিনিয়ারদের সরকারি চাকরির সুযোগ রয়েছে BRTA, BRTC, RHD এবং সরকারি সকল প্রতিষ্ঠানের গঠনতন্ত্র অনুসারে তাদের গাড়ি মেরামত ও ট্রান্সপোর্ট বিভাগে অটোমোবাইল ইঞ্জিনিয়ারদের রয়েছে ১০ গ্রেড (২য় শ্রেণীর) সরকারি চাকরির সুবর্ণ সুযোগ। এর বাইরেও যেসকল শিক্ষার্থীরা স্বাধীনভাবে ব্যবসা করতে ইচ্ছুক তারা খুব সহজেই খুব অল্প মূলধন নিয়ে গাড়ি মেরামতের গ্যারেজ স্থাপন করে স্বাবলম্বী হতে পারে।\n\nউল্লেখযোগ্য শিল্পক্ষেত্র এবং প্রতিষ্ঠানসমূহঃ\n\n• নাভানা অটোমোবাইলস (Toyota)\n• এক্সিকিউটিভ মোটরস লি: (BMW)\n• কন্টিনেন্টাল মোটরস (Mercedes, Land Rover)\n• এইস অটোজ (Haval)\n• র্যাংগস গ্রুপ (Mitshubishi, Mahindra, Suzuki)\n• ইফাদ অটোজ (Ashok Leyland)\n• রানার অটোমোবাইলস (KTM, Eicher)\n\nভর্তির যোগ্যতা:\n\nন্যূনতম এসএসসি/সমমান পাস।\nসাধারণ গণিতে ন্যূনতম জিপিএ ২.০০ এবং ৪০% নম্বর।\nবয়স এবং এসএসসি পাসের বছরের জন্য কোন সীমাবদ্ধতা নেই।\n\nউচ্চশিক্ষার সুযোগঃ\n\nদেশের ভেতর প্রাইভেট বিশ্ববিদ্যালয় ওয়ার্ল্ড ইউনিভার্সিটিতে রয়েছে B.Sc in Automobile Engineering করার সুযোগ। দেশের বাইরেও রয়েছে অটোমোবাইলে উচ্চশিক্ষার সুবর্ণ সুযোগ।\n\nপাঠ্যক্রমঃ\n\nবাংলাদেশ কারিগরি শিক্ষা বোর্ডের (বিটিইবি) ডিপ্লোমা ইন অটোমোবাইল ইঞ্জিনিয়ারিং -এর পাঠ্যক্রম তাত্ত্বিক এবং ব্যবহারিক উভয় উপাদান নিয়ে গঠিত। প্রোগ্রামটির লক্ষ্য হল শিক্ষার্থীদের অটোমোবাইল ইঞ্জিনিয়ারিংয়ের ক্ষেত্রে জ্ঞান এবং দক্ষতা প্রদান করা যাতে তারা বিভিন্ন শিল্প, সরকারি সংস্থা এবং নির্মাণ কোম্পানিতে কাজ করতে পারে। প্রোগ্রামের সময়কাল চার বছর, এবং এটি আটটি সেমিস্টারে বিভক্ত।"
    },
    {
      "buttonitem": "Fabric Manufacturing",
      "items": "কোর্সের উদ্দেশ্যঃ\n\nটেক্সটাইল শিল্প বাংলাদেশের সবচেয়ে বড় রপ্তানিমুখী শিল্পখাত। সারা বিশ্বের মানুষের পোষাকের চাহিদা মেটাতে যে পরিমাণ বস্ত্র বা পোষাক উৎপাদিত হয়, সেখানে দ্বিতীয় শীর্ষ পোশাক রপ্তানিকারক দেশ হলো বাংলাদেশ (Made in Bangladesh)। তৈরি পোশাক রপ্তানিতে চীনের পর বাংলাদেশের অবস্থান দ্বিতীয়, এবং দেশের মোট রপ্তানি আয়ের ৮৩ শতাংশ আসে এই পোষাক শিল্পখাত থেকে। প্রায় ৪০ লাখ নারী-পুরুষের কর্মসংস্থান হয় এই পোশাকশিল্পে। পরিবেশবান্ধব পোশাক কারখানার সংখ্যার দিক থেকেও বিশ্বে সবার ওপরে বাংলাদেশ। দেশের সবচেয়ে বড় চাকরির ক্ষেত্র হচ্ছে টেক্সটাইল সেক্টর। প্রতিবছর প্রায় হাজার হাজার দক্ষ টেক্সটাইল ইঞ্জিনিয়ার এর প্রয়োজন হয় এই সেক্টরে। কিন্তু প্রয়োজনের তুলনায় দক্ষ টেক্সটাইল ডিপ্লোমা ইঞ্জিনিয়ার পাওয়া যায় না। বর্তমানে আমাদের দেশে ৪৪৫ টি স্পিনিং ফ্যাক্টরি, ৭৯৬টি ফেব্রিক ম্যানুফ্যাকচারিং ফ্যাক্টরি, ২৪০টি ডাইং, প্রিন্টিং ও ফিনিশিং ফ্যাক্টরি এবং ৫৫০০ টিরও বেশি গার্মেন্টস ফ্যাক্টরি রয়েছে। দেশের সবচেয়ে বড় রপ্তানিমুখী এই শিল্পখাতকে সচল রাখতে দক্ষ টেক্সটাইল ইঞ্জিনিয়ার গড়ে তোলা এই কোর্সের প্রধান উদ্দেশ্য।\n\nএই কোর্স কি পড়ানো হয়ঃ\n\nটেক্সটাইল ইঞ্জিনিয়ারিং এর ছাত্রছাত্রীরা মূলত তিনটি ধারাবাহিক বিষয়ে বিস্তারিত জ্ঞান লাভ করে।\n\n১) ইয়ার্ন ম্যানুফ্যাকচারিং ইঞ্জিনিয়ারিং – যেখানে ছাত্রছাত্রীরা টেক্সটাইল ফাইবার বা আঁশ থেকে সুতা প্রস্তুত প্রক্রিয়া সম্পর্কিত যাবতীয় তত্ত্বীয় এবং ব্যবহারিক জ্ঞান লাভ করে।\n২) ফেব্রিক ম্যানুফ্যাকচারিং ইঞ্জিনিয়ারিং – যেখানে ছাত্রছাত্রীরা সুতা থেকে কাপড় প্রস্তুত প্রক্রিয়া সম্পর্কিত যাবতীয় তত্ত্বীয় এবং ব্যবহারিক জ্ঞান লাভ করে।\n৩) অ্যাপারেল ম্যানুফ্যাকচারিং ইঞ্জিনিয়ারিং – যেখানে ছাত্রছাত্রীরা কাপড়কে পোষাকে রূপান্তর প্রক্রিয়া সম্পর্কিত যাবতীয় তত্ত্বীয় এবং ব্যবহারিক জ্ঞান লাভ করে।\n\n০৪ বছরব্যাপী উক্ত তিনটি বিষয়ের যাবতীয় জ্ঞান অর্জন শেষে ছাত্রছাত্রীরা বাংলাদেশের সবচেয়ে বড় পোষাক শিল্পে টেক্সটাইল ইঞ্জিনিয়ার হিসেবে কর্মে যোগদান করতে সক্ষম হয়।\n\nজব প্লেসমেন্ট সেক্টরঃ\n\nবাংলাদেশের সবচেয়ে বড় চাকরির ক্ষেত্র হচ্ছে টেক্সটাইল সেক্টর। মূলত টেক্সটাইল ইঞ্জিনিয়ারদের ছোট-বড় টেক্সটাইল বা গার্মেন্টস ইন্ডাস্ট্রির পণ্য উৎপাদন কার্যক্রমের প্রাণ হিসেবে বিবেচনা করা হয়। টেক্সটাইল ইঞ্জিনিয়ারগণ যে সকল ক্ষেত্রে চাকরির সুযোগ লাভ করে তা নিম্নরূপঃ\n\n• সরকারী বিভিন্ন টেক্সটাইল ইন্ডাস্ট্রি\n• বেসরকারি পর্যায়ে স্থাপিত দেশী-বিদেশী টেক্সটাইল ইন্ডাস্ট্রি\n• জুট রিসার্চ ইন্সটিটিউট\n• তুলা উন্নয়ন বোর্ড\n• বস্ত্র মন্ত্রণালয়\n• রেশম বোর্ড\n• বিভিন্ন বায়িং অফিস\n• বুটিক হাউস\n• ফ্যাশন হাউস\n• কাস্টমস\n• বিনিয়োগ বোর্ড\n• বিসিক ইত্যাদি\n\nসেই সঙ্গে বিভিন্ন রাষ্ট্রায়ত্ব ও বেসরকারি ব্যাংক এবং শিল্পঋণ প্রদানকারী সংস্থাগুলোর শিল্পঋণ বিতরণ সংশ্লিষ্ট ক্ষেত্রে চাকরির সুযোগ রয়েছে। ফলে শুধু দেশের অভ্যন্তরেই টেক্সটাইল ইঞ্জিনিয়ারদের জন্য রয়েছে বিশাল চাকুরির ক্ষেত্র।\n\nভর্তির যোগ্যতাঃ\n\nন্যূনতম এসএসসি/সমমান পাস।\nসাধারণ গণিতে ন্যূনতম জিপিএ ২.০০ এবং ৪০% নম্বর।\nবয়স এবং এসএসসি পাসের বছরের জন্য কোন সীমাবদ্ধতা নেই।\n\nউচ্চ শিক্ষার সুযোগঃ\n\nটেক্সটাইল ইঞ্জিনিয়ারিংয়ে সম্পূর্ণ ডিপ্লোমা করার পরে তাদের বিএসসি শেষ করার সুযোগ রয়েছে। এবং M.Sc. DUET, IEB এবং বাংলাদেশের অনেক বেসরকারি বিশ্ববিদ্যালয় থেকে টেক্সটাইল ইঞ্জিনিয়ারিংয়ে শিক্ষার্থীরা তাদের B.Sc., M.Sc. এবং বিদেশ থেকে পিএইচডি ডিগ্রি অর্জন করতে পারে।\n\nপাঠ্যক্রমঃ\n\nবাংলাদেশ কারিগরি শিক্ষা বোর্ডের (বিটিইবি) ডিপ্লোমা ইন টেক্সটাইল ইঞ্জিনিয়ারিং-এর পাঠ্যক্রম তাত্ত্বিক এবং ব্যবহারিক উভয় উপাদান নিয়ে গঠিত। প্রোগ্রামের সময়কাল চার বছর, এবং এটি আটটি সেমিস্টারে বিভক্ত।"
    },
    {
      "buttonitem": "Yarn Manufacturing",
      "items": "কোর্সের উদ্দেশ্যঃ\n\nটেক্সটাইল শিল্প বাংলাদেশের সবচেয়ে বড় রপ্তানিমুখী শিল্পখাত। সারা বিশ্বের মানুষের পোষাকের চাহিদা মেটাতে যে পরিমান বস্ত্র বা পোষাক উৎপাদিত হয়, সেখানে দ্বিতীয় শীর্ষ পোশাক রপ্তানিকারক দেশ হলো বাংলাদেশ (Made in Bangladesh)। তৈরি পোশাক রপ্তানিতে চীনের পর বাংলাদেশের অবস্থান দ্বিতীয়, বাংলাদেশে মোট রপ্তানী আয়ের ৮৩ শতাংশ আসে এই পোষাক শিল্পখাত থেকে। প্রায় ৪০ লাখ নারী-পুরুষের কর্মসংস্থান হয় এই পোশাকশিল্পে। পরিবেশবান্ধব পোশাক কারখানার সংখ্যার দিক থেকেও বিশ্বে সবার ওপরে বাংলাদেশ। বাংলাদেশের সবচেয়ে বড় চাকরির ক্ষেত্র হচ্ছে টেক্সটাইল সেক্টর। প্রতিবছর প্রায় হাজার হাজার দক্ষ টেক্সটাইল ইঞ্জিনিয়ার এর প্রয়োজন হয় এই সেক্টরে। কিন্তু প্রয়োজনের তুলনায় দক্ষ টেক্সটাইল ডিপ্লোমা ইঞ্জিনিয়ার পাওয়া যায় না। বর্তমানে আমাদের দেশে ৪৪৫ টি স্পিনিং ফ্যাক্টরী, ৭৯৬ টি ফ্যাব্রিক ম্যানুফ্যাকচারিং ফ্যাক্টরী, ২৪০ টি ডাইং, প্রিন্টিং ও ফিনিশিং ফ্যাক্টরী এবং ৫৫০০ টির ও বেশি গার্মেন্টস ফ্যাক্টরী রয়েছে। দেশের সবচেয়ে বড় রপ্তানিমুখী এই শিল্পখাতকে সচল রাখতে দক্ষ টেক্সটাইল ইঞ্জিনিয়ার গড়ে তোলা এই কোর্সের প্রধান উদ্দেশ্য। \n\nএই কোর্স কি পড়ানো হয়ঃ\n\nটেক্সটাইল ইঞ্জিনিয়ারিং এর ছাত্রছাত্রীরা মূলত তিনটি ধারাবাহিক বিষয়ে বিস্তারিত জ্ঞান লাভ করে।\n\n১) ইয়ার্ন ম্যানুফ্যাকচারিং ইঞ্জিনিয়ারিং – যেখানে ছাত্রছাত্রীরা টেক্সটাইল ফাইবার বা আঁশ থেকে সুতা প্রস্তুত প্রক্রিয়া সম্পর্কীত যাবতীয় তত্ত্বীয় এবং ব্যবহারিক জ্ঞান লাভ করে।\n\n২) ফেব্রিক ম্যানুফ্যাকচারিং ইঞ্জিনিয়ারিং – যেখানে ছাত্রছাত্রীরা সুতা থেকে কাপড় প্রস্তুত প্রক্রিয়া সম্পর্কীত যাবতীয় তত্ত্বীয় এবং ব্যবহারিক জ্ঞান লাভ করে।\n\n৩) সর্বশেষ অ্যাপারেল ম্যানুফেকচারিং ইঞ্জিনিয়ারিং – যেখানে ছাত্রছাত্রীরা কাপড়কে পোষাকে রুপান্তর প্রক্রিয়া সম্পর্কীত যাবতীয় তত্ত্বীয় এবং ব্যবহারিক জ্ঞান লাভ করে।\n\n০৪ বছরব্যাপী উক্ত চারটি বিষয়ের যাবতীয় জ্ঞান অর্জন শেষে ছাত্রছাত্রীরা বাংলাদেশের সবচেয়ে বড় পোষাক শিল্পে টেক্সটাইল ইঞ্জিনিয়ার হিসেবে কর্মে যোগদান করতে সক্ষম হয়।\n\nজব প্লেসমেন্ট সেক্টরঃ\n\nবাংলাদেশের সবচেয়ে বড় চাকরির ক্ষেত্র হচ্ছে টেক্সটাইল সেক্টর। মূলত টেক্সটাইল ইঞ্জিনিয়ারদের ছোট-বড় টেক্সটাইল বা গার্মেন্টস ইন্ডাস্ট্রির পণ্য উৎপাদন কার্যক্রমের প্রাণ হিসেবে বিবেচনা করা হয়। টেক্সটাইল ইঞ্জিনিয়ারগন যে সকল ক্ষেত্রে চাকুরীর সুযোগ লাভ করে তা নিম্নরুপঃ\n\n• সরকারী বিভিন্ন টেক্সটাইল ইন্ডাস্ট্রি\n• বেসরকারি পর্যায়ে স্থাপিত দশী-বিদেশী টেক্সটাইল ইন্ডাস্ট্রি\n• জুট রিসার্চ ইন্সটিটিউট\n• তুলা উন্নয়ন বোর্ড\n• বস্ত্র মন্ত্রণালয়\n• রেশম বোর্ড\n• বিভিন্ন বায়িং অফিস\n• বুটিক হাউস\n• ফ্যাশন হাউস\n• কাস্টমস\n• বিনিয়োগ বোর্ড\n• বিসিক ইত্যাদি\n\nসেই সঙ্গে বিভিন্ন রাষ্ট্রায়ত্ব ও বেসরকারি ব্যাংক এবং শিল্পঋণ প্রদানকারী সংস্থাগুলোর শিল্পঋণ বিতরণ সংশ্লিষ্ট ক্ষেত্রে চাকরির সুযোগ রয়েছে। ফলে শুধু দেশের অভ্যন্তরেই টেক্সটাইল ইঞ্জিনিয়ারদের জন্য রয়েছে বিশাল চাকুরির ক্ষেত্র।\n\nভর্তির যোগ্যতাঃ\n\nন্যূনতম এসএসসি/সমমান পাস।\nসাধারণ গণিতে ন্যূনতম জিপিএ ২.০০ এবং ৪০% নম্বর।\nবয়স এবং এসএসসি পাসের বছরের জন্য কোন সীমাবদ্ধতা নেই।\n\nউচ্চ শিক্ষার সুযোগঃ\n\nটেক্সাটাইল ইঞ্জিনিয়ারিংয়ে সম্পূর্ণ ডিপ্লোমা করার পরে তাদের বিএসসি শেষ করার সুযোগ রয়েছে। এবং M.Sc. DUET, IEB এবং বাংলাদেশের অনেক বেসরকারি বিশ্ববিদ্যালয় থেকে টেক্সাটাইল ইঞ্জিনিয়ারিংয়ে শিক্ষার্থীরা তাদের B.Sc., M.Sc. এবং বিদেশ থেকে পিএইচডি ডিগ্রি।\n\nপাঠ্যক্রমঃ\n\nবাংলাদেশ কারিগরি শিক্ষা বোর্ডের (বিটিইবি) ডিপ্লোমা ইন টেক্সাটাইল ইঞ্জিনিয়ারিং-এর পাঠ্যক্রম তাত্ত্বিক এবং ব্যবহারিক উভয় উপাদান নিয়ে গঠিত। প্রোগ্রামের সময়কাল চার বছর, এবং এটি আটটি সেমিস্টারে বিভক্ত।"
    },
    {
      'buttonitem': 'Apparel Manufacturing',
      "items": "কোর্সের উদ্দেশ্যঃ\n\nটেক্সটাইল শিল্প বাংলাদেশের সবচেয়ে বড় রপ্তানিমুখী শিল্পখাত। সারা বিশ্বের মানুষের পোষাকের চাহিদা মেটাতে যে পরিমান বস্ত্র বা পোষাক উৎপাদিত হয়, সেখানে দ্বিতীয় শীর্ষ পোশাক রপ্তানিকারক দেশ হলো বাংলাদেশ (Made in Bangladesh)। তৈরি পোশাক রপ্তানিতে চীনের পর বাংলাদেশের অবস্থান দ্বিতীয়, বাংলাদেশে মোট রপ্তানী আয়ের ৮৩ শতাংশ আসে এই পোষাক শিল্পখাত থেকে প্রায় ৪০ লাখ নারী - পুরুষের কর্মসংস্থান হয় এই পোশাকশিল্পে। পরিবেশবান্ধব পোশাক কারখানার সংখ্যার দিক থেকেও বিশ্বে সবার ওপরে বাংলাদেশ। বাংলাদেশের সবচেয়ে বড় চাকরির ক্ষেত্র হচ্ছে টেক্সটাইল সেক্টর। প্রতিবছর প্রায় হাজার হাজার দক্ষ টেক্সটাইল ইঞ্জিনিয়ার এর প্রয়োজন হয় এই সেক্টরে। কিন্তু প্রয়োজনের তুলনায় দক্ষ টেক্সটাইল ডিপ্লোমা ইঞ্জিনিয়ার পাওয়া যায় না। বর্তমানে আমাদের দেশে ৪৪৫ টি স্পিনিং ফ্যাক্টরী, ৭৯৬ টি ফ্যাব্রিক ম্যানুফ্যাকচারিং ফ্যাক্টরী, ২৪০ টি ডাইং, প্রিন্টিং ও ফিনিশিং ফ্যাক্টরী এবং ৫৫০০ টির ও বেশি গার্মেন্টস ফ্যাক্টরী রয়েছে। দেশের সবচেয়ে বড় রপ্তানিমুখী এই শিল্পখাতকে সচল রাখতে দক্ষ টেক্সটাইল ইঞ্জিনিয়ার গড়ে তোলা এই কোর্সের প্রধান উদ্দেশ্য।\n\nএই কোর্স কি পড়ানো হয়ঃ\n\nটেক্সটাইল ইঞ্জিনিয়ারিং এর ছাত্রছাত্রীরা মূলত তিনটি ধারাবাহিক বিষয়ে বিস্তারিত জ্ঞান লাভ করে।\n\n১) ইয়ার্ন ম্যানুফ্যাকচারিং ইঞ্জিনিয়ারিং – যেখানে ছাত্রছাত্রীরা টেক্সটাইল ফাইবার বা আঁশ থেকে সুতা প্রস্তুত প্রক্রিয়া সম্পর্কীত যাবতীয় তত্ত্বীয় এবং ব্যবহারিক জ্ঞান লাভ করে।\n\n২) ফেব্রিক ম্যানুফ্যাকচারিং ইঞ্জিনিয়ারিং – যেখানে ছাত্রছাত্রীরা সুতা থেকে কাপড় প্রস্তুত প্রক্রিয়া সম্পর্কীত যাবতীয় তত্ত্বীয় এবং ব্যবহারিক জ্ঞান লাভ করে।\n\n৩) সর্বশেষ অ্যাপারেল ম্যানুফেকচারিং ইঞ্জিনিয়ারিং – যেখানে ছাত্রছাত্রীরা কাপড়কে পোষাকে রুপান্তর প্রক্রিয়া সম্পর্কীত যাবতীয় তত্ত্বীয় এবং ব্যবহারিক জ্ঞান লাভ করে।\n\n০৪ বছরব্যাপী উক্ত চারটি বিষয়ের যাবতীয় জ্ঞান অর্জন শেষে ছাত্রছাত্রীরা বাংলাদেশের সবচেয়ে বড় পোষাক শিল্পে টেক্সটাইল ইঞ্জিনিয়ার হিসেবে কর্মে যোগদান করতে সক্ষম হয়।\n\nজব প্লেসমেন্ট সেক্টরঃ\n\nবাংলাদেশের সবচেয়ে বড় চাকরির ক্ষেত্র হচ্ছে টেক্সটাইল সেক্টর। মূলত টেক্সটাইল ইঞ্জিনিয়ারদের ছোট বড় টেক্সটাইল বা গার্মেন্টস ইন্ডাস্ট্রির পণ্য উৎপাদন কার্যক্রমের প্রাণ হিসেবে বিবেচনা করা হয়। টেক্সটাইল ইঞ্জিনিয়ারগন যে সকল ক্ষেত্রে চাকুরীর সুযোগ লাভ করে তা নিম্নরুপঃ\n\n• সরকারী বিভিন্ন টেক্সটাইল ইন্ডাস্ট্রি\n• বেসরকারি পর্যায়ে স্থাপিত দশী-বিদেশী টেক্সটাইল ইন্ডাস্ট্রি\n• জুট রিসার্চ ইন্সটিটিউট\n• তুলা উন্নয়ন বোর্ড\n• বস্ত্র মন্ত্রণালয়\n• রেশম বোর্ড\n• বিভিন্ন বায়িং অফিস\n• বুটিক হাউস\n• ফ্যাশন হাউস\n• কাস্টমস\n• বিনিয়োগ বোর্ড\n• বিসিক ইত্যাদি\n\nসেই সঙ্গে বিভিন্ন রাষ্ট্রায়ত্ব ও বেসরকারি ব্যাংক এবং শিল্পঋণ প্রদানকারী সংস্থাগুলোর শিল্পঋণ বিতরণ সংশ্লিষ্ট ক্ষেত্রে চাকরির সুযোগ রয়েছে। ফলে শুধু দেশের অভ্যন্তরেই টেক্সটাইল ইঞ্জিনিয়ারদের জন্য রয়েছে বিশাল চাকুরির ক্ষেত্র।\n\nভর্তির যোগ্যতাঃ\n\nন্যূনতম এসএসসি/সমমান পাস।\nসাধারণ গণিতে ন্যূনতম জিপিএ ২.০০ এবং ৪০% নম্বর।\nবয়স এবং এসএসসি পাসের বছরের জন্য কোন সীমাবদ্ধতা নেই।\n\nউচ্চ শিক্ষার সুযোগঃ\n\nটেক্সাটাইল ইঞ্জিনিয়ারিংয়ে সম্পূর্ণ ডিপ্লোমা করার পরে তাদের বিএসসি শেষ করার সুযোগ রয়েছে। এবং M.Sc. DUET, IEB এবং বাংলাদেশের অনেক বেসরকারি বিশ্ববিদ্যালয় থেকে টেক্সাটাইল ইঞ্জিনিয়ারিংয়ে শিক্ষার্থীরা তাদের B.Sc., M.Sc. এবং বিদেশ থেকে পিএইচডি ডিগ্রি।\n\nপাঠ্যক্রমঃ\n\nবাংলাদেশ কারিগরি শিক্ষা বোর্ডের (বিটিইবি) ডিপ্লোমা ইন টেক্সাটাইল ইঞ্জিনিয়ারিং-এর পাঠ্যক্রম তাত্ত্বিক এবং ব্যবহারিক উভয় উপাদান নিয়ে গঠিত। প্রোগ্রামের সময়কাল চার বছর, এবং এটি আটটি সেমিস্টারে বিভক্ত।",
    },
    {
      'buttonitem': 'Medical(Pharmacy)',
      "items": 'ADMISSION WILL START SOON...'
    },
    {
      'buttonitem': 'Medical(Laboratory)',
      "items": 'ADMISSION WILL START SOON...'
    },
  ];

  //==================Teachers Information===================
  //techersinformation
  List TeachersInformation = [
    {
      'buttonitem': 'Administrative',
      'page': 'Administrative',
    },
    {
      'buttonitem': 'Teachers',
      'page': 'Teachersdepartment',
    },
  ];

  //administrative
  List administrative = [
    {
      'img': 'assets/techersinformation/administrative/nurul huq.jpeg',
      'name': 'Engr. Nurul Hoque Prothan\nChairman (Kanchan Foundation)',
      'designation': 'AdmissionRequirement',
      'phone': 'AdmissionRequirement',
      'email': 'AdmissionRequirement',

    },
    {
      'img': 'assets/techersinformation/administrative/saroni.png',
      'name': 'Dr. Sharany Haque\nPrincipal\n(Pubergaon Polytechnic Institute)',
      'designation': 'AdmissionRequirement',
      'phone': 'AdmissionRequirement',
      'email': 'AdmissionRequirement',

    },
    {
      'img': 'assets/techersinformation/administrative/unknown.png',
      'name': 'Md. Atiqullah\nPrincipal (Acting),\nPubergaon Polytechnic Institute.',
      'designation': 'AdmissionRequirement',
      'phone': 'AdmissionRequirement',
      'email': 'AdmissionRequirement',

    },
    {
      'img': 'assets/techersinformation/administrative/unknown.png',
      'name': 'Dulal Roy',
      'designation': 'AdmissionRequirement',
      'phone': 'AdmissionRequirement',
      'email': 'AdmissionRequirement',

    },
  ];

  //administrative
  List teachers = [
    {
      'buttonitem': 'Administrative',
      'page': 'AdmissionRequirement',
    },
    {
      'buttonitem': 'Teachers',
      'page': 'AdmissionFee',
    },
  ];

  List techersdepartmentitems = [
    //Computer department
    {
      "buttonitem": "Computer",
      "items": [
        {
          'img': 'assets/techersinformation/teachers/computer/Monir.jpg',
          'name': 'Md. Monir Hossain',
          'designation': 'Instructor',
          'phone': '017**********',
          'email': '*****@gmail.com',

        },
        {
          'img': 'assets/techersinformation/administrative/saroni.png',
          'name': 'Dr. Sharany Haque',
          'designation': 'AdmissionRequirement',
          'phone': 'AdmissionRequirement',
          'email': 'AdmissionRequirement',

        },
        {
          'img': 'assets/techersinformation/administrative/unknown.png',
          'name': 'Md. Atiqullah',
          'designation': 'AdmissionRequirement',
          'phone': 'AdmissionRequirement',
          'email': 'AdmissionRequirement',

        },
        {
          'img': 'assets/techersinformation/administrative/unknown.png',
          'name': 'Dulal Roy',
          'designation': 'AdmissionRequirement',
          'phone': 'AdmissionRequirement',
          'email': 'AdmissionRequirement',

        },

      ]
    },
    {
      "buttonitem": "Electrical",
      "items": [
        {
          'img': 'assets/techersinformation/administrative/nurul huq.jpeg',
          'name': 'Hemail',
          'designation': 'AdmissionRequirement',
          'phone': 'AdmissionRequirement',
          'email': 'AdmissionRequirement',

        },
        {
          'img': 'assets/techersinformation/administrative/saroni.png',
          'name': 'Dr. Sharany HaquePrincipal (Pubergaon Polytechnic Institute)',
          'designation': 'AdmissionRequirement',
          'phone': 'AdmissionRequirement',
          'email': 'AdmissionRequirement',

        },
        {
          'img': 'assets/techersinformation/administrative/unknown.png',
          'name': 'Md. AtiqullahPrincipal (Acting),Pubergaon Polytechnic Institute.',
          'designation': 'AdmissionRequirement',
          'phone': 'AdmissionRequirement',
          'email': 'AdmissionRequirement',

        },
        {
          'img': 'assets/techersinformation/administrative/unknown.png',
          'name': 'Dulal Roy',
          'designation': 'AdmissionRequirement',
          'phone': 'AdmissionRequirement',
          'email': 'AdmissionRequirement',

        },
      ]
    },
    {
      "buttonitem": "Mechanical",
      "items": [
        {
          'img': 'assets/techersinformation/administrative/nurul huq.jpeg',
          'name': 'Monir',
          'designation': 'AdmissionRequirement',
          'phone': 'AdmissionRequirement',
          'email': 'AdmissionRequirement',

        },
        {
          'img': 'assets/techersinformation/administrative/saroni.png',
          'name': 'Dr. Sharany HaquePrincipal (Pubergaon Polytechnic Institute)',
          'designation': 'AdmissionRequirement',
          'phone': 'AdmissionRequirement',
          'email': 'AdmissionRequirement',

        },
        {
          'img': 'assets/techersinformation/administrative/unknown.png',
          'name': 'Md. Atiqullah',
          'designation': 'AdmissionRequirement',
          'phone': 'AdmissionRequirement',
          'email': 'AdmissionRequirement',

        },
        {
          'img': 'assets/techersinformation/administrative/unknown.png',
          'name': 'Dulal Roy',
          'designation': 'AdmissionRequirement',
          'phone': 'AdmissionRequirement',
          'email': 'AdmissionRequirement',

        },
      ]
    },
    {
      "buttonitem": "Civil",
      "items": [
        {
          'img': 'assets/techersinformation/administrative/nurul huq.jpeg',
          'name': 'Monir',
          'designation': 'AdmissionRequirement',
          'phone': 'AdmissionRequirement',
          'email': 'AdmissionRequirement',

        },
        {
          'img': 'assets/techersinformation/administrative/saroni.png',
          'name': 'Dr. Sharany Haqu',
          'designation': 'AdmissionRequirement',
          'phone': 'AdmissionRequirement',
          'email': 'AdmissionRequirement',

        },
        {
          'img': 'assets/techersinformation/administrative/unknown.png',
          'name': 'Md. Atiqullah',
          'designation': 'AdmissionRequirement',
          'phone': 'AdmissionRequirement',
          'email': 'AdmissionRequirement',

        },
        {
          'img': 'assets/techersinformation/administrative/unknown.png',
          'name': 'Dulal Roy',
          'designation': 'AdmissionRequirement',
          'phone': 'AdmissionRequirement',
          'email': 'AdmissionRequirement',

        },
      ]
    },
    {
      "buttonitem": "Textile",
      "items": [
        {
          'img': 'assets/techersinformation/administrative/nurul huq.jpeg',
          'name': 'Monir',
          'designation': 'AdmissionRequirement',
          'phone': 'AdmissionRequirement',
          'email': 'AdmissionRequirement',

        },
        {
          'img': 'assets/techersinformation/administrative/saroni.png',
          'name': 'Dr. Sharany Haque',
          'designation': 'AdmissionRequirement',
          'phone': 'AdmissionRequirement',
          'email': 'AdmissionRequirement',

        },
        {
          'img': 'assets/techersinformation/administrative/unknown.png',
          'name': 'Md. Atiqullah\nPrincipal (Acting),\nPubergaon Polytechnic Institute.',
          'designation': 'AdmissionRequirement',
          'phone': 'AdmissionRequirement',
          'email': 'AdmissionRequirement',

        },
        {
          'img': 'assets/techersinformation/administrative/unknown.png',
          'name': 'Dulal Roy',
          'designation': 'AdmissionRequirement',
          'phone': 'AdmissionRequirement',
          'email': 'AdmissionRequirement',

        },
      ]
    },
    {
      'buttonitem': 'Medical',
      "items": [
        {
          'img': 'assets/techersinformation/administrative/nurul huq.jpeg',
          'name': 'Monir',
          'designation': 'AdmissionRequirement',
          'phone': 'AdmissionRequirement',
          'email': 'AdmissionRequirement',

        },
        {
          'img': 'assets/techersinformation/administrative/saroni.png',
          'name': 'Dr. Sharany Haque\nPrincipal (Pubergaon Polytechnic Institute)',
          'designation': 'AdmissionRequirement',
          'phone': 'AdmissionRequirement',
          'email': 'AdmissionRequirement',

        },
        {
          'img': 'assets/techersinformation/administrative/unknown.png',
          'name': 'Md. Atiqullah\nPrincipal (Acting),\nPubergaon Polytechnic Institute.',
          'designation': 'AdmissionRequirement',
          'phone': 'AdmissionRequirement',
          'email': 'AdmissionRequirement',

        },
        {
          'img': 'assets/techersinformation/administrative/unknown.png',
          'name': 'Dulal Roy',
          'designation': 'AdmissionRequirement',
          'phone': 'AdmissionRequirement',
          'email': 'AdmissionRequirement',
        },
      ]
    },

  ];


  //studentoftheaward
  List studentoftheaward = [
    {
      'img': 'assets/techersinformation/administrative/passport size.png',
      'session': '2011-2012 session 1st position in all of Bangladesh.',
      'Name': 'Name:- Mukta Akhtar',
      'Department': 'Department:- Civil',
      'Roll': 'Roll:-512766',
      'CGPA': 'CGPA:-3.97',
    },
    {
      'img': 'assets/techersinformation/administrative/passport size.png',
      'session': '2012-2013 session 1st position in all of Bangladesh.',
      'Name': 'Name:- Suma Akhter',
      'Department': 'Department:- Civil',
      'Roll': 'Roll:- 619510',
      'CGPA': 'CGPA:- 3.99',
    },
    {
      'img': 'assets/techersinformation/administrative/passport size.png',
      'session': '2012-2013 session 1st position in all of Bangladesh.',
      'Name': 'Name:- Prema Akhter',
      'Department': 'Department:- Computer',
      'Roll': 'Roll:- 62998',
      'CGPA': 'CGPA:- 3.97',
    },
    {
      'img': 'assets/techersinformation/administrative/unknown.png',
      'session': '2012-2013 session 2nd position in all of Bangladesh.',
      'Name': 'Name:- Md. Rakib Hasan.',
      'Department': 'Department:- Civil',
      'Roll': 'Roll:- 614612',
      'CGPA': 'CGPA:- 3.98',
    },
    {
      'img': 'assets/techersinformation/administrative/passport size.png',
      'session': '2012-2013 session 2nd position in all of Bangladesh.',
      'Name': 'Name:- Zakia Sultana',
      'Department': 'Department:- Computer',
      'Roll': 'Roll:- 630018',
      'CGPA': 'CGPA:- 3.96',
    },
  ];


  //PPI Alumni Association
  List ppialumnitiems = [
    {
      'img': 'assets/ppialumoneassociation/man.png',
      'Name': 'Ankan Biswas',
      'subtitle': 'Manager in Eco Bank',
      'Company': 'Eco Bank',
      'Phone': '01571258430',
      'email': 'ankan.dev.prog@gmail.com',
      'Department': 'Computer',
      'Roll': '566989',
      'CGPA': '3.98',
    },
    {
      'img': 'assets/ppialumoneassociation/man.png',
      'Name': 'AB',
      'subtitle': 'CEO in Prime Ashi',
      'Company': 'Prime Ashi',
      'Phone': '01716852243',
      'email': 'ankan.dev.prog@gmail.com',
      'Department': 'Computer',
      'Roll': '566989',
      'CGPA': '3.98',
    },
    {
      'img': 'assets/ppialumoneassociation/man.png',
      'Name': 'Ankan Biswas(AB)',
      'subtitle': 'Developer in Daraz',
      'Company': 'Daraz',
      'Phone': '01571258430',
      'email': 'ankan.dev.prog@gmail.com',
      'Department': 'Computer',
      'Roll': '566989',
      'CGPA': '3.98',
    },
  ];


//   //======================Home Screen Gridview========================
//   List<Homegridview> homegridviewlistmodelresponse = [];
//
//   //save response from api
//   void sethomegridviewlistmodel(){
//     homegridviewlistmodelresponse = homegridviewFromJson(HomeGridviewlist);
//     update();
//   }
//
// }
  //======================PPI Alumni Association========================
  List<Ppialumniassociation> ppialumnimodelresponse = [];

  //save response from api
  void setppialumnimodel() {
    ppialumnimodelresponse = ppialumniassociationFromJson(ppialumnitiems);
    update();
  }
}