import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sanberappflutter/app/config/app_assets.dart';
import 'package:sanberappflutter/widget/custom_box_image.dart';
import 'package:sanberappflutter/widget/news_content.dart';
import 'package:sanberappflutter/widget/slide_news_content.dart';

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
        body: ListView(
          children: [SlideNewsContent(), NewsContent()],
        ));
  }
}
