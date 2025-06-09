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
    ],
    meta: {
      'color-scheme': 'light dark',
      'description': 'The notes app built for handwriting',
    },
    head: [
      DomComponent(
        tag: 'link',
        attributes: {'rel': 'stylesheet', 'href': '/globals.css'},
      ),
      DomComponent(
        tag: 'link',
        attributes: {'rel': 'icon', 'href': '/favicon.ico'},
      ),
    ],
    body: App(),
  ));
}
