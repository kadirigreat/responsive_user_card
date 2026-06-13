# Responsive User Card

A simple Flutter application that displays user information inside a reusable responsive card component.

## Features

* Displays a user's name, email address, and phone number.
* Receives user information from a `User` data object.
* Uses a reusable `UserCard` widget.
* Adjusts to the available screen width.
* Includes a widget test to confirm that the expected information is displayed.

## How to Run the Project Locally

### Requirements

Make sure Flutter is installed and configured correctly.

### Steps

Clone the repository:

```bash
git clone YOUR_GITHUB_REPOSITORY_LINK
```

Move into the project folder:

```bash
cd responsive_user_card
```

Install the required dependencies:

```bash
flutter pub get
```

Run the application in Chrome:

```bash
flutter run -d chrome
```

Run the automated test:

```bash
flutter test
```

## Implementation Decisions

The user information is stored in a `User` data object and passed into a reusable `UserCard` widget. This prevents the details from being permanently hardcoded inside the card design. The card uses the available screen width with spacing around its edges so that it remains readable on different screen sizes.

## Project Structure

```text
lib/
└── main.dart

test/
└── widget_test.dart
```

## Approach Brief

See [APPROACH_BRIEF.md](APPROACH_BRIEF.md).
