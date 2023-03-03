import 'package:flutter/material.dart';

class ViewSecondScreen extends StatelessWidget {
  const ViewSecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text("App Sueldo"),
      ),
      body: const Center(
        child: Text('ViewSecondScreen'),
      ),
    );
  }
}
