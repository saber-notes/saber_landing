import 'package:jaspr/server.dart';
import 'package:saber_landing/styles/saber_fonts.dart';

final globalsCss = [
  css(':root', [
    css('&').styles(raw: {
      '--primary-color': '#ffd14b',
      '--highlight-color': '#ffe28e',
      '--background': '#fffbff',
      '--on-background': '#1e1b16',
      '--sans-serif-font-family': SaberFonts.sansSerif.value,
      '--cursive-font-family': SaberFonts.cursive.value,
      '--body-font-family':
          FontFamily.variable('--sans-serif-font-family').value,
      '--heading-font-family':
          FontFamily.variable('--cursive-font-family').value,
    }),
    css.media(MediaQuery.all(prefersColorScheme: ColorScheme.dark), [
      css('&').styles(raw: {
        '--highlight-color': '#806000',
        '--background': '#1e1b16',
        '--on-background': '#e8e2d9',
      }),
    ]),
    css.media(MediaQuery.all(prefersContrast: Contrast.more), [
      css('&').styles(raw: {
        '--background': 'white',
        '--on-background': 'black',
        '--highlight-color': 'rgba(255, 209, 75, 0.1)',
        // use non-cursive font in high contrast mode for better readability
        '--heading-font-family':
            FontFamily.variable('--sans-serif-font-family').value,
      }),
    ]),
    css.media(
      MediaQuery.all(
          prefersColorScheme: ColorScheme.dark, prefersContrast: Contrast.more),
      [
        css('&').styles(raw: {
          '--background': 'black',
          '--on-background': 'white',
        }),
      ],
    ),
  ]),
  css('html, body').styles(
    padding: Padding.zero,
    margin: Margin.zero,
    color: Color.variable('--on-background'),
    fontFamily: FontFamily.variable('--body-font-family'),
    lineHeight: Unit.expression('1.5'),
    backgroundColor: Color.variable('--background'),
    raw: {'color-scheme': 'light dark'},
  ),
  css('*, *::before, *::after').styles(
    boxSizing: BoxSizing.borderBox,
  ),
  css('main').styles(
    // rough-notation is positioned absolutely inside this
    position: Position.relative(),
    // big enough to fit the badges nicely
    maxWidth: Unit.rem(40),
    margin: Margin.symmetric(horizontal: Unit.auto),
  ),
  css('a').styles(
    color: Color.inherit,
    textDecoration: TextDecoration(line: TextDecorationLine.underline),
  ),
  css('h1, h2, h3, h4, h5, h6').styles(
    fontFamily: FontFamily.variable('--heading-font-family'),
    letterSpacing: Unit.em(0.02),
  ),
  css('h2').styles(
    display: Display.inlineBlock,
    margin: Margin.only(bottom: Unit.rem(0.2)),
  ),
];
