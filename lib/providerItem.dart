import 'package:flutter/material.dart';

class ProvidertItem with ChangeNotifier {
  int selectedIndex = 0;

  void navigateBottomBar(int index) {
    selectedIndex = index;
    print("index: $index");
  }

  Map trending = {
    "images": [
      "assets/trending1.png",
      "assets/trending2.png",
      "assets/trending3.png",
      "assets/trending4.png",
    ]
  };

  Map originals = {
    "images": [
      "assets/originals1.png",
      "assets/originals2.png",
      "assets/originals3.png",
      "assets/originals4.png",
    ]
  };
  Map popular = {
    "images": [
      "assets/popular1.png",
      "assets/popular2.png",
      "assets/popular3.png",
      "assets/popular4.png",
    ]
  };

  String imageurl = "assets/detail_top_picture.png";
  String cardImage = "assets/transformes.png";
  Map smallButton = {
    "smallimage": [
      "assets/plus.png",
      "assets/like.png",
      "assets/share.png",
    ]
  };
  Map buttontext1 = {
    "plustitle": [
      "My list",
    ],
    "liketitle": [
      "like",
    ],
    "sharetitle": [
      "share",
    ],
  };

  List? buttontext = [
    {
      "plustitle": "My list",
      "liketitle": "like",
      "sharetitle": "share",
    },
  ];
  
  Map shapeImage = {
    "images": [
      "assets/shape1.png",
      "assets/shape2.png",
      "assets/shape3.png",
      "assets/shape4.png",
    ]
  };
}
