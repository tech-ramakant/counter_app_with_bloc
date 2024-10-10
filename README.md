# Bloc Counter App 🚀

This repository contains the source code for the article **[Bloc Too Tough? Start with Cubit for a Smoother Ride!](https://medium.com/@tech.ramakant/bloc-too-tough-start-with-cubit-for-a-smoother-ride-2a437435d3e5)** published on Medium. The app demonstrates a transition from Cubit to Bloc for state management in a Flutter app, showing how to handle more complex features using events and states.

## Table of Contents
- [Introduction](#introduction)
- [Features](#features)
- [Getting Started](#getting-started)
- [Dependencies](#dependencies)
- [Code Overview](#code-overview)
- [License](#license)
- [Contribution Guidelines](#contribution-guidelines)
- [Contact](#contact)

## Introduction

Welcome to the Counter App with Bloc! This app was initially created using Cubit and has been upgraded to Bloc to demonstrate how you can transition from simple state management to a more scalable, event-driven approach.

## Features
- 🛠 Built with **Flutter** and **Bloc**.
- ⚙️ Transitioned from **Cubit** to **Bloc**.
- 🚀 Handles state through events like CounterIncremented and BlocBuilder for UI updates.

## Getting Started

1. Clone this repository:
    ```bash
      git clone https://github.com/tech-ramakant/counter_app_with_cubit.git
      cd counter_app_with_cubit
    ```

2. Install the required dependencies:
    ```bash
    flutter pub get
    ```

3. Run the app:
    ```bash
    flutter run
    ```

## Dependencies

This app uses the following packages:

- **[flutter_bloc](https://pub.dev/packages/flutter_bloc)**: A predictable state management library that helps implement the Cubit pattern.
- **flutter**: The core framework for building natively compiled applications for mobile, web, and desktop.

To add these dependencies, ensure you have the following in your `pubspec.yaml`:

```yaml
dependencies:
   flutter:
      sdk: flutter
   flutter_bloc: ^8.0.0
```

## Code Overview

Here’s a quick breakdown of the main components:

1. Counter Event:

```dart
abstract class CounterEvent {}

class CounterIncremented extends CounterEvent {}
```
An event that signals the Bloc to increment the counter.

2. Counter Bloc:

```dart
class CounterBloc extends Bloc<CounterEvent, int> {
   CounterBloc() : super(0) {
      on<CounterIncremented>((event, emit) {
         emit(state + 1);
      });
   }
}
```
The CounterBloc listens for CounterIncremented events and updates the state.

3. UI Updates:

```dart
onPressed: () => context.read<CounterBloc>().add(CounterIncremented()),
```
This adds an event to the CounterBloc to trigger the state change.

4. BlocBuilder update

```dart
BlocBuilder<CounterBloc, int>(
  builder: (context, count) {
    return Text('$count');
  },
  )
```
BlocBuilder listens to state changes and updates the UI.

5. Transitioned from CounterCubit to CounterBloc🎉

```dart
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterBloc(),  //todo: Step 5: Transitioned from CounterCubit to CounterBloc
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}
```
Now, CounterBloc is created and provided to the widget tree, just like we did earlier with Cubit.

## License
This project is licensed under the MIT License. Feel free to use, modify, and distribute as needed.

For more details, check out the LICENSE file.

## Contribution Guidelines
Contributions are always welcome! If you'd like to contribute, feel free to submit a pull request or open an issue.

## Contact
- Email: [tech.ramakanttiwari@gmail.com](mailto:tech.ramakanttiwari@gmail.com)
- Medium: [@tech.ramakant](https://medium.com/@tech.ramakant)
- LinkedIn: [@tech-ramakant](https://www.linkedin.com/in/ramakant-tiwari-593479128)
- YouTube: [@Tech.Ramakant](https://www.youtube.com/@Tech.Ramakant)

Thank you for checking out the repository! 🎉
