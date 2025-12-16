import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:saber_landing/components/privacy_policy_from_markdown.dart';

class PrivacyPolicy extends StatelessComponent {
  const PrivacyPolicy({super.key});

  @override
  Component build(BuildContext context) {
    return .fragment([
      const PrivacyPolicyFromMarkdown(),
      br(),
      p([
        .text('See this page on '),
        a(
          href:
              'https://github.com/saber-notes/saber/blob/main/privacy_policy.md',
          [.text('GitHub')],
        ),
      ]),
    ]);
  }
}
