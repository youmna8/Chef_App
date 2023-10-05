import 'package:flutter/material.dart';

class CustomImagge extends StatelessWidget {
  const CustomImagge(
      {super.key, required this.imgPath, this.heigh, this.width, this.fit=BoxFit.fill});
  final String imgPath;
  final double? heigh;
  final double? width;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imgPath,
      width: width,
      fit: fit,
      height: heigh,
    );
  }
}
