
# Astronomy Picture of the Day (APOD) App

## Introduction

This is a Flutter application that displays images from NASA's "Astronomy Picture of the Day" (APOD) website. The app showcases the use of Flutter with Clean Architecture, state management with Cubit, dependency injection with GetIt, and offline support with Hive for caching.

## Features

- **Two Screens**: A list of images and a detail screen for each image.
- **Search Functionality**: Search for images by title or date.
- **Offline Support**: The app can function without an internet connection by using cached data.
- **Pull-to-Refresh**: Refresh the list of images by pulling down.
- **Error Handling**: Displays error messages when something goes wrong.

## Installation

1. **Clone the repository**:
   ```sh
   git clone https://github.com/matheusalves753/astro_snap.git
   cd apod-app
   ```

2. **Install dependencies**:
   ```sh
   flutter pub get
   ```

3. **Run the app**:
   ```sh
   flutter run
   ```

## Configuration

To use the NASA API, you need to get an API key from [NASA API](https://api.nasa.gov).

## Project Structure

The project follows the principles of Clean Architecture. Here is a brief overview of the project structure:

```
lib
└── src
    ├── data
    │   ├── datasources
    │   ├── models
    │   ├── repositories
    ├── domain
    │   ├── entities
    │   ├── repositories
    │   ├── usecases
    ├── infrastructure
    ├── presentation
```

## Dependencies

- **Flutter**: UI toolkit for building natively compiled applications for mobile, web, and desktop from a single codebase.
- **Cubit**: A lightweight state management solution.
- **GetIt**: A simple service locator for Dart and Flutter projects.
- **Hive**: A lightweight and blazing fast key-value database written in pure Dart.
- **Connectivity Plus**: A Flutter plugin for discovering the state of the network (WiFi & mobile/cellular) connectivity.

## Offline Support

The app uses Hive for caching data locally, allowing it to function without an internet connection. The connectivity status is checked using the `connectivity_plus` package. If there is no internet connection, the app retrieves data from the local cache.

## Pagination

**Note:** The pagination feature is not implemented due to limitations in the NASA API, which does not support pagination parameters.

## How to Run Tests

To run the tests for this project, use the following command:

```sh
flutter test
```

## Contact

For any inquiries or feedback, please contact [matheusalves753@gmail.com].
