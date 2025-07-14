# Flutter Project Setup Guide

This guide provides step-by-step instructions on how to clone and run this flutter project on your local PC. I also provided an apk for quick installation on your android device. The apk is located in the APK folder of the root directory.

## Prerequisites

Before starting, ensure you have the following installed on your PC:

- [Flutter SDK](https://docs.flutter.dev/get-started/install)
- [Git](https://git-scm.com/downloads)
- A code editor like [Android Studio](https://developer.android.com/studio) or [Visual Studio Code](https://code.visualstudio.com/)
- [Android SDK](https://developer.android.com/studio) and an emulator/device set up

---

## Getting Started

### 1. Clone the Repository

Open a terminal or command prompt and run:

```bash
git clone https://github.com/obicollins274/teyamusic
```

Navigate into the project folder named teyamusic:

```bash
cd teyamusic
```

---

### 2. Get Dependencies

Run the command below to install all necessary flutter packages:

```bash
flutter pub get
```

---

### 3. Run the Project

Make sure a device (physical or emulator) is connected and recognized:

```bash
flutter devices
```

Then, run the project with:

```bash
flutter run
```

---

### 4. Optional: Build an apk

To build an apk file incase you do not have an emulator or have a device connected:

```bash
flutter build apk --release
```

OR (for smaller apk file):

```bash
flutter build apk --release --split-per-abi
```

---

### 5. Optional: Test the application

I created a test file for quick repository testing. Run the command below for testing

```bash
flutter test test/repotest.dart
```

---

## Troubleshooting

- Run `flutter doctor` to check for any setup issues:

```bash
flutter doctor
```

- If any issues are found, follow the suggestions provided by `flutter doctor`.

---

## Notes

- Make sure to open the project folder in your editor (VS Code, Android Studio, etc.) and install any required extensions (e.g., Flutter and Dart extensions in VS Code).

---

Happy coding! 🚀
