import 'package:flutter/material.dart';

class ProvidertItem with ChangeNotifier {
  Object? trending = {"image": "beyza"};

  Object? originals = [
    {
      "image": [
        "assets/originals1.png",
        "assets/originals2.png",
        "assets/originals3.png",
        "assets/originals4.png",
      ]
    },
  ];
  Object? popular = [
    {
      "image": [
        "assets/popular1.png",
        "assets/popular2.png",
        "assets/popular3.png",
        "assets/popular4.png",
      ]
    },
  ];
}
