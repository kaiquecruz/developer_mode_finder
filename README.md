# Developer Mode Finder

[![pub package](https://img.shields.io/pub/v/developer_mode_finder.svg)](https://pub.dev/packages/developer_mode_finder)
[![License: MIT](https://img.shields.io/badge/license-MIT-blue.svg)](https://opensource.org/licenses/MIT)

A Flutter plugin designed to enhance application security by detecting if **Developer Mode** is enabled on Android devices and checking for **Jailbreak status** or **Simulator environment** on iOS devices. Use this to protect sensitive features within your app.

## 🚀 Features

- ✅ **Android**: Detects if Developer Options are enabled in system settings.
- ✅ **iOS**: Detects if the device is jailbroken or running in a simulator environment.
- ✅ **Cross-platform**: Seamless support for both Android and iOS.
- ✅ **Advanced Static API**: Access detection with a simple static getter.
- ✅ **Lightweight**: Minimal overhead and efficient native implementation.

## 📊 Platform Support

| Platform | Support | Detection Mechanism |
|----------|---------|---------------------|
| Android  | ✅      | System Settings (DEVELOPMENT_SETTINGS_ENABLED) |
| iOS      | ✅      | Jailbreak File Checks & Simulator Detection |
| Web      | ❌      | Not Applicable |

## 📦 Installation

Add `developer_mode_finder` to your `pubspec.yaml`:

```yaml
dependencies:
  developer_mode_finder: ^1.0.2
```

Then run:
```bash
flutter pub get
```

## 🛠️ Usage

### Quick Start (Recommended)
Use the static getter for the quickest check:

```dart
import 'package:developer_mode_finder/developer_mode_finder.dart';

bool isEnabled = await DeveloperModeFinder.isEnabled;
print('Developer Mode Enabled: $isEnabled');
```

### Instance Usage
You can also use the singleton instance:

```dart
final finder = DeveloperModeFinder();
bool isEnabled = await finder.isDeveloperModeEnabled();
```

## 🛡️ Why use this?
In high-security apps like banking, fintech, or corporate tools, running on a compromised device (jailbroken or with developer mode active) can pose a security risk. This plugin helps you identify such environments so you can:
- Disable sensitive features.
- Show a warning to the user.
- Log potential security threats.

## 📝 License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.