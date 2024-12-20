# Pomodoro Timer Application

## Description

This is a simple yet functional Pomodoro Timer application built using Flutter. The application
helps users follow the Pomodoro technique to boost productivity and maintain focus. It includes
customizable work and break durations, session tracking, and an intuitive user interface.

## Features

## Core Functionality

### 1. Pomodoro Timer Logic:

- 25-minute focus/work session.

- 5-minute short break.

- No automatic long break after 2 cycles; users must manually start a new session.

### 2. Customizable Durations:

- Users can adjust the duration of focus and break sessions from the settings screen.

### 3. Session Restart Option:

- Option to restart a new Pomodoro session after completing 2 cycles.

## User Interface

### 1. Main Screen:

- Countdown Timer: Displays the remaining time for the current session (focus or break).

- Session Status Header: Indicates the type of the current session (e.g., "Focus Session" or "Short
  Break").

### 2. Settings Screen:

-  fields to customize focus and break durations.

### 3. Additional Details:

- Clean and responsive design optimized for different screen sizes.

- Visual distinction between work and break sessions (e.g., label changes).

## Main packages used

- [flutter_bloc](https://pub.dev/packages/flutter_bloc) as state management
- [shared_preferences](https://pub.dev/packages/shared_preferences) to handle caching data
- [flutter_screenutil](https://pub.dev/packages/flutter_screenutil) to make the application
  responsive

## Folder structure

###### Here is the folder structure we have been using in this project:

```
lib
├── cubit
├── presentation
├── utils
└── main.dart
```

### cubit

###### This folder containes the business logic of the application specificly state management.

```
cubit
├── timer_cubit
└── bloc_observer.dart
```

### presentation

###### This folder containes everything related to the screens of the application.

```
presentation
├── screens
├── view
└── widget
```

### utils

###### This folder contains everything related to Application.

```
utils
├── app_color.dart
├── cach_helper.dart
└── constants.dart
```

## Installation

##### 1. Clone the repository:

```
git clone https://github.com/Atevaz/pomodoro-task.git
```

##### 2. Navigate to the project directory:

```
cd pomodoro_timer
```

##### 3. Get dependencies:

```
flutter pub get
```

##### 4. Run the app:

```
flutter run
```

## How to Use

###### 1. Launch the app.

###### 2. Adjust the session durations from the settings screen (if needed).

###### 3. Start the Pomodoro timer from the main screen.

###### 4. Follow the focus and break intervals as displayed.

###### 5. Restart a new session manually after completing 2 cycles

## State Management

###### The app uses Cubit for state management to handle timer states and UI updates efficiently.

## Deliverables

###### 1. Fully functional Pomodoro Timer application with the described features.

###### 2. Clean, modular code with proper comments.

###### 3. This README file explaining how to run and test the application.

## License

###### This project is licensed under the MIT License. See the LICENSE file for more details.

## Contact

###### For questions or support, please contact [Amr Ramadan / amrramadan0106532@gmail.com].