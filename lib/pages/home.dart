import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:saber_landing/components/badges.dart';
import 'package:saber_landing/components/features.dart';
import 'package:saber_landing/components/header.dart';
import 'package:saber_landing/components/rough_notation_initiator.dart';

class Home extends StatelessComponent {
  const Home({super.key});

  @override
  Component build(BuildContext context) {
    return .fragment([
      link(href: '/home.css', rel: 'stylesheet'),
      Header(),
      Badges(),
      Features(),
      const RoughNotationInitiator(),
    ]);
  }
}
