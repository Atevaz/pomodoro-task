# Pomodoro Timer Application

## Description

This is a simple yet functional Pomodoro Timer application built using Flutter. The application helps users follow the Pomodoro technique to boost productivity and maintain focus. It includes customizable work and break durations, session tracking, and an intuitive user interface.

## Features

## Core Functionality

1. Pomodoro Timer Logic:

   - 25-minute focus/work session.

   - 5-minute short break.

   - No automatic long break after 2 cycles; users must manually start a new session.

2. Customizable Durations:

   - Users can adjust the duration of focus and break sessions from the settings screen.

3. Session Restart Option:

- Option to restart a new Pomodoro session after completing 2 cycles.

## User Interface

1. Main Screen:

   - Countdown Timer: Displays the remaining time for the current session (focus or break).

   - Session Status Header: Indicates the type of the current session (e.g., "Focus Session" or "Short Break").

2. Settings Screen:

   - Input fields or sliders to customize focus and break durations.

3. Additional Details:

   - Clean and responsive design optimized for different screen sizes.

   - Visual distinction between work and break sessions (e.g., color changes).

## Table of contents
- ### [main packages used =>](#main-packages-used)
- ### [Folder structure =>](#folder-structure)
- ### [Screenshots =>](#screenshots)
- ### [Demo video =>](#demo-video)

## Main packages used
- [dio](https://pub.dev/packages/dio) to make integration with API
- [flutter_bloc](https://pub.dev/packages/flutter_bloc) as state management
- [shared_preferences](https://pub.dev/packages/shared_preferences) to handle caching data
- [flutter_screenutil](https://pub.dev/packages/flutter_screenutil) to make the application responsive
- [google_maps_flutter](https://pub.dev/packages/google_maps_flutter) to use Google map
- [internet_connection_checker](https://pub.dev/packages/internet_connection_checker) to handle internet connection
- [get_it](https://pub.dev/packages/get_it) to make dependency injection
- [location](https://pub.dev/packages/location) to get user's location
- [image_picker](https://pub.dev/packages/image_picker) to pick image from mobile storage
- [easy_localization](https://pub.dev/packages/easy_localization) to handle localization

## Folder structure
We have applied clean archeticture concept and here is the basic folder structure:

core folder structure that flutter provides:

```
hotel-booking
├── android
├── assets
├── build
├── ios
├── lib
└── test
```

Here is the folder structure we have been using in this project:
```
lib
├── business_logic
├── core
├── data
├── presentation
└── main.dart
```

### business_logic
This folder containes the business logic of the application specificly state management.

```
business_logic
├── booking_cubit
├── global_cubit
├── hotel_cubit
├── user_cubit
├── bloc_observer.dart
└── business_logic.dart
```

### core
This folder contains all services and tools related to the application
```
core
├── constant               
├── di                      
├── dio_service             
├── exceptions             
├── network_service         
├── router                  
├── shared_preferences      
├── styles                  
└── utils                   
```

### data
This folder contains all data and operations done to that data
```
data
├── local
├── model
├── remote
└── repository
```

### presentation
This folder containes everything related to the screen of the application.
```
presentation
├── screens
├── view
└── widget
```