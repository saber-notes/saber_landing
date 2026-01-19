import 'package:http/http.dart' as http;
import 'package:jaspr/dom.dart';
import 'package:jaspr/server.dart';
import 'package:yaml/yaml.dart';

class FaqPage extends AsyncStatelessComponent {
  const FaqPage({super.key});

  @override
  Future<Component> build(BuildContext context) async {
    final t = await _fetchTranslations();
    final encFaq = _parseFaq(t, t['login']['encLoginStep']['encFaq']);
    final profileFaq = _parseFaq(t, t['profile']['faq']);
    return .fragment([
      h1([.text('Frequently Asked Questions')]),
      p([.text('Here are some common questions and answers about Saber.')]),
      p([.text('These are also available in the app where relevant.')]),
      h2([.text('Encryption password')]),
      for (final (q, a) in encFaq) ...[
        h3([.text(q)]),
        p([
          span(styles: const Styles(whiteSpace: .preLine), [.text(a)]),
        ]),
      ],
      h2([.text('Profile')]),
      for (final (q, a) in profileFaq) ...[
        h3([.text(q)]),
        p([
          span(styles: const Styles(whiteSpace: .preLine), [.text(a)]),
        ]),
      ],
    ]);
  }

  List<(String, String)> _parseFaq(YamlMap t, YamlList yaml) {
    return yaml.map((item) {
      final question = item['q'] as String;
      var answer = item['a'] as String;
      answer = answer.replaceAll(
        '@:profile.quickLinks.deleteAccount',
        t['profile']['quickLinks']['deleteAccount'],
      );
      answer = answer.trim();
      return (question, answer);
    }).toList();
  }

  Future<YamlMap> _fetchTranslations() async {
    final sourceUrl = Uri.parse(
      'https://raw.githubusercontent.com/saber-notes/saber/refs/heads/main/lib/i18n/en.i18n.yaml',
    );
    final response = await http.get(sourceUrl);
    assert(
      response.statusCode >= 200 && response.statusCode < 300,
      'Failed to fetch privacy policy: ${response.statusCode} ${response.body}',
    );
    final yaml = response.body;
    return loadYaml(yaml, sourceUrl: sourceUrl);
  }
}
