import 'package:jaspr/server.dart';
import 'package:saber_landing/app.dart';
import 'package:saber_landing/jaspr_options.dart';

void main() {
  Jaspr.initializeApp(options: defaultJasprOptions);

  runApp(Document(
    title: 'Saber',
    lang: 'en',
    styles: [
      css.import('https://fonts.googleapis.com/css?family=Neucha'),
      css.import('/globals.css'),
    ],
    meta: const {
      'color-scheme': 'light dark',
      'description': 'The notes app built for handwriting',
    },
    head: const [
      DomComponent(tag: 'link', attributes: {
        'rel': 'preconnect',
        'href': 'https://fonts.googleapis.com',
      }),
      DomComponent(tag: 'link', attributes: {
        'rel': 'preconnect',
        'href': 'https://fonts.gstatic.com',
        'crossorigin': '',
      }),
      DomComponent(
        tag: 'link',
        attributes: {'rel': 'icon', 'href': '/favicon.ico'},
      ),
    ],
    body: const App(),
  ));
}
