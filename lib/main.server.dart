import 'package:jaspr/dom.dart';
import 'package:jaspr/server.dart';
import 'package:saber_landing/app.dart';
import 'package:saber_landing/main.server.options.dart';
import 'package:saber_landing/styles/globals.css.dart';

void main() {
  Jaspr.initializeApp(options: defaultServerOptions);

  runApp(
    Document(
      title: 'Saber',
      lang: 'en',
      styles: globalsCss,
      meta: const {
        'color-scheme': 'light dark',
        'description': 'The notes app built for handwriting',
      },
      head: [
        link(href: 'https://fonts.googleapis.com', rel: 'preconnect'),
        link(
          href: 'https://fonts.gstatic.com',
          rel: 'preconnect',
          attributes: {'crossorigin': ''},
        ),
        link(
          rel: 'stylesheet',
          href:
              'https://fonts.googleapis.com/css2?family=Atkinson+Hyperlegible+Next:ital,wght@0,200..800;1,200..800&family=Neucha&display=swap',
        ),
        link(href: '/favicon.ico', rel: 'icon'),
      ],
      body: const App(),
    ),
  );
}
