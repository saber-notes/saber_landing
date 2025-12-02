import 'package:http/http.dart' as http;
import 'package:jaspr/server.dart';
import 'package:jaspr_content/components/markdown.dart';
import 'package:jaspr_content/jaspr_content.dart';
import 'package:jaspr_content/theme.dart';

class PrivacyPolicyFromMarkdown extends AsyncStatelessComponent {
  const PrivacyPolicyFromMarkdown({super.key});

  @override
  Future<Component> build(BuildContext context) async {
    final response = await http.get(
      Uri.parse(
        'https://raw.githubusercontent.com/saber-notes/saber/main/privacy_policy.md',
      ),
    );
    assert(
      response.statusCode >= 200 && response.statusCode < 300,
      'Failed to fetch privacy policy: ${response.statusCode} ${response.body}',
    );
    final markdown = response.body;

    return Content.wrapTheme(
      const ContentTheme.none(),
      child: Markdown(content: markdown),
    );
  }
}
