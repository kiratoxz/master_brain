import 'package:flutter/material.dart';
import 'package:master_brain/gen/assets.gen.dart';
import 'package:master_brain/utils/breakpoints.dart';

class Chair extends StatelessWidget {
  const Chair({Key? key, required this.width}) : super(key: key);
  final double width;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0.0,
      left: 0.404 * width,
      child: Assets.images.chair.svg(
        width: (width >= Preakpoints.md) ? 0.18 * width : 0.2 * width,
      ),
    );
  }
}
