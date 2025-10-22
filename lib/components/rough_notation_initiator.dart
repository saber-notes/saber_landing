import 'package:jaspr/jaspr.dart';
import 'package:universal_web/js_interop.dart';
import 'package:universal_web/web.dart';

@Import.onWeb('package:saber_landing/rough_notation.dart',
    show: [#RoughNotationController])
import 'rough_notation_initiator.imports.dart';

@client
class RoughNotationInitiator extends StatefulComponent {
  const RoughNotationInitiator({super.key});

  @override
  State<RoughNotationInitiator> createState() => _RoughNotationInitiatorState();
}

class _RoughNotationInitiatorState extends State<RoughNotationInitiator> {
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
  Component build(BuildContext context) {
    return script(
      async: true,
      src: 'https://unpkg.com/rough-notation/lib/rough-notation.iife.js',
    );
  }
}
