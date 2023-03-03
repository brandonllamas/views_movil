import 'package:flutter/material.dart';

class ViewOneScreen extends StatelessWidget {
  const ViewOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text("IMCAP"),
      ),
      body: const Center(
        child: Text('ViewOneScreen'),
      ),
    );
  }
}
