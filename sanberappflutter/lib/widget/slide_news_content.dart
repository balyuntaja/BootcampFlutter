import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sanberappflutter/app/config/app_assets.dart';
import 'package:sanberappflutter/app/config/app_color.dart';
import 'package:sanberappflutter/widget/custom_box_image.dart';

class SlideNewsContent extends StatelessWidget {
  const SlideNewsContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
    );
  }
}