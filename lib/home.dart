import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Stack(children: [
              Image.asset("assets/netflix_title_image.png"),
              Positioned(
                child: Image.asset("assets/netflixt_backgrouncolor.png"),
              ),
              Positioned(
                  top: 35,
                  left: 115,
                  child: Text(
                    "NETFLIX",
                    style: GoogleFonts.redRose(
                        textStyle: const TextStyle(
                            color: Color(0xffFF2929),
                            fontSize: 35,
                            fontWeight: FontWeight.w700)),
                  ))
            ]),
          )
        ],
      ),
    );
  }
}
