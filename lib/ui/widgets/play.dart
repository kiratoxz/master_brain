import 'package:flutter/material.dart';
import 'package:master_brain/enums/widget_name.dart';
import 'package:master_brain/ui/widgets/alram_clock.dart';
import 'package:master_brain/ui/widgets/books_container.dart';
import 'package:master_brain/ui/widgets/chair.dart';
import 'package:master_brain/ui/widgets/light.dart';
import 'package:master_brain/ui/widgets/score.dart';
import 'package:master_brain/ui/widgets/stationery.dart';
import 'package:master_brain/ui/widgets/study_desk.dart';
import 'package:master_brain/ui/widgets/study_light.dart';
import 'package:master_brain/utils/game_constants.dart';

class Play extends StatelessWidget {
  const Play({
    Key? key,
    required this.widthOfScreen,
    required this.heightOfScreen,
    required Map<Enum, GlobalKey<State<StatefulWidget>>> stateKeysMap,
  })  : _stateKeysMap = stateKeysMap,
        super(key: key);

  final double widthOfScreen;
  final double heightOfScreen;
  final Map<Enum, GlobalKey<State<StatefulWidget>>> _stateKeysMap;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Positioned.fill(
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: Container(color: GameColors.primary),
              ),
              Expanded(
                flex: 2,
                child: Container(color: GameColors.secondary),
              )
            ],
          ),
        ),
        SizedBox(
          width: widthOfScreen,
          height: heightOfScreen,
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              StudyDesk(width: widthOfScreen),
              Stationery(
                width: widthOfScreen,
              ),
              BooksContainer(
                width: widthOfScreen,
                stateKeysMap: _stateKeysMap,
              ),
              Chair(width: widthOfScreen),
              Light(
                width: widthOfScreen,
                key: _stateKeysMap[WidgetName.light],
              ),
              StudyLight(
                width: widthOfScreen,
                lightStateKey: _stateKeysMap[WidgetName.light],
              ),
              AlarmClock(
                width: widthOfScreen,
                key: _stateKeysMap[WidgetName.alarmClock],
              ),
              Score(
                width: widthOfScreen,
                key: _stateKeysMap[WidgetName.score],
              )
            ],
          ),
        )
      ],
    );
  }
}
