import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sanberappflutter/app/config/app_assets.dart';
import 'package:sanberappflutter/app/config/app_color.dart';
import 'package:sanberappflutter/app/config/app_text_style.dart';
import 'package:sanberappflutter/model/news_model.dart';
import 'package:sanberappflutter/widget/custom_box_image.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomBoxImage(
            urlImage: AppAssets.imageNewsbg,
            width: 413,
            height: 413,
            child: Stack(
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        CustomBoxImage(
                          urlImage: AppAssets.iconNavbar,
                          width: 40,
                          height: 40,
                          margin: EdgeInsets.only(left: 40, top: 40),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 40),
            child: Row(
              children: [
                CustomBoxImage(
                    urlImage: AppAssets.profile, width: 40, height: 40),
                SizedBox(width: 16),
                Text(
                  'Samuel Newton',
                  style: GoogleFonts.poppins(color: blackColor, fontSize: 14),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'TECHNOLOGY',
                    style: GoogleFonts.poppins(
                        color: greyColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w900),
                  ),
                  SizedBox(height: 9),
                  Text(
                    'To build responsibly, tech needs to do more than just hire chief ethics officers',
                    style: GoogleFonts.poppins(
                        color: blackColor,
                        fontSize: 22,
                        fontWeight: FontWeight.w900),
                  ),
                  SizedBox(height: 13),
                  Text(
                    '17 June, 2023 — 4:49 PM',
                    style: GoogleFonts.poppins(
                        color: greyColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: 32),
                  CustomBoxImage(
                      urlImage: AppAssets.separator, width: 311, height: 2),
                  SizedBox(height: 32),
                  Text(
                    'In the last couple of years, we’ve seen new teams in tech companies emerge that focus on responsible innovation, digital well-being, AI ethics or humane use. Whatever their titles, these individuals are given the task of “leading” ethics at their companies.',
                    style: GoogleFonts.poppins(
                        color: blackColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
