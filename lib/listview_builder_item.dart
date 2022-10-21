import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ListviewBuilderItem extends StatefulWidget {
  final String url;
  const ListviewBuilderItem({super.key, required this.url});

  @override
  State<ListviewBuilderItem> createState() => _ListviewBuilderItemState();
}

class _ListviewBuilderItemState extends State<ListviewBuilderItem> {
  @override
  Widget build(BuildContext context) {
    return Image.asset(widget.url);
  }
}
