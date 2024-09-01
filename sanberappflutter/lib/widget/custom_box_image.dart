import 'package:flutter/material.dart';

class CustomBoxImage extends StatelessWidget {
  CustomBoxImage(
      {super.key, this.width, this.height, required this.urlImage, this.margin, this.child, this.padding});

  final double? width;
  final double? height;
  final String urlImage;
  final EdgeInsets? margin;
  final EdgeInsets? padding;
  Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      margin: margin,
      width: width ?? 50,
      height: height ?? 50,
      decoration:
          BoxDecoration(image: DecorationImage(image: AssetImage(urlImage))),
          child: child,
    );
  }
}
