import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TopImage extends StatefulWidget {
  final String topImageUrl;
  const TopImage({super.key, required this.topImageUrl});

  @override
  State<TopImage> createState() => _TopImageState();
}

class _TopImageState extends State<TopImage> {
  @override
  Widget build(BuildContext context) {
    return Image.asset(widget.topImageUrl);
  }
}
