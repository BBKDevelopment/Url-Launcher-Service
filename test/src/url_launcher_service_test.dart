// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:url_launcher_service/url_launcher_service.dart';

void main() {
  late UrlLauncherService sut;

  group('UrlLauncherService', () {
    test('can be instantiated', () {
      expect(UrlLauncherService(), isNotNull);
    });

    test('can send email', () async {
      sut = UrlLauncherService.test(urlLauncherResponse: true);

      expect(
        () => sut.sendEmail(emailUri: Uri(scheme: 'mailto')),
        isA<void>(),
      );
    });

    test('can throw SendEmailException when could not send email', () async {
      sut = UrlLauncherService.test(urlLauncherResponse: false);

      expect(
        () => sut.sendEmail(emailUri: Uri(scheme: 'mailto')),
        throwsA(isA<SendEmailException>()),
      );
    });

    test('can launch url', () async {
      sut = UrlLauncherService.test(urlLauncherResponse: true);

      expect(
        () => sut.launch(url: Uri(scheme: 'https')),
        isA<void>(),
      );
    });

    test('can throw UrlLaunchException when could not launch url', () async {
      sut = UrlLauncherService.test(urlLauncherResponse: false);

      expect(
        () => sut.launch(url: Uri(scheme: 'https')),
        throwsA(isA<UrlLaunchException>()),
      );
    });
  });
}
