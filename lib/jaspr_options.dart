// dart format off
// ignore_for_file: type=lint

// GENERATED FILE, DO NOT MODIFY
// Generated with jaspr_builder

import 'package:jaspr/jaspr.dart';
import 'package:saber_landing/components/rough_notation_initiator.dart'
    as prefix0;
import 'package:saber_landing/pages/home.dart' as prefix1;
import 'package:saber_landing/pages/support.dart' as prefix2;

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
    prefix0.RoughNotationInitiator:
        ClientTarget<prefix0.RoughNotationInitiator>(
          'components/rough_notation_initiator',
        ),
  },
  styles: () => [...prefix1.Home.styles, ...prefix2.Support.styles],
);
