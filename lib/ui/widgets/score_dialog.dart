import 'package:flutter/material.dart';
import 'package:master_brain/classes/driver.dart';
import 'package:master_brain/controllers/game_score_controller.dart';
import 'package:master_brain/gen/assets.gen.dart';
import 'package:master_brain/gen/fonts.gen.dart';
import 'package:master_brain/ui/widgets/circled_button.dart';
import 'package:master_brain/ui/widgets/stars.dart';
import 'package:master_brain/ui/widgets/title_lable.dart';
import 'package:master_brain/utils/breakpoints.dart';
import 'package:master_brain/utils/game_constants.dart';

class ScoreDialog extends StatelessWidget {
  const ScoreDialog({Key? key, required this.isVictory}) : super(key: key);
  final bool isVictory;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double widthOfDialog = size.width;
    double heightOfDialog = size.height;
    bool isPortrait = heightOfDialog >= widthOfDialog;
    double widthOfGameDialog = (isPortrait) ? heightOfDialog : widthOfDialog;
    // double heightOfGameDialog = (isPortrait) ? widthOfDialog : heightOfDialog;
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
                        borderRadius:
                            const BorderRadius.all(Radius.circular(5)),
                        border: Border.all(color: GameColors.green, width: 4)),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          if (Driver().getNumberOfStars > 0)
                            const Expanded(flex: 2, child: SizedBox()),
                          const Stars(),
                          const Expanded(flex: 1, child: SizedBox()),
                          Expanded(
                              flex: 1,
                              child: FittedBox(
                                child: Text(Driver().getRank,
                                    style: const TextStyle(
                                      fontFamily: 'Sansita',
                                      color: GameColors.redAccent,
                                    )),
                              )),
                          Expanded(
                            flex: 2,
                            child: Center(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  const Expanded(flex: 1, child: SizedBox()),
                                  const Expanded(
                                    flex: 3,
                                    child: FittedBox(
                                      child: Text('Score',
                                          style: TextStyle(
                                            fontFamily: FontFamily.rubikMonoOne,
                                            color: GameColors.grey,
                                          )),
                                    ),
                                  ),
                                  const Expanded(flex: 3, child: SizedBox()),
                                  Expanded(
                                    flex: 4,
                                    child: Row(
                                      children: [
                                        Expanded(
                                          flex: 6,
                                          child: FittedBox(
                                            child: Text(
                                              '${GameScoreController.to.score}/30',
                                              style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontFamily:
                                                    FontFamily.rubikMonoOne,
                                                color: GameColors.grey,
                                              ),
                                            ),
                                          ),
                                        ),
                                        const Expanded(
                                            flex: 1, child: SizedBox()),
                                        Expanded(
                                          flex: 2,
                                          child: Assets.images.coin.svg(),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Expanded(flex: 1, child: SizedBox()),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                              height: 64,
                              child: FittedBox(
                                child: CircledButton(
                                    iconData: Icons.refresh,
                                    width: widthOfGameDialog,
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                      Driver().restart();
                                    },
                                    backgroundColor: GameColors.redAccent,
                                    hoverColor: GameColors.secondary,
                                    elevation: 2,
                                    splashColor: GameColors.green),
                              )),
                          const Expanded(flex: 1, child: SizedBox())
                        ]),
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
                  child: isVictory
                      ? const TitleLable(title: "Victory")
                      : const TitleLable(title: "Game over"),
                ),
              ],
            )),
      ),
    );
  }
}
