@JS('RoughNotation')
library;

import 'dart:js_interop';

import 'package:saber_landing/constants/theme.dart';
import 'package:universal_web/web.dart';

@JS()
external Annotation annotate(Element? element, AnnotationConfig config);

@JS('annotationGroup')
external AnnotationGroup annotationGroupJS(JSArray<Annotation> annotations);
AnnotationGroup annotationGroup(List<Annotation> annotations) {
  return annotationGroupJS(annotations.toJS);
}

extension type Annotation(JSObject _) implements JSObject {}
extension type AnnotationGroup(JSObject _) implements JSObject {
  external void show();
  external void hide();
}

@JS()
@staticInterop
@anonymous
class AnnotationConfig {
  external factory AnnotationConfig({
    String type,
    String? color,
    double? strokeWidth,
    double? padding,
    bool? animate,
    bool? multiline,
    int? iterations,
    bool? rtl,
    JSArray? brackets,
  });

  static final rightAndLeftBrackets = ['right'.toJS, 'left'.toJS].toJS;
}

List<HTMLElement?> nodeListToDart(NodeList nodes) {
  return List.generate(
    nodes.length,
    (index) => nodes.item(index) as HTMLElement?,
  );
}

class RoughNotationController {
  AnnotationGroup? _annotationGroup;

  void showAnnotations() {
    print('Showing annotations...');

    final headerElem = document.querySelector('.header');
    final badgesElem = document.querySelector('.badges');
    final otherElems = document.querySelectorAll('.feature h2, .underlineMe');

    _annotationGroup = annotationGroup([
      annotate(
        headerElem,
        AnnotationConfig(type: 'box', strokeWidth: 2, iterations: 2),
      ),
      annotate(
        badgesElem,
        AnnotationConfig(
          type: 'bracket',
          strokeWidth: 2,
          iterations: 2,
          brackets: AnnotationConfig.rightAndLeftBrackets,
        ),
      ),
      for (final element in nodeListToDart(otherElems))
        if (element?.tagName == 'H2')
          annotate(
            element,
            AnnotationConfig(
              type: 'highlight',
              color: highlightColor.value,
              iterations: 2,
            ),
          )
        else
          annotate(
            element,
            AnnotationConfig(
              type: 'underline',
              color: highlightColor.value,
              iterations: 2,
            ),
          ),
    ])..show();
  }

  void hideAnnotations() {
    print('Hiding annotations...');
    _annotationGroup?.hide();
  }
}
