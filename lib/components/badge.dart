import 'package:jaspr/jaspr.dart';

@client
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
  Iterable<Component> build(BuildContext context) sync* {
    final imageSrc =
        'https://raw.githubusercontent.com/saber-notes/saber/main/assets_raw/badges/$imageName';
    yield a(href: linkHref, [
      img(src: imageSrc, alt: imageAlt, width: imageWidth, height: imageHeight),
    ]);
  }
}
