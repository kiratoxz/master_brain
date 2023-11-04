import 'package:flutter/material.dart';
import 'package:master_brain/gen/assets.gen.dart';
import 'package:master_brain/utils/breakpoints.dart';

class StudyDesk extends StatelessWidget {
  const StudyDesk({Key? key, required this.width}) : super(key: key);
  final double width;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0.0,
      child: Assets.images.table.svg(
        clipBehavior: Clip.none,
        width:
            (width >= Preakpoints.md) ? width - width / 4 : width - width * 0.1,
      ),
    );
  }
}
