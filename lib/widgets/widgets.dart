
import 'package:flutter/material.dart';


class TitleWidget extends StatelessWidget {
  const TitleWidget({required this.imageAsset, required this.title, super.key});
  final String imageAsset;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 200,
        ),
        Image.asset(
          imageAsset,
          height: 185.76,
          width: 293,
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold
          ),
        )
      ],
    );
  }
}
