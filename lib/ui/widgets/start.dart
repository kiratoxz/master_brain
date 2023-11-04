import 'package:flutter/material.dart';
import 'package:master_brain/enums/game_state.dart';
import 'package:master_brain/controllers/game_state_controller.dart';
import 'package:master_brain/gen/fonts.gen.dart';
import 'package:master_brain/ui/widgets/app_dialog.dart';
import 'package:master_brain/ui/widgets/title_lable.dart';
import 'package:master_brain/utils/game_assets.dart';
import 'package:master_brain/utils/game_constants.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Start extends StatelessWidget {
  const Start({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 280,
          height: 64,
          child: TitleLable(
            title: "Play",
            onPressed: () async {
              GameStateController.to.updateState(GameState.play);
              await GameAssets.backgroundPlayer.play();
            },
          ),
        ),
        SizedBox(
          width: 280,
          height: 64,
          child: TitleLable(
            title: "Help",
            onPressed: () {
              AppDialog.show(
                context,
                title: "Help",
                child: const Center(
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      "Using your intelligence to find the letter",
                      style: TextStyle(
                        fontFamily: FontFamily.sansita,
                        fontSize: 22,
                        color: GameColors.brown,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        SizedBox(
          width: 280,
          height: 64,
          child: TitleLable(
            title: "About",
            onPressed: () {
              AppDialog.show(
                context,
                title: "Help",
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Smart puzzle game written by Xiaobabe",
                          style: TextStyle(
                            fontFamily: FontFamily.sansita,
                            fontSize: 20,
                            color: GameColors.brown,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        InkWell(
                          onTap: () {
                            launchUrlString("https://t.me/@xiaobabe_0");
                          },
                          child: const Text(
                            "💬 Telegram: @xiaobabe_0",
                            style: TextStyle(
                              fontFamily: FontFamily.sansita,
                              fontSize: 20,
                              color: GameColors.brown,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
