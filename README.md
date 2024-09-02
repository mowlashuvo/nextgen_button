# NextGenButton Widget

`NextGenButton` is a customizable button widget for Flutter that allows you to create stylish and functional buttons with various options for design and behavior. This widget supports dynamic sizing, loading states, and customizable borders, colors, and icons.

## Features

- **Customizable Background Color**: Set the button's background color with the `color` property.
- **Adjustable Border**: Define border color and width using `borderColor` and `border` properties.
- **Rounded Corners**: Customize the border radius to achieve rounded corners with the `radius` property.
- **Elevation**: Apply elevation to give the button a raised effect with the `elevation` property.
- **Flexible Sizing**: Specify exact dimensions for the button using `height` and `width`.
- **Loading State**: Show a loading spinner when `isLoading` is `true`, disabling interaction during loading.
- **Icon Support**: Add icons to the left and/or right of the button text using `leftIcon` and `rightIcon`.
- **Custom Action**: Define what happens on button tap with the `onTap` callback.

## Installation

To use the `NextGenButton` widget in your Flutter project, include the file containing the `NextGenButton` class in your project.

## Usage

Here's a basic example of how to use the `NextGenButton` widget:

```dart
import 'package:flutter/material.dart';
import 'package:nextgen_button/nextgen_button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('NextGenButton Example')),
        body: Center(
          child: NextGenButton(
            onTap: () {
              // Action to perform on button tap
              print('NextGenButton tapped!');
            },
            titleText: Text(
              'Click Me',
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.blue,
            borderColor: Colors.blueAccent,
            border: 2,
            radius: 12,
            elevation: 5,
            height: 50,
            width: 200,
            leftIcon: Icon(
              Icons.add,
              color: Colors.white,
            ),
            rightIcon: Icon(
              Icons.arrow_forward,
              color: Colors.white,
            ),
            isLoading: false, // Set to true to show loading indicator
          ),
        ),
      ),
    );
  }
}
