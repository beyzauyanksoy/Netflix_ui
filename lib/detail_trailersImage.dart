import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DetailTrailersImage extends StatefulWidget {
  const DetailTrailersImage({super.key});

  @override
  State<DetailTrailersImage> createState() => _DetailTrailersImageState();
}

class _DetailTrailersImageState extends State<DetailTrailersImage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 26,left: 26,right: 20),
      child: Container(
        child: Image.asset('assets/trailers_more_image.png')
      ),
    );
  }
}