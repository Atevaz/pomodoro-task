Pomodoro Timer Application

Description

This is a simple yet functional Pomodoro Timer application built using Flutter. The application helps users follow the Pomodoro technique to boost productivity and maintain focus. It includes customizable work and break durations, session tracking, and an intuitive user interface.

Features

Core Functionality

Pomodoro Timer Logic:

25-minute focus/work session.

5-minute short break.

No automatic long break after 2 cycles; users must manually start a new session.

Customizable Durations:

Users can adjust the duration of focus and break sessions from the settings screen.

Session Restart Option:

Option to restart a new Pomodoro session after completing 2 cycles.

User Interface

Main Screen:

Countdown Timer: Displays the remaining time for the current session (focus or break).

Session Status Header: Indicates the type of the current session (e.g., "Focus Session" or "Short Break").

Settings Screen:

Input fields or sliders to customize focus and break durations.

Additional Details:

Clean and responsive design optimized for different screen sizes.

Visual distinction between work and break sessions (e.g., color changes).

Installation

Clone the repository:

git clone <repository_url>

Navigate to the project directory:

cd pomodoro_timer

Get dependencies:

flutter pub get

Run the app:

flutter run

How to Use

Launch the app.

Adjust the session durations from the settings screen (if needed).

Start the Pomodoro timer from the main screen.

Follow the focus and break intervals as displayed.

Restart a new session manually after completing 2 cycles.

State Management

The app uses Cubit for state management to handle timer states and UI updates efficiently.

Development Notes

Dynamic Transitions:

Automatic transitions between focus and break sessions upon timer completion.

Input Validation:

Validation implemented to ensure that customizable durations are within acceptable ranges.

Deliverables

Fully functional Pomodoro Timer application with the described features.

Clean, modular code with proper comments.

This README file explaining how to run and test the application.

License

This project is licensed under the MIT License. See the LICENSE file for more details.

Contact

For questions or support, please contact [Amr/amrramadan0106532@gmail.com].

