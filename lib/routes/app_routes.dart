import 'package:flutter/material.dart';
import 'package:views_movil/models/menu_option.dart';
import 'package:views_movil/screens/screens.dart';

class AppRoutes {
  static const initialRoute = "Home";

  static final menuOptions = <MenuOptions>[
    // TODO: borrar home
    MenuOptions(
        route: 'Home',
        view: false,
        icon: Icons.home,
        name: 'home',
        desc: 'Home view',
        screen: HomeScreen()),
    MenuOptions(
        route: 'IMCAP',
        icon: Icons.monitor_weight_rounded,
        view: true,
        name: 'IMCAP',
        desc: 'Vida Saludable',
        screen: ViewOneScreen()),
    MenuOptions(
        route: 'APPSUELDO',
        view: true,
        icon: Icons.money,
        name: 'APPSUELDO',
        desc: 'Calculo de sueldo',
        screen: ViewSecondScreen()),
  ];

//rutas
  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (var element in menuOptions) {
      appRoutes.addAll({element.route: (context) => element.screen});
    }

    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (context) => const HomeScreen(),
  //   'listview1': (context) => const ListView1Screen(),
  //   'listview2': (context) => const ListView2Screen(),
  //   'card': (context) => const CardScreen(),
  //   'alert': (context) => const AlertScreen(),
  // };

//ruta default
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => HomeScreen(),
    );
  }
}
