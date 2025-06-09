import 'package:jaspr/jaspr.dart';
import 'package:saber_landing/components/badge.dart';

class Badges extends StatelessComponent {
  const Badges({super.key});

  // TODO(adil192): Pull this from GitHub
  static final versionName = '0.25.8';

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'badges', [
      Badge(
        linkHref:
            'https://play.google.com/store/apps/details?id=com.adilhanney.saber',
        imageName: 'google-play-badge.png',
        imageAlt: 'Get it on Google Play',
        imageWidth: 564,
        imageHeight: 168,
      ),
      Badge(
        linkHref: 'https://f-droid.org/packages/com.adilhanney.saber/',
        imageName: 'f-droid-badge.png',
        imageAlt: 'Get it on F-Droid',
        imageWidth: 564,
        imageHeight: 168,
      ),
      Badge(
        linkHref: 'https://apps.apple.com/us/app/saber/id1671523739',
        imageName: 'app-store-badge.svg',
        imageAlt: 'Download on the App Store',
        imageWidth: 120,
        imageHeight: 40,
      ),
      Badge(
        linkHref:
            'https://github.com/saber-notes/saber/releases/download/v$versionName/SaberInstaller_v$versionName.exe',
        imageName: 'windows-badge.png',
        imageAlt: 'Download for Windows',
        imageWidth: 391,
        imageHeight: 129,
      ),
      Badge(
        linkHref: 'https://flathub.org/apps/details/com.adilhanney.saber',
        imageName: 'flathub-badge.svg',
        imageAlt: 'Download on Flathub',
        imageWidth: 300,
        imageHeight: 100,
      ),
      Badge(
        linkHref:
            'https://github.com/saber-notes/saber/releases/download/v$versionName/Saber-$versionName-x86_64.AppImage',
        imageName: 'appimage-logo.png',
        imageAlt: 'Get it as an AppImage',
        imageWidth: 468,
        imageHeight: 468,
      ),
      Badge(
        linkHref: 'https://snapcraft.io/saber',
        imageName: 'snap-badge.png',
        imageAlt: 'Get it from the Snap Store',
        imageWidth: 364,
        imageHeight: 112,
      ),
    ]);
  }
}
