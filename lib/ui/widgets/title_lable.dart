import 'package:flutter/material.dart';
import 'package:master_brain/gen/assets.gen.dart';
import 'package:master_brain/gen/fonts.gen.dart';

class TitleLable extends StatelessWidget {
  final String title;
  final VoidCallback? onPressed;
  const TitleLable({
    super.key,
    required this.title,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Assets.images.victory.svg(),
          Text(
            title.toUpperCase(),
            style: const TextStyle(
              fontFamily: FontFamily.rubikMonoOne,
              fontWeight: FontWeight.w800,
              fontSize: 20,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
