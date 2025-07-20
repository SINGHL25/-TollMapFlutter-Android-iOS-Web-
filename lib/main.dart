## 📄 lib/main.dart
```dart
import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const TollMapApp());
}

class TollMapApp extends StatelessWidget {
  const TollMapApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Toll Map App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomeScreen(),
    );
  }
}
```
