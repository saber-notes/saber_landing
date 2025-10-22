import 'package:jaspr/server.dart';
import 'package:saber_landing/app.dart';
import 'package:saber_landing/jaspr_options.dart';
import 'package:saber_landing/styles/globals.css.dart';

void main() {
  Jaspr.initializeApp(options: defaultJasprOptions);

  runApp(Document(
    title: 'Saber',
    lang: 'en',
    styles: globalsCss,
    meta: const {
      'color-scheme': 'light dark',
      'description': 'The notes app built for handwriting',
    },
    head: const [
      Component.element(tag: 'link', attributes: {
        'rel': 'preconnect',
        'href': 'https://fonts.googleapis.com',
      }),
      Component.element(tag: 'link', attributes: {
        'rel': 'preconnect',
        'href': 'https://fonts.gstatic.com',
        'crossorigin': '',
      }),
      Component.element(tag: 'link', attributes: {
        'href': 'https://fonts.googleapis.com/css2?family=Atkinson+Hyperlegible+Next:ital,wght@0,200..800;1,200..800&family=Neucha&display=swap',
        'rel': 'stylesheet',
      }),
      Component.element(
        tag: 'link',
        attributes: {'rel': 'icon', 'href': '/favicon.ico'},
      ),
    ],
    body: const App(),
  ));
}
