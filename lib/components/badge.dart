import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class Badge extends StatelessComponent {
  const Badge({
    required this.linkHref,
    required this.imageName,
    required this.imageAlt,
    required this.imageWidth,
    required this.imageHeight,
  });

  final String linkHref;
  final String imageName;
  final String imageAlt;
  final int imageWidth;
  final int imageHeight;

  @override
  Component build(BuildContext context) {
    final imageSrc = '/images/badges/$imageName';
    return a(href: linkHref, [
      img(src: imageSrc, alt: imageAlt, width: imageWidth, height: imageHeight),
    ]);
  }
}
