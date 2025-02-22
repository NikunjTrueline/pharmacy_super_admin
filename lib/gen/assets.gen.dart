/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/app_logo.png
  AssetGenImage get appLogo =>
      const AssetGenImage('assets/images/splash.png');

  /// File path: assets/images/background.png
  // AssetGenImage get background =>
  //     const AssetGenImage('assets/images/background.png');

  /// File path: assets/images/login_logo.png
  AssetGenImage get login_logo =>
    const AssetGenImage('assets/images/login_logo.png');

  /// File path: assets/images/categories.png
  // AssetGenImage get category =>
  //     const AssetGenImage('assets/images/category.png');
  //
  // // /// File path: assets/images/logo.png
  // // AssetGenImage get logo => const AssetGenImage('assets/images/logo.png');
  //
  // /// File path: assets/images/order.png
  // AssetGenImage get order => const AssetGenImage('assets/images/order2.png');
  //
  // /// File path: assets/images/product.png
  // AssetGenImage get item => const AssetGenImage('assets/images/item2.png');
  //
  /// File path: assets/images/users.png
  AssetGenImage get user => const AssetGenImage('assets/images/users.png');

  /// File path: assets/images/admins.png
  AssetGenImage get admin => const AssetGenImage('assets/images/admins.png');

  /// List of all assets
  List<AssetGenImage> get values =>
      [appLogo,login_logo,user,admin];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
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
