import 'package:flutter/material.dart';
import 'package:mobile_forum_demo_shared/shared_flutter_page.dart';

void main() {
  const app = SharedFlutterModuleApp();
  runApp(app);
}

class SharedFlutterModuleApp extends StatelessWidget {
  const SharedFlutterModuleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      routes: {
        '/shared': (context) => const SharedFlutterPage(),
      },
      initialRoute: '/shared',
    );
  }
}
