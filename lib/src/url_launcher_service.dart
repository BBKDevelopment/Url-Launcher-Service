import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:url_launcher/url_launcher.dart';

/// An exception thrown when the email could not be sent.
class SendEmailException implements Exception {}

/// An exception thrown when the url could not be launched.
class UrlLaunchException implements Exception {}

/// {@template url_launcher_service}
/// A service that provides url launcher functionality.
///
/// This service uses the `url_launcher` package.
///
/// ```dart
/// final urlLauncherService = UrlLauncherService();
/// ```
/// {@endtemplate}
class UrlLauncherService {
  /// {@macro url_launcher_service}
  const UrlLauncherService() : _urlLauncherResponse = null;

  /// A named constructor of the [UrlLauncherService] for testing purposes in
  /// which it is possible to predefine some variables.
  ///
  /// ```dart
  /// final urlLauncherService = UrlLauncherService.test(
  ///   urlLauncherResponse: true,
  /// );
  /// ```
  @visibleForTesting
  const UrlLauncherService.test({required bool urlLauncherResponse})
      : _urlLauncherResponse = urlLauncherResponse;

  final bool? _urlLauncherResponse;

  /// Sends an email to the given [emailUri].
  ///
  /// Throws a [SendEmailException] if the email could not be sent.
  Future<void> sendEmail({required Uri emailUri}) async {
    try {
      if (!emailUri.isScheme('mailto')) throw Exception();

      final isSuccess = _urlLauncherResponse ?? await launchUrl(emailUri);

      if (!isSuccess) throw Exception();
    } catch (_) {
      log('Failed to send email!', name: 'UrlLauncherService');
      throw SendEmailException();
    }
  }

  /// Launches the given [url].
  ///
  /// Throws a [UrlLaunchException] if the url could not be launched.
  Future<void> launch({required Uri url}) async {
    try {
      if (!url.isScheme('http') && !url.isScheme('https')) throw Exception();

      final isSuccess = _urlLauncherResponse ?? await launchUrl(url);

      if (!isSuccess) throw Exception();
    } catch (_) {
      log('Failed to launch url!', name: 'UrlLauncherService');
      throw UrlLaunchException();
    }
  }
}
