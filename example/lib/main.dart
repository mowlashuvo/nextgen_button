import 'package:flutter/material.dart';
import 'package:nextgen_button/nextgen_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blue,
      ),
      home: const NextGenButtonExample(),
    );
  }
}

class NextGenButtonExample extends StatefulWidget {
  const NextGenButtonExample({
    super.key,
  });

  @override
  State<NextGenButtonExample> createState() => _NextGenButtonExampleState();
}

class _NextGenButtonExampleState extends State<NextGenButtonExample> {
  bool isLoading = false;

  Future<void> _submit() async {
    setState(() {
      isLoading = true;
    });

    await Future.delayed(
      const Duration(seconds: 2),
    );

    setState(() {
      isLoading = false;
    });

    debugPrint(
      "Button clicked",
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "NextGen Button",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /// Basic Button
            NextGenButton(
              title: "Continue",
              height: 50,
              width: double.infinity,
              radius: 14,
              color: Colors.blue,
              leftIcon: const Icon(
                Icons.arrow_forward,
                color: Colors.white,
              ),
              onTap: () {
                debugPrint(
                  "Continue clicked",
                );
              },
            ),

            const SizedBox(
              height: 20,
            ),

            /// Gradient Button
            NextGenButton(
              title: "Get Started",
              height: 52,
              width: double.infinity,
              radius: 16,
              gradient: const LinearGradient(
                colors: [
                  Colors.blue,
                  Colors.purple,
                ],
              ),
              leftIcon: const Icon(
                Icons.rocket_launch,
                color: Colors.white,
              ),
              rightIcon: const Icon(
                Icons.arrow_forward_ios,
                size: 18,
                color: Colors.white,
              ),
              onTap: () {},
            ),

            const SizedBox(
              height: 20,
            ),

            /// Loading Button
            NextGenButton(
              title: "Submit",
              height: 52,
              width: double.infinity,
              radius: 16,
              color: Colors.green,
              isLoading: isLoading,
              onTap: _submit,
            ),

            const SizedBox(
              height: 20,
            ),

            /// Disabled Button
            NextGenButton(
              title: "Disabled",
              height: 52,
              width: double.infinity,
              radius: 16,
              color: Colors.grey,
              enabled: false,
              onTap: () {},
            ),

            const SizedBox(
              height: 20,
            ),

            /// Backward compatible API
            NextGenButton(
              titleText: const Text(
                "Old API Support",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              height: 50,
              width: double.infinity,
              radius: 14,
              color: Colors.black,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
