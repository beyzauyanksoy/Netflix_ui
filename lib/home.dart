import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_ui/providerItem.dart';
import 'package:provider/provider.dart';

import 'home_bottomNavigation.dart';
import 'listview_builder_item.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (BuildContext context, ProvidertItem item, Widget? child) {
        return Scaffold(
          backgroundColor: Color(0xff1B1919),
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
                    ),
                  ),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18, left: 20),
                child: Column(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Text(
                        'Trending',
                        style: GoogleFonts.redRose(
                          textStyle: const TextStyle(
                              color: Color(0xffFFFFFF),
                              fontSize: 20.72,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                    Container(
                      
                      //color: Colors.amber,
                      width: MediaQuery.of(context).size.width,
                      height: 140,
                      child: ListView.builder(
                        itemCount: item.trending["images"].length,
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,  
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(top: 2,right: 16),
                            child: ListviewBuilderItem(
                              url: item.trending["images"][index],
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 45, left: 20),
                child: Column(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Text(
                        'Netflix Originals',
                        style: GoogleFonts.redRose(
                          textStyle: const TextStyle(
                              color: Color(0xffFFFFFF),
                              fontSize: 20.72,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                    Container(
                  
                      width: MediaQuery.of(context).size.width,
                      height: 140,
                      child: ListView.builder(
                        itemCount: item.originals["images"].length,
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,  
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(top:6,),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 2,right: 16),
                              child: ListviewBuilderItem(
                                url: item.originals["images"][index],
                              ),
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
                 Padding(
                padding: const EdgeInsets.only(top: 45, left: 20),
                child: Column(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Text(
                        'Popular on Netflix',
                        style: GoogleFonts.redRose(
                          textStyle: const TextStyle(
                              color: Color(0xffFFFFFF),
                              fontSize: 20.72,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                    Container(
                  
                      width: MediaQuery.of(context).size.width,
                      height: 140,
                      child: ListView.builder(
                        itemCount: item.popular["images"].length,
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,  
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(top:6,),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 2,right: 16),
                              child: ListviewBuilderItem(
                                url: item.popular["images"][index],
                              ),
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        
           bottomNavigationBar: HomeBottomNavigation(),
        );
      },
    );
  }
}
