import 'package:jaspr/jaspr.dart';
import 'package:saber_landing/components/badges.dart';
import 'package:saber_landing/components/features.dart';
import 'package:saber_landing/components/header.dart';
import 'package:universal_web/js_interop.dart';
import 'package:universal_web/web.dart';

@Import.onWeb('package:saber_landing/rough_notation.dart',
    show: [#RoughNotationController])
import 'home.imports.dart';

@client
class Home extends StatefulComponent {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();

  @css
  static final styles = [css.import('/home.css')];
}

class _HomeState extends State<Home> {
  late final roughNotationController = RoughNotationController();

  @override
  void initState() {
    super.initState();
    if (kIsWeb) {
      window.setTimeout(
          roughNotationController.showAnnotations.toJS, null, 300);
    }
  }

  @override
  void dispose() {
    if (kIsWeb) roughNotationController.hideAnnotations();
    super.dispose();
  }

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield Header();
    yield Badges();
    yield Features();
    yield script(
        src: 'https://unpkg.com/rough-notation/lib/rough-notation.iife.js', []);
  }
}
