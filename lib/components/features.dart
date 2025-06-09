import 'package:jaspr/jaspr.dart';

class Features extends StatelessComponent {
  const Features({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'features', [
      div(classes: 'feature', [
        h2([text('Private')]),
        p([text('Only you can access your notes!')]),
        p([
          text('You can sync your notes across devices knowing that they are '
              'encrypted and stored securely, and not even the server can read '
              'them.')
        ]),
        p([
          text('You can also read the '),
          a(href: '/privacy-policy', [text('privacy policy')]),
          text('.'),
        ])
      ]),
      div(classes: 'feature', [
        h2([text('Cross-platform')]),
        p([
          text('You can sync and edit your notes across all your devices, '
              'whether they\'re a phone, tablet, or computer.')
        ]),
      ]),
      div(classes: 'feature', [
        h2([text('The perfect highlighter')]),
        p([
          text(
              'Saber\'s highlighter doesn\'t overlap with itself and change color '
              'when you go over the same area again.')
        ]),
        p([
          text('The highlighter also renders '),
          // TODO(adil192): Make this underlineMe a component
          span(classes: 'underlineMe', [text('underneath')]),
          text(' the text, so you can still see the text clearly.')
        ]),
      ]),
      div(classes: 'feature', [
        h2([text('Stay organized')]),
        p([
          text(
              'Saber lets you organize your notes into unlimited nested folders.')
        ]),
        p([
          text(
              'You can also quickly access your most recent notes from the home screen.')
        ]),
      ]),
      div(classes: 'feature', [
        h2([text('Cohesive dark mode')]),
        p([
          text(
              'Saber\'s dark mode doesn\'t just darken the UI; it also darkens the '
              'notes themselves.')
        ]),
        p([
          text(
              'This means that you can read your notes in the dark without hurting your eyes.')
        ]),
      ]),
      div(classes: 'feature', [
        h2([text('Open source')]),
        p([text('No sneaky stuff! Saber is free and open source software.')]),
        p([
          text('Find the code on '),
          a(href: 'https://github.com/saber-notes/saber', [
            img(
              classes: 'githubLogo',
              src: 'images/badges/github-mark.svg',
              alt: '',
              attributes: {'aria-hidden': 'true'},
              width: 100,
              height: 41,
            ),
            text('GitHub')
          ]),
          text('.'),
        ]),
      ]),
    ]);
  }
}
