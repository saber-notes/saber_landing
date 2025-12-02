import 'package:http/http.dart' as http;
import 'package:jaspr/server.dart';

class Header extends StatelessComponent {
  const Header({super.key});

  @override
  Component build(BuildContext context) {
    return div(classes: 'header', [
      h1(classes: 'title', [text('Saber')]),
      p(classes: 'subtitle', [text('Handwritten Notes')]),
      _IconImg(),
      p(classes: 'summary', [text('The notes app built for handwriting')]),
    ]);
  }
}

class _IconImg extends AsyncStatelessComponent {
  const _IconImg();

  @override
  Future<Component> build(BuildContext context) async {
    final response = await http.get(
      Uri.parse(
        'https://raw.githubusercontent.com/saber-notes/saber/refs/heads/main/assets/icon/icon.svg',
      ),
    );
    assert(
      response.statusCode >= 200 && response.statusCode < 300,
      'Failed to fetch icon: ${response.statusCode} ${response.body}',
    );
    final svgContent = response.body;
    final dataUri =
        'data:image/svg+xml;UTF-8,${Uri.encodeComponent(svgContent)}';
    return img(
      src: dataUri,
      alt: 'Logo',
      width: 100,
      height: 100,
      attributes: {'aria-hidden': 'true'},
    );
  }
}
