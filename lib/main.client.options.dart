// dart format off
// ignore_for_file: type=lint

// GENERATED FILE, DO NOT MODIFY
// Generated with jaspr_builder

import 'package:jaspr/client.dart';

import 'package:saber_landing/components/rough_notation_initiator.dart'
    deferred as _rough_notation_initiator;

/// Default [ClientOptions] for use with your Jaspr project.
///
/// Use this to initialize Jaspr **before** calling [runApp].
///
/// Example:
/// ```dart
/// import 'main.client.options.dart';
///
/// void main() {
///   Jaspr.initializeApp(
///     options: defaultClientOptions,
///   );
///
///   runApp(...);
/// }
/// ```
ClientOptions get defaultClientOptions => ClientOptions(
  clients: {
    'rough_notation_initiator': ClientLoader(
      (p) => _rough_notation_initiator.RoughNotationInitiator(),
      loader: _rough_notation_initiator.loadLibrary,
    ),
  },
);
