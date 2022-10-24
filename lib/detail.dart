import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_ui/providerItem.dart';
import 'package:provider/provider.dart';

import 'detail_card_image.dart';

import 'detail_description.dart';
import 'detail_play_button.dart';
import 'detail_trailersImage.dart';
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
          body: SingleChildScrollView(
            child: Column(
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
                      bottom: 20,
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
                const DetailDescription(),
                Padding(
                  padding: const EdgeInsets.only(left: 24, top: 30),
                  child: Container(
                    //color: Colors.amber,
                    width: MediaQuery.of(context).size.width,
                    height: 60,
                    child: ListView.builder(
                      itemCount: item.shapeImage["images"].length,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 12),
                          child: Image.asset(item.shapeImage["images"][index]),
                        );
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 22, left: 26),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      'Trailers & more',
                      style: GoogleFonts.roboto(
                        textStyle: const TextStyle(
                            fontSize: 17.6,
                            color: Color(0xffFFFFFF),
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ),
                Stack(
                  children: [
                    const Divider(
                      color: Color(0xff4E4B4B),
                      thickness: 1.5,
                    ),
                    Positioned(
                      top: 5,
                      left: 35,
                      child: Container(
                        width: 95,
                        height: 5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffe32727),
                        ),
                      ),
                    ),
                  ],
                ),

                 DetailTrailersImage()
              ],

            ),
          ),
        );
      },
    );
  }
}
