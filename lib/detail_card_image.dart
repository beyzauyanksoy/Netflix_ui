import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DetailCardImage extends StatefulWidget {
  final String cardImage;
  const DetailCardImage({super.key, required this.cardImage});

  @override
  State<DetailCardImage> createState() => _DetailCardImageState();
}

class _DetailCardImageState extends State<DetailCardImage> {
  @override
  Widget build(BuildContext context) {
    return Image.asset(widget.cardImage);
  }
}
