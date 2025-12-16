import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:jaspr/dom.dart';
import 'package:jaspr/server.dart';
import 'package:saber_landing/components/badge.dart';

class Badges extends AsyncStatelessComponent {
  const Badges({super.key});

  Future<String> getVersionName() async {
    if (kDebugMode) return '1.2.3'; // Don't spam GitHub in debug mode
    final response = await http.get(
      Uri.parse('https://api.github.com/repos/saber-notes/saber/tags'),
    );
    assert(
      response.statusCode >= 200 && response.statusCode < 300,
      'Failed to fetch version name: ${response.statusCode} ${response.body}',
    );
    final json = jsonDecode(response.body) as List<dynamic>;
    final versionWithV = json[0]['name'] as String;
    assert(versionWithV.startsWith('v'));
    final versionWithoutV = versionWithV.substring(1);
    assert(versionWithoutV.isNotEmpty);
    return versionWithoutV;
  }

  @override
  Future<Component> build(BuildContext context) async {
    final versionName = await getVersionName();

    return div(classes: 'badges', [
      Badge(
        linkHref:
            'https://play.google.com/store/apps/details?id=com.adilhanney.saber',
        imageName: 'google-play-badge.svg',
        imageAlt: 'Get it on Google Play',
        imageWidth: 564,
        imageHeight: 168,
      ),
      Badge(
        linkHref: 'https://f-droid.org/packages/com.adilhanney.saber/',
        imageName: 'f-droid-badge.svg',
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
        imageName: 'appimage-logo.svg',
        imageAlt: 'Get it as an AppImage',
        imageWidth: 468,
        imageHeight: 468,
      ),
    ]);
  }
}
