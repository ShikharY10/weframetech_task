import 'package:flutter/material.dart';

class ExtraInfo extends StatelessWidget {
  final String asset;
  final String text;
  final Color? textColor;
  const ExtraInfo({super.key, required this.asset, required this.text, this.textColor = Colors.grey});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image(
          image: AssetImage(asset)
        ),
        const SizedBox(width: 7),
        Text(text,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: textColor
          )
        )
      ],
    );
  }
}