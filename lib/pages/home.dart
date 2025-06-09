import 'package:jaspr/jaspr.dart';
import 'package:saber_landing/components/badges.dart';
import 'package:saber_landing/components/features.dart';
import 'package:saber_landing/components/header.dart';

@client
class Home extends StatelessComponent {
  const Home({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield DomComponent(
      tag: 'link',
      attributes: {'rel': 'stylesheet', 'href': '/home.css'},
    );
    yield Header();
    yield Badges();
    yield Features();
  }
}
