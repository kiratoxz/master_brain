import 'package:flutter/material.dart';
import 'package:master_brain/gen/fonts.gen.dart';
import 'package:master_brain/ui/widgets/title_lable.dart';
import 'package:master_brain/utils/breakpoints.dart';
import 'package:master_brain/utils/game_constants.dart';

class AppDialog extends StatelessWidget {
  static show(
    BuildContext context, {
    required String title,
    required Widget child,
  }) {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AppDialog(
          title: title,
          child: child,
        );
      },
    );
  }

  const AppDialog({
    Key? key,
    required this.title,
    required this.child,
  }) : super(key: key);
  final String title;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double widthOfDialog = size.width;
    double heightOfDialog = size.height;
    bool isPortrait = heightOfDialog >= widthOfDialog;
    double widthOfGameDialog = (isPortrait) ? heightOfDialog : widthOfDialog;
    return Dialog(
      backgroundColor: Colors.transparent,
      elevation: 0,
      child: RotatedBox(
        quarterTurns: (isPortrait) ? 5 : 0,
        child: SizedBox(
            width: (widthOfGameDialog >= Preakpoints.md)
                ? widthOfGameDialog / 3
                : widthOfGameDialog / 2,
            height: (widthOfGameDialog >= Preakpoints.md)
                ? widthOfGameDialog / 3
                : widthOfGameDialog / 2,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Positioned(
                  top: 30,
                  width: (widthOfGameDialog >= Preakpoints.md)
                      ? widthOfGameDialog / 3.5
                      : widthOfGameDialog / 2.5,
                  height: (widthOfGameDialog >= Preakpoints.md)
                      ? widthOfGameDialog / 3.5
                      : widthOfGameDialog / 2.5,
                  child: Container(
                    decoration: BoxDecoration(
                      color: GameColors.primary,
                      borderRadius: const BorderRadius.all(Radius.circular(5)),
                      border: Border.all(color: GameColors.green, width: 4),
                    ),
                    padding: const EdgeInsets.fromLTRB(16, 40, 16, 64),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(child: child),
                        const SizedBox(height: 12),
                        OutlinedButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          style: OutlinedButton.styleFrom(
                            side: const BorderSide(
                              width: 2,
                              color: GameColors.green,
                            ),
                          ),
                          child: const Text(
                            "Close",
                            style: TextStyle(
                              fontFamily: FontFamily.rubikMonoOne,
                              color: GameColors.redAccent,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: (widthOfGameDialog >= Preakpoints.md)
                      ? widthOfGameDialog * 0.001
                      : widthOfGameDialog * 0.01,
                  width: (widthOfGameDialog >= Preakpoints.md)
                      ? widthOfGameDialog * 0.25
                      : widthOfGameDialog * 0.3,
                  height: (widthOfGameDialog >= Preakpoints.md)
                      ? 0.06 * widthOfGameDialog
                      : 0.08 * widthOfGameDialog,
                  child: TitleLable(title: title),
                ),
              ],
            )),
      ),
    );
  }
}
