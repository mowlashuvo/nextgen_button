import 'package:flutter/material.dart';
import 'package:nextgen_button/nextgen_button.dart';

void main() {
  runApp(const NextGenButtonExampleApp());
}

class NextGenButtonExampleApp extends StatelessWidget {
  const NextGenButtonExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NextGenButton Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const NextGenButtonExampleScreen(),
    );
  }
}

class NextGenButtonExampleScreen extends StatelessWidget {
  const NextGenButtonExampleScreen({super.key});

  void _handleButtonTap() {
    // Define the action to be performed on button tap
    print('NextGenButton tapped!');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NextGenButton Example'),
      ),
      body: Center(
        child: NextGenButton(
          onTap: _handleButtonTap,
          titleText: const Text('Click Me'),
          color: Colors.blue,
          borderColor: Colors.blueAccent,
          border: 2.0,
          radius: 8.0,
          height: 50.0,
          width: 200.0,
          elevation: 5.0,
          rightIcon: const Icon(Icons.arrow_forward, color: Colors.white),
          isLoading: false,
          leftIcon: const Icon(Icons.touch_app, color: Colors.white),
        ),
      ),
    );
  }
}
