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
          settings: RouteSettings(priority: 1),
        ),
        Route(
          path: '/privacy-policy',
          title: 'Saber\'s Privacy Policy',
          builder: (context, state) => const PrivacyPolicy(),
          settings: RouteSettings(priority: 0.7),
        ),
        Route(
          path: '/privacy_policy',
          redirect: (context, state) => '/privacy-policy',
          settings: RouteSettings(priority: 0),
        ),
      ]),
    ]);
  }
}
