/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/alarm.svg
  SvgGenImage get alarm => const SvgGenImage('assets/images/alarm.svg');

  /// File path: assets/images/book.svg
  SvgGenImage get book => const SvgGenImage('assets/images/book.svg');

  /// File path: assets/images/chair.svg
  SvgGenImage get chair => const SvgGenImage('assets/images/chair.svg');

  /// File path: assets/images/coin.svg
  SvgGenImage get coin => const SvgGenImage('assets/images/coin.svg');

  /// File path: assets/images/eraser.svg
  SvgGenImage get eraser => const SvgGenImage('assets/images/eraser.svg');

  /// File path: assets/images/front_face_book.svg
  SvgGenImage get frontFaceBook =>
      const SvgGenImage('assets/images/front_face_book.svg');

  /// File path: assets/images/game_over.svg
  SvgGenImage get gameOver => const SvgGenImage('assets/images/game_over.svg');

  /// File path: assets/images/light.svg
  SvgGenImage get light => const SvgGenImage('assets/images/light.svg');

  /// File path: assets/images/message.svg
  SvgGenImage get message => const SvgGenImage('assets/images/message.svg');

  /// File path: assets/images/pencil.svg
  SvgGenImage get pencil => const SvgGenImage('assets/images/pencil.svg');

  /// File path: assets/images/ruler.svg
  SvgGenImage get ruler => const SvgGenImage('assets/images/ruler.svg');

  /// File path: assets/images/splash_icon.png
  AssetGenImage get splashIcon =>
      const AssetGenImage('assets/images/splash_icon.png');

  /// File path: assets/images/star.svg
  SvgGenImage get star => const SvgGenImage('assets/images/star.svg');

  /// File path: assets/images/table.svg
  SvgGenImage get table => const SvgGenImage('assets/images/table.svg');

  /// File path: assets/images/victory.svg
  SvgGenImage get victory => const SvgGenImage('assets/images/victory.svg');

  /// List of all assets
  List<dynamic> get values => [
        alarm,
        book,
        chair,
        coin,
        eraser,
        frontFaceBook,
        gameOver,
        light,
        message,
        pencil,
        ruler,
        splashIcon,
        star,
        table,
        victory
      ];
}

class $AssetsSoundsGen {
  const $AssetsSoundsGen();

  /// File path: assets/sounds/background_music.mp3
  String get backgroundMusic => 'assets/sounds/background_music.mp3';

  /// File path: assets/sounds/clock_ticking.mp3
  String get clockTicking => 'assets/sounds/clock_ticking.mp3';

  /// File path: assets/sounds/earn_coins.mp3
  String get earnCoins => 'assets/sounds/earn_coins.mp3';

  /// File path: assets/sounds/game_over.mp3
  String get gameOver => 'assets/sounds/game_over.mp3';

  /// File path: assets/sounds/light_turn_off.mp3
  String get lightTurnOff => 'assets/sounds/light_turn_off.mp3';

  /// File path: assets/sounds/light_turn_on.mp3
  String get lightTurnOn => 'assets/sounds/light_turn_on.mp3';

  /// File path: assets/sounds/victory.mp3
  String get victory => 'assets/sounds/victory.mp3';

  /// List of all assets
  List<String> get values => [
        backgroundMusic,
        clockTicking,
        earnCoins,
        gameOver,
        lightTurnOff,
        lightTurnOn,
        victory
      ];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsSoundsGen sounds = $AssetsSoundsGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
