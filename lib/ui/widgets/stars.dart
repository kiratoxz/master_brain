import 'package:flutter/material.dart';
import 'package:master_brain/classes/driver.dart';
import 'package:master_brain/gen/assets.gen.dart';

class Stars extends StatefulWidget {
  const Stars({Key? key}) : super(key: key);
  @override
  StarsState createState() => StarsState();
}

class StarsState extends State<Stars> {
  final starsList = List.generate(Driver().getNumberOfStars * 2 + 1, (index) {
    if (index % 2 != 0) {
      return Expanded(
        flex: 2,
        child: Assets.images.star.svg(),
      );
    } else {
      return const Expanded(flex: 1, child: SizedBox());
    }
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: Driver().getNumberOfStars > 0 ? 2 : 0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: starsList,
      ),
    );
  }
}
