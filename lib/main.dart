import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_drone/src/screens/control_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const DroneApp());
}

class DroneApp extends StatefulWidget {
  const DroneApp({Key? key}) : super(key: key);

  @override
  State<DroneApp> createState() => _DroneAppState();
}

class _DroneAppState extends State<DroneApp> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
        
    return const MaterialApp(
      home: ControlScreen(),
    );
  }
}
