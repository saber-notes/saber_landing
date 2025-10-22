import 'package:jaspr/jaspr.dart';

class Header extends StatelessComponent {
  const Header({super.key});

  @override
  Component build(BuildContext context) {
    return div(classes: 'header', [
      h1(classes: 'title', [text('Saber')]),
      p(classes: 'subtitle', [text('Handwritten Notes')]),
      img(
        src:
            'https://raw.githubusercontent.com/saber-notes/saber/refs/heads/main/assets/icon/icon.svg',
        alt: 'Logo',
        width: 100,
        height: 100,
        attributes: {'aria-hidden': 'true'},
      ),
      p(classes: 'summary', [text('The notes app built for handwriting')]),
    ]);
  }
}
