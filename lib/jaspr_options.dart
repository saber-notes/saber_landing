// dart format off
// ignore_for_file: type=lint

// GENERATED FILE, DO NOT MODIFY
// Generated with jaspr_builder

import 'package:jaspr/jaspr.dart';
import 'package:saber_landing/components/badge.dart' as prefix0;
import 'package:saber_landing/components/badges.dart' as prefix1;
import 'package:saber_landing/components/features.dart' as prefix2;
import 'package:saber_landing/pages/about.dart' as prefix3;
import 'package:saber_landing/pages/home.dart' as prefix4;

/// Default [JasprOptions] for use with your jaspr project.
///
/// Use this to initialize jaspr **before** calling [runApp].
///
/// Example:
/// ```dart
/// import 'jaspr_options.dart';
///
/// void main() {
///   Jaspr.initializeApp(
///     options: defaultJasprOptions,
///   );
///
///   runApp(...);
/// }
/// ```
JasprOptions get defaultJasprOptions => JasprOptions(
  clients: {
    prefix0.Badge: ClientTarget<prefix0.Badge>(
      'components/badge',
      params: _prefix0Badge,
    ),

    prefix1.Badges: ClientTarget<prefix1.Badges>('components/badges'),

    prefix2.Features: ClientTarget<prefix2.Features>('components/features'),

    prefix3.About: ClientTarget<prefix3.About>('pages/about'),

    prefix4.Home: ClientTarget<prefix4.Home>('pages/home'),
  },
  styles: () => [...prefix3.About.styles, ...prefix4.Home.styles],
);

Map<String, dynamic> _prefix0Badge(prefix0.Badge c) => {
  'linkHref': c.linkHref,
  'imageName': c.imageName,
  'imageAlt': c.imageAlt,
  'imageWidth': c.imageWidth,
  'imageHeight': c.imageHeight,
};
