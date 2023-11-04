import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:master_brain/classes/driver.dart';
import 'package:master_brain/classes/item_selector.dart';
import 'package:master_brain/classes/swap_items_box.dart';
import 'package:master_brain/enums/game_state.dart';
import 'package:master_brain/enums/swap_item_name.dart';
import 'package:master_brain/enums/widget_name.dart';
import 'package:master_brain/controllers/game_state_controller.dart';
import 'package:master_brain/controllers/game_score_controller.dart';
import 'package:master_brain/ui/widgets/alram_clock.dart';
import 'package:master_brain/ui/widgets/book.dart';
import 'package:master_brain/ui/widgets/light.dart';
import 'package:master_brain/ui/widgets/play.dart';
import 'package:master_brain/ui/widgets/score.dart';
import 'package:master_brain/ui/widgets/start.dart';
import 'package:get/get.dart';
import 'package:master_brain/utils/game_assets.dart';
import 'package:master_brain/utils/game_constants.dart';

@RoutePage()
class GameScreen extends StatefulWidget {
  static const route = "/game";
  const GameScreen({Key? key}) : super(key: key);

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  late final Map<Enum, GlobalKey<State<StatefulWidget>>> _stateKeysMap;

  @override
  void initState() {
    super.initState();
    Get.put<GameScoreController>(GameScoreController());
    Get.put<GameStateController>(GameStateController());
    _stateKeysMap = {
      SwapItemName.firstSwapItem: GlobalKey<BookState>(),
      SwapItemName.secondSwapItem: GlobalKey<BookState>(),
      SwapItemName.thirdSwapItem: GlobalKey<BookState>(),
      WidgetName.score: GlobalKey<ScoreState>(),
      WidgetName.light: GlobalKey<LightState>(),
      WidgetName.alarmClock: GlobalKey<AlarmClockState>(),
    };
    Driver().setStateKeysMap = _stateKeysMap;
    SwapItemsBox().setSelectedSwapItem = ItemSelector.select();
  }

  @override
  void dispose() {
    GameAssets.backgroundPlayer.stop();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double widthOfScreen = size.width;
    double heightOfScreen = size.height;
    bool isPortrait = heightOfScreen >= widthOfScreen;
    double widthOfGame = (isPortrait) ? heightOfScreen : widthOfScreen;
    double heightOfGame = (isPortrait) ? widthOfScreen : heightOfScreen;
    return RotatedBox(
      quarterTurns: (isPortrait) ? 1 : 0,
      child: Scaffold(
        backgroundColor: GameColors.primary,
        body: GetBuilder<GameStateController>(builder: (gameStateController) {
          return SizedBox(
              width: widthOfGame,
              height: heightOfGame,
              child: AnimatedSwitcher(
                duration: const Duration(seconds: 1),
                switchInCurve: Curves.easeInOut,
                transitionBuilder: (child, animation) {
                  return ScaleTransition(scale: animation, child: child);
                },
                child: (gameStateController.state == GameState.start)
                    ? const Start()
                    : Play(
                        widthOfScreen: widthOfGame,
                        heightOfScreen: heightOfGame,
                        stateKeysMap: _stateKeysMap),
              ));
        }),
      ),
    );
  }
}
