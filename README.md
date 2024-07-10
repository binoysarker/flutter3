# recipe.app

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Important dependencies for this project
- flutter 3.0.5
- dart 2.17.6
- devtools 2.12.2

## to build the project from the code:
- flutter clean
- flutter pub get
- check all the output of flutter doctor -v
- flutter pub run flutter_launcher_icons:main
- flutter pub run flutter_native_splash:create
- flutter pub run build_runner build --delete-conflicting-outputs
- flutter pub global run rename --appname "kaaikani"
# jre class path related error:
- change the jkd7 to jdk8 in build.gradle file
- change minsdk to 21
- change target sdk to 30
- java version 11 is needed
- gradle version 7.4 is needed

# if splash screen does not show on start then chnage this in androidmanifest file
```
<meta-data
                android:name="io.flutter.embedding.android.SplashScreenDrawable"
                android:resource="@drawable/launch_background" />
              />
```
## important notes
- one shipping method code in admin must be 'morning-delivery' 