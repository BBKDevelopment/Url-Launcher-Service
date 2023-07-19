# <p align="center">Url Launcher Service</p>

<div align="center">

[![url_launcher_service][build_status_badge]][workflow_link]
![coverage][coverage_badge]
[![style: very good analysis][very_good_analysis_badge]][very_good_analysis_link]
[![Powered by Mason](https://img.shields.io/endpoint?url=https%3A%2F%2Ftinyurl.com%2Fmason-badge)](https://github.com/felangel/mason)
[![License: BSD-3-Clause][license_badge]][license_link]

</div>

This service wraps the [url_launcher][url_launcher_link] and provides secure usage of the plugin by handling exceptions.

## Installation 💻

**❗ In order to start using Url Launcher Service you must have the [Flutter SDK][flutter_install_link] installed on your machine.**

Add `url_launcher_service` to your `pubspec.yaml`:

```yaml
dependencies:
  url_launcher_service:
    git:
      url: https://github.com/BBKDevelopment/Url-Launcher-Service.git
      ref: v1.0.0
```

Install it:

```sh
flutter packages get
```

---

## Continuous Integration 🤖

Url Launcher Service comes with a built-in [GitHub Actions workflow][github_actions_link] powered by [Very Good Workflows][very_good_workflows_link] but you can also add your preferred CI/CD solution.

Out of the box, on each pull request and push, the CI `formats`, `lints`, and `tests` the code. This ensures the code remains consistent and behaves correctly as you add functionality or make changes. The project uses [Very Good Analysis][very_good_analysis_link] for a strict set of analysis options used by our team. Code coverage is enforced using the [Very Good Workflows][very_good_coverage_link].

---

## Running Tests 🧪

For first time users, install the [very_good_cli][very_good_cli_link]:

```sh
dart pub global activate very_good_cli
```

To run all unit tests:

```sh
very_good test --coverage
```

To view the generated coverage report you can use [lcov](https://github.com/linux-test-project/lcov).

```sh
# Generate Coverage Report
genhtml coverage/lcov.info -o coverage/

# Open Coverage Report
open coverage/index.html
```

[url_launcher_link]: https://github.com/flutter/packages/tree/main/packages/url_launcher/url_launcher
[workflow_link]: https://github.com/BBKDevelopment/Url-Launcher-Service/actions/workflows/main.yaml
[build_status_badge]: https://github.com/BBKDevelopment/Url-Launcher-Service/actions/workflows/main.yaml/badge.svg
[coverage_badge]: coverage_badge.svg
[flutter_install_link]: https://docs.flutter.dev/get-started/install
[github_actions_link]: https://docs.github.com/en/actions/learn-github-actions
[license_badge]: https://img.shields.io/badge/license-BSD%203%E2%80%93Clause-blue.svg
[license_link]: https://opensource.org/licenses/bsd-3-clause
[logo_black]: https://raw.githubusercontent.com/VGVentures/very_good_brand/main/styles/README/vgv_logo_black.png#gh-light-mode-only
[logo_white]: https://raw.githubusercontent.com/VGVentures/very_good_brand/main/styles/README/vgv_logo_white.png#gh-dark-mode-only
[mason_link]: https://github.com/felangel/mason
[very_good_analysis_badge]: https://img.shields.io/badge/style-very_good_analysis-B22C89.svg
[very_good_analysis_link]: https://pub.dev/packages/very_good_analysis
[very_good_cli_link]: https://pub.dev/packages/very_good_cli
[very_good_coverage_link]: https://github.com/marketplace/actions/very-good-coverage
[very_good_ventures_link]: https://verygood.ventures
[very_good_ventures_link_light]: https://verygood.ventures#gh-light-mode-only
[very_good_ventures_link_dark]: https://verygood.ventures#gh-dark-mode-only
[very_good_workflows_link]: https://github.com/VeryGoodOpenSource/very_good_workflows
