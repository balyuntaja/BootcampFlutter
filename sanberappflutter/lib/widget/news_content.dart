import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sanberappflutter/app/config/app_color.dart';
import 'package:sanberappflutter/app/config/app_text_style.dart';
import 'package:sanberappflutter/model/news_model.dart';
import 'package:sanberappflutter/widget/custom_box_image.dart';

class NewsContent extends StatelessWidget {
  const NewsContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Latest News',
                    style: GoogleFonts.poppins(color: greyColor, fontSize: 14),
                  ),
                  Icon(Icons.arrow_circle_right_outlined, color: greyColor)
                ],
              ),
            ),
        ListView.builder(
          padding: const EdgeInsets.only(left: 30, right: 30),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: news.length,
          itemBuilder: (context, index) => Column(
            children: [
              SizedBox(height: 23),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomBoxImage(
                      urlImage: news[index].url, width: 100, height: 100),
                  SizedBox(width: 24),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          news[index].title,
                          style: poppinsTitle,
                        ),
                        Text(
                          news[index].subtitle,
                          style: poppinsSubtitle,
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ],
      
    );
  }
}