import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';

import 'pages/about.dart';
import 'pages/home.dart';

class App extends StatelessComponent {
  const App({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield DomComponent(tag: 'main', classes: 'main', children: [
      Router(routes: [
        Route(
          path: '/',
          title: 'Saber: Handwritten Notes',
          builder: (context, state) => const Home(),
        ),
        Route(
          path: '/privacy_policy',
          title: 'Saber: Privacy Policy',
          builder: (context, state) => const About(),
        ),
      ]),
    ]);
  }
}
