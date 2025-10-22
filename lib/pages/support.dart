import 'package:jaspr/jaspr.dart';

class Support extends StatelessComponent {
  const Support({super.key});

  static const repoUrl = 'https://github.com/saber-notes/saber';

  @override
  Component build(BuildContext context) {
    return fragment([
      link(href: '/support.css', rel: 'stylesheet'),
      h1([text('Support with Saber')]),
      p([
        text(
          'If you have any questions, feedback, or need assistance with Saber, '
          'you can reach out to the community and me here...',
        ),
      ]),
      h2([text('GitHub')]),
      p([text('GitHub is the primary platform for all things Saber!')]),
      div(classes: 'btn-wrap', [
        a(
          href: '$repoUrl/issues/new?template=bug_report.yaml',
          classes: 'btn btn-primary',
          [text('Report a bug')],
        ),
        a(
          href: '$repoUrl/issues/new?template=feature_request.yaml',
          classes: 'btn',
          [text('Request a feature')],
        ),
        a(href: '$repoUrl/discussions', classes: 'btn', [
          text('Discuss with the community'),
        ]),
        a(href: repoUrl, classes: 'btn', [text('View the code')]),
      ]),
      h2([text('Email')]),
      p([
        text('You can also reach out to me directly via email at '),
        a(href: 'mailto:adilhanney@disroot.org', [
          text('adilhanney@disroot.org'),
        ]),
        text(
          '. Please note that while I will do my best to respond, '
          'I get a LOT of emails and aren\'t always able to reply promptly. '
          'Please consider using GitHub instead where we have '
          'more visibility and can help each other out.',
        ),
      ]),
    ]);
  }
}
