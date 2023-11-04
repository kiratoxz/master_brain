import 'package:flutter/services.dart';
import 'package:master_brain/gen/assets.gen.dart';
import 'package:soundpool/soundpool.dart';
import 'package:just_audio/just_audio.dart';

class GameAssets {
  static late final int turnOnSoundId;
  static late final int turnOffSoundId;
  static late final int clockTickingId;
  static late final int gameOverSoundId;
  static late final int victorySoundId;
  static late final int earnCoinsSoundId;

  static late final Soundpool pool;
  static late final AudioPlayer backgroundPlayer;

  static Future<void> preloadAssets() async {
    await _preloadAudioAssets();
  }

  static Future<void> _preloadAudioAssets() async {
    backgroundPlayer = AudioPlayer();
    pool = Soundpool.fromOptions(
        options: const SoundpoolOptions(
      streamType: StreamType.alarm,
    ));
    await backgroundPlayer.setAsset(Assets.sounds.backgroundMusic);
    await backgroundPlayer.setLoopMode(LoopMode.one);
    turnOnSoundId = await rootBundle
        .load(Assets.sounds.lightTurnOn)
        .then((ByteData soundData) {
      return pool.load(soundData);
    });
    turnOffSoundId = await rootBundle
        .load(Assets.sounds.lightTurnOff)
        .then((ByteData soundData) {
      return pool.load(soundData);
    });
    clockTickingId = await rootBundle
        .load(Assets.sounds.clockTicking)
        .then((ByteData soundData) {
      return pool.load(soundData);
    });
    gameOverSoundId = await rootBundle
        .load(Assets.sounds.gameOver)
        .then((ByteData soundData) {
      return pool.load(soundData);
    });
    victorySoundId =
        await rootBundle.load(Assets.sounds.victory).then((ByteData soundData) {
      return pool.load(soundData);
    });
    earnCoinsSoundId = await rootBundle
        .load(Assets.sounds.earnCoins)
        .then((ByteData soundData) {
      return pool.load(soundData);
    });
  }
}
