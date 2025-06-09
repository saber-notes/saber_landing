import 'package:jaspr/jaspr.dart';
import 'package:saber_landing/components/badges.dart';
import 'package:saber_landing/components/features.dart';
import 'package:saber_landing/components/header.dart';

@client
class Home extends StatelessComponent {
  const Home({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield Header();
    yield Badges();
    yield Features();
  }

  @css
  static final styles = [css.import('/home.css')];
}
