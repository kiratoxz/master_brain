import 'package:flutter/material.dart';
import 'package:master_brain/gen/assets.gen.dart';
import 'package:master_brain/ui/widgets/light.dart';
import 'package:master_brain/utils/breakpoints.dart';

class StudyLight extends StatelessWidget {
  const StudyLight({Key? key, required this.width, required this.lightStateKey})
      : super(key: key);
  final double width;
  final GlobalKey<State<StatefulWidget>>? lightStateKey;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: (width >= Preakpoints.md) ? 0.26 * width : 0.35 * width,
      left: (width >= Preakpoints.md) ? 0.126 * width : 0.056 * width,
      child: InkWell(
        onTap: () async {
          (lightStateKey?.currentState as LightState).switchLight();
        },
        child: Assets.images.light.svg(
          width: (width >= Preakpoints.md) ? 0.17 * width : 0.2 * width,
        ),
      ),
    );
  }
}
