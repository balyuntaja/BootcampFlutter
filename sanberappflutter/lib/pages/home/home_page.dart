// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sanberappflutter/app/config/app_assets.dart';
import 'package:sanberappflutter/app/config/app_color.dart';
import 'package:sanberappflutter/widget/custom_box_image.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomBoxImage(
                  urlImage: AppAssets.iconMenu, width: 40, height: 40),
              Text(
                'NewsApp',
                style: GoogleFonts.poppins(
                    fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(),
            ],
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 315,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) => CustomBoxImage(
                  margin: EdgeInsets.only(top: 32, left: index == 0 ? 30 : 0),
                  padding: EdgeInsets.all(24),
                  urlImage: AppAssets.image1,
                  width: 310,
                  height: 310,
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'TECHNOLOGY',
                                style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    color: whiteColor,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '5 min ago',
                                style: GoogleFonts.poppins(
                                    fontSize: 12, color: whiteColor),
                              )
                            ],
                          ),
                          Spacer(),
                          Text(
                            'Microsoft launches a deepfake detector tool ahead of US election',
                            style: GoogleFonts.poppins(
                                fontSize: 18,
                                color: whiteColor,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 24),
                          Row(
                            children: [
                              CustomBoxImage(
                                  urlImage: AppAssets.iconChat,
                                  width: 20,
                                  height: 20),
                              CustomBoxImage(
                                  margin: EdgeInsets.only(left: 24),
                                  urlImage: AppAssets.iconBookmark,
                                  width: 20,
                                  height: 20),
                              Spacer(),
                              CustomBoxImage(
                                  urlImage: AppAssets.iconRedo,
                                  width: 20,
                                  height: 20),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 40),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Latest News'),
                      Icon(Icons.arrow_circle_right_outlined,
                          color: Colors.grey),
                    ],
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
