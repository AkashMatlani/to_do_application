# To-Do Application

## Description

To Do application is a cross-platform mobile application designed to help users track their notes. It supports both Android and iOS platforms and offers features such as adding and deleting notes also mark as completed option for click on chekbox.

## Features

- Cross-platform support for Android and iOS
- Notes add & delete feature

## Installation

### Prerequisites

- [Flutter](https://flutter.dev/docs/get-started/install) (for Flutter-based apps)
- [Android Studio](https://developer.android.com/studio) or [Xcode](https://developer.apple.com/xcode/) for development

### Clone the Repository

git clone https://github.com/AkashMatlani/to_do_application
cd your-repository

Android Setup
1) Open the project in Android Studio.
2) Set up an Android emulator or connect an Android device.
3) Run the app
4) flutter run

iOS Setup
1) Open the ios folder in Xcode.
2) Set up an iOS simulator or connect an iOS device.
3) Run the app
4) flutter run

## Architectural Choices and Third-Party Packages

### Architectural Choices

Our application is built using the following architectural principles:
  **[Bloc](https://pub.dev/packages/flutter_bloc)**: 
  - **Reason**: BLoC (Business Logic Component) is a pattern for managing state and separating business logic from UI components. It is a widely adopted state management solution that works well with streams and reactive programming.
  - 
### Third-Party Packages

Here is a list of third-party packages used in our project along with the reasons for their inclusion:

 **[Bloc](https://pub.dev/packages/flutter_bloc)**: 
  - **Reason**: BLoC helps to create scalable and maintainable applications by organizing code into events, states, and business logic. It allows a clear separation of concerns between the UI and logic, making it easier to test and debug.

**[Cloud FireStore](https://pub.dev/packages/cloud_firestore)**: 
  - **Reason**: Cloud Firestore is a flexible, scalable database for mobile, web, and server development from Firebase. It provides real-time syncing of data across devices and platforms.
    
### How to Add/Update Packages

To add or update packages in the project, follow these steps:

1. **Add to `pubspec.yaml`**:
   - Open the `pubspec.yaml` file and add the desired package under dependencies.

2. **Install Packages**:
   - Run `flutter pub get` in the terminal to fetch the new dependencies.

3. **Update Usage**:
   - Import the package into your Dart files and update the code to utilize the new functionality.

