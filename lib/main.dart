import 'package:flutter/material.dart';
import 'package:views_movil/routes/app_routes.dart';
import 'package:views_movil/screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Componentes app',
      // home: HomePage()
      //ruta principal
      initialRoute: "home",
      //cambios
      routes: AppRoutes.getAppRoutes(),
      //404 pagina
      onGenerateRoute: AppRoutes.onGenerateRoute,
    );
  }
}
