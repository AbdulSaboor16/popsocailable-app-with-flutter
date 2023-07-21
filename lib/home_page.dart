import 'dart:ui';

import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_widget_cache.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:socialapp/components/storybtn.dart';
import 'package:socialapp/data/story_data.dart';
import 'package:socialapp/utils/color_constant.dart';
import 'package:socialapp/utils/textfont_constant.dart';

class StoryApp extends StatefulWidget {
  const StoryApp({super.key});

  @override
  State<StoryApp> createState() => _StoryAppState();
}

class _StoryAppState extends State<StoryApp> {
  List<StoryData> stories = [
    new StoryData(
      "Abdul Saboor",
      "https://elisedarma.com/wp-content/uploads/2021/12/edb-s2-16.jpg",
      "https://img.freepik.com/free-photo/fresh-mango_1339-1469.jpg?w=900&t=st=1689088427~exp=1689089027~hmac=f868f2f1ccc1b5b34549cdef9ddc70f9dc5c11ac018dfe9c6438b8ba07d3e40c",
      "assets/images/stor.png",
    ),
    new StoryData(
      "Abdul Samad",
      "https://elisedarma.com/wp-content/uploads/2021/12/edb-s2-16.jpg",
      "https://img.freepik.com/free-photo/fresh-mango_1339-1469.jpg?w=900&t=st=1689088427~exp=1689089027~hmac=f868f2f1ccc1b5b34549cdef9ddc70f9dc5c11ac018dfe9c6438b8ba07d3e40c",
      "assets/images/bar.jpg",
    ),
    new StoryData(
        "Abdul Saqib",
        "https://elisedarma.com/wp-content/uploads/2021/12/edb-s2-16.jpg",
        "https://img.freepik.com/free-photo/fresh-mango_1339-1469.jpg?w=900&t=st=1689088427~exp=1689089027~hmac=f868f2f1ccc1b5b34549cdef9ddc70f9dc5c11ac018dfe9c6438b8ba07d3e40c",
        "assets/images/cof.jpg"),
    new StoryData(
      "Abdul Saqib",
      "https://elisedarma.com/wp-content/uploads/2021/12/edb-s2-16.jpg",
      "https://img.freepik.com/free-photo/fresh-mango_1339-1469.jpg?w=900&t=st=1689088427~exp=1689089027~hmac=f868f2f1ccc1b5b34549cdef9ddc70f9dc5c11ac018dfe9c6438b8ba07d3e40c",
      "assets/images/stor.png",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ColorfulSafeArea(
        color: ColorConstant.blueColor,
        child: Scaffold(
            backgroundColor: ColorConstant.blueColor,
            body: Column(children: [
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    height: 50,
                    width: Get.width * .9,
                    margin: EdgeInsets.only(left: 21, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          height: 50,
                          width: Get.width * .6,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text('Good Morning, Kate.',
                                style: GoogleFonts.poppins(
                                  textStyle: TextFontConstant.goodbutton,
                                )),
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(50),
                              gradient: const LinearGradient(
                                colors: [
                                  ColorConstant.lightyellColor,
                                  ColorConstant.darkyellColor,
                                ],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              )),
                          child: IconButton(
                              splashColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              onPressed: () {},
                              icon: const Icon(
                                Icons.add,
                                color: ColorConstant.whiteColor,
                                size: 23,
                              )),
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          // child: Image.asset('assets/images/sec.png'),
                          // ignore: sort_child_properties_last
                          child: IconButton(
                              splashColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              onPressed: () {},
                              icon: const Icon(
                                Icons.notifications_outlined,
                                color: ColorConstant.whiteColor,
                                size: 23,
                              )),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                              color: ColorConstant.whiteColor,
                              width: 1,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Container(
                height: 200,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    storyButton(stories[0], context),
                    storyButton(stories[1], context),
                    storyButton(stories[2], context),
                    storyButton(stories[3], context),
                    storyButton(stories[0], context),
                    storyButton(stories[1], context),
                    storyButton(stories[2], context),
                    storyButton(stories[3], context),
                  ],
                ),
              ),
              Expanded(
                  child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (BuildContext context, index) {
                        return Column(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                ClipRect(
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(
                                        sigmaX: 10.0, sigmaY: 10.0),
                                    child: Container(
                                      height: 65,
                                      width: Get.width,
                                      // color: Colors.amber,
                                      decoration: BoxDecoration(
                                          color: Colors.grey.withOpacity(0.2),
                                          borderRadius: const BorderRadius.only(
                                              topLeft: Radius.circular(10),
                                              topRight: Radius.circular(10))),
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 50,
                                            width: 50,
                                            margin:
                                                const EdgeInsets.only(left: 10),
                                            child: const CircleAvatar(
                                              backgroundImage: AssetImage(
                                                  'assets/images/Photo.png'),
                                            ),
                                          ),
                                          Container(
                                            height: 50,
                                            width: 200,
                                            margin:
                                                const EdgeInsets.only(left: 10),
                                            child: Column(
                                              children: [
                                                Align(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 10,
                                                                top: 8),
                                                        child: Text(
                                                            "Jessica Smith",
                                                            style: GoogleFonts
                                                                .poppins(
                                                              textStyle:
                                                                  TextFontConstant
                                                                      .timelinetext,
                                                            )))),
                                                Align(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Padding(
                                                      padding: EdgeInsets.only(
                                                        left: 10,
                                                      ),
                                                      child: Text("Los Angeles",
                                                          style: GoogleFonts
                                                              .poppins(
                                                            textStyle:
                                                                TextFontConstant
                                                                    .timelinetext,
                                                          )),
                                                    )),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            height: 50,
                                            width: 50,
                                            margin: const EdgeInsets.only(
                                              left: 70,
                                            ),
                                            child: IconButton(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.edit,
                                                  color:
                                                      ColorConstant.whiteColor,
                                                )),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 300,
                                  width: Get.width,
                                  // color: Colors.pink,
                                  decoration: const BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10)),
                                    image: DecorationImage(
                                      image: AssetImage(
                                        "assets/images/Image.png",
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ]);
                      }))
            ])));
  }
}
