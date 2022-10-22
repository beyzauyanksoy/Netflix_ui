import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_ui/providerItem.dart';
import 'package:provider/provider.dart';

import 'detail_card_image.dart';

import 'detail_description.dart';
import 'detail_play_button.dart';
import 'topImage.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (BuildContext context, ProvidertItem item, Widget? child) {
        return Scaffold(
          backgroundColor: Color(0xff1B1919),
          body: Column(
            children: [
              Stack(
                children: [
                  TopImage(
                    topImageUrl: item.imageurl,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 175, left: 20),
                    child: DetailCardImage(
                      cardImage: item.cardImage,
                    ),
                  ),
                  Positioned(
                    bottom: 40,
                    left: 190,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(item.smallButton["smallimage"][0]),
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Text(
                                item.buttontext1["plustitle"][0],
                                style: GoogleFonts.roboto(
                                  textStyle: const TextStyle(
                                      fontSize: 10.29,
                                      color: Color(0xffFFFFFF),
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 35,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(item.smallButton["smallimage"][1]),
                            Padding(
                              padding: const EdgeInsets.only(top: 4),
                              child: Text(
                                item.buttontext1["liketitle"][0],
                                style: GoogleFonts.roboto(
                                  textStyle: const TextStyle(
                                      fontSize: 10.29,
                                      color: Color(0xffFFFFFF),
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 35,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(item.smallButton["smallimage"][2]),
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Text(
                                item.buttontext1["sharetitle"][0],
                                style: GoogleFonts.roboto(
                                  textStyle: const TextStyle(
                                      fontSize: 10.29,
                                      color: Color(0xffFFFFFF),
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const DetailPlayButton(),
              DetailDescription()
            ],
          ),
        );
      },
    );
  }
}
