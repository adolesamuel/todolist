/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart' as _svg;
import 'package:vector_graphics/vector_graphics.dart' as _vg;

class $FontGen {
  const $FontGen();

  /// Directory path: font/sf-pro-display
  $FontSfProDisplayGen get sfProDisplay => const $FontSfProDisplayGen();
}

class $FontSfProDisplayGen {
  const $FontSfProDisplayGen();

  /// File path: font/sf-pro-display/BLACKITALIC.otf
  String get blackitalic => 'font/sf-pro-display/BLACKITALIC.otf';

  /// File path: font/sf-pro-display/SFPRODISPLAYBOLD.otf
  String get sfprodisplaybold => 'font/sf-pro-display/SFPRODISPLAYBOLD.otf';

  /// File path: font/sf-pro-display/SFPRODISPLAYHEAVYITALIC.otf
  String get sfprodisplayheavyitalic =>
      'font/sf-pro-display/SFPRODISPLAYHEAVYITALIC.otf';

  /// File path: font/sf-pro-display/SFPRODISPLAYLIGHTITALIC.otf
  String get sfprodisplaylightitalic =>
      'font/sf-pro-display/SFPRODISPLAYLIGHTITALIC.otf';

  /// File path: font/sf-pro-display/SFPRODISPLAYMEDIUM.otf
  String get sfprodisplaymedium => 'font/sf-pro-display/SFPRODISPLAYMEDIUM.otf';

  /// File path: font/sf-pro-display/SFPRODISPLAYREGULAR.otf
  String get sfprodisplayregular =>
      'font/sf-pro-display/SFPRODISPLAYREGULAR.otf';

  /// File path: font/sf-pro-display/SFPRODISPLAYSEMIBOLDITALIC.otf
  String get sfprodisplaysemibolditalic =>
      'font/sf-pro-display/SFPRODISPLAYSEMIBOLDITALIC.otf';

  /// File path: font/sf-pro-display/SFPRODISPLAYTHINITALIC.otf
  String get sfprodisplaythinitalic =>
      'font/sf-pro-display/SFPRODISPLAYTHINITALIC.otf';

  /// File path: font/sf-pro-display/SFPRODISPLAYULTRALIGHTITALIC.otf
  String get sfprodisplayultralightitalic =>
      'font/sf-pro-display/SFPRODISPLAYULTRALIGHTITALIC.otf';

  /// List of all assets
  List<String> get values => [
        blackitalic,
        sfprodisplaybold,
        sfprodisplayheavyitalic,
        sfprodisplaylightitalic,
        sfprodisplaymedium,
        sfprodisplayregular,
        sfprodisplaysemibolditalic,
        sfprodisplaythinitalic,
        sfprodisplayultralightitalic
      ];
}

class Assets {
  Assets._();

  static const SvgGenImage alarm = SvgGenImage('assets/Alarm.svg');
  static const SvgGenImage category = SvgGenImage('assets/Category.svg');
  static const SvgGenImage chat = SvgGenImage('assets/Chat.svg');
  static const SvgGenImage home = SvgGenImage('assets/Home.svg');
  static const SvgGenImage paperPlus = SvgGenImage('assets/Paper Plus.svg');
  static const SvgGenImage calendar = SvgGenImage('assets/calendar.svg');
  static const SvgGenImage clock = SvgGenImage('assets/clock.svg');
  static const SvgGenImage directInboxOutline =
      SvgGenImage('assets/direct-inbox-outline.svg');
  static const SvgGenImage directInbox = SvgGenImage('assets/direct-inbox.svg');
  static const SvgGenImage dot = SvgGenImage('assets/dot.svg');
  static const SvgGenImage flag = SvgGenImage('assets/flag.svg');
  static const SvgGenImage flagOutline = SvgGenImage('assets/flag_outline.svg');
  static const SvgGenImage searchNormal =
      SvgGenImage('assets/search-normal.svg');
  static const SvgGenImage send = SvgGenImage('assets/send.svg');
  static const SvgGenImage setting = SvgGenImage('assets/setting.svg');
  static const $FontGen font = $FontGen();

  /// List of all assets
  static List<SvgGenImage> get values => [
        alarm,
        category,
        chat,
        home,
        paperPlus,
        calendar,
        clock,
        directInboxOutline,
        directInbox,
        dot,
        flag,
        flagOutline,
        searchNormal,
        send,
        setting
      ];
}

class SvgGenImage {
  const SvgGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = false;

  const SvgGenImage.vec(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  _svg.SvgPicture svg({
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
    _svg.SvgTheme? theme,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final _svg.BytesLoader loader;
    if (_isVecFormat) {
      loader = _vg.AssetBytesLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
      );
    } else {
      loader = _svg.SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
      );
    }
    return _svg.SvgPicture(
      loader,
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      colorFilter: colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
