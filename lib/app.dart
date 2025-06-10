import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';
import 'package:saber_landing/pages/home.dart';
import 'package:saber_landing/pages/privacy_policy.dart';

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
          path: '/privacy-policy',
          title: 'Saber\'s Privacy Policy',
          builder: (context, state) => const PrivacyPolicy(),
        ),
        Route(
          path: '/privacy_policy',
          redirect: (context, state) => '/privacy-policy',
        ),
      ]),
    ]);
  }
}
