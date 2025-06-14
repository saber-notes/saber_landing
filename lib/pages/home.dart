import 'package:jaspr/jaspr.dart';
import 'package:saber_landing/components/badges.dart';
import 'package:saber_landing/components/features.dart';
import 'package:saber_landing/components/header.dart';
import 'package:saber_landing/components/rough_notation_initiator.dart';

class Home extends StatelessComponent {
  const Home({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield Header();
    yield Badges();
    yield Features();
    yield const RoughNotationInitiator();
  }

  @css
  static final styles = [css.import('/home.css')];
}
