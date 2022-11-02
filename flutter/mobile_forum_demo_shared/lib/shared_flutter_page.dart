import 'package:flutter/material.dart';

class SharedFlutterPage extends StatefulWidget {
  const SharedFlutterPage({super.key});

  @override
  State<SharedFlutterPage> createState() => _SharedFlutterPageState();
}

class _SharedFlutterPageState extends State<SharedFlutterPage> {
  void _showFlutterAlert({required BuildContext context}) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Flutter alert'),
        content: const Text(
          'Shown from Flutter screen embedded inside a native app',
        ),
        actions: [
          TextButton(
            child: const Text('OK'),
            onPressed: () => Navigator.pop(context, 'Cancel'),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Shared page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Here we are in Flutter!',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const SizedBox(width: 20),
                  const Icon(Icons.flutter_dash)
                ],
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              child: const Text('Show alert'),
              onPressed: () => _showFlutterAlert(context: context),
            )
          ],
        ),
      ),
    );
  }
}
