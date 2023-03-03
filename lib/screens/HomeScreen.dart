import 'package:flutter/material.dart';
import 'package:views_movil/routes/app_routes.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Center(child: Text("Listado de apps en clase")),
      ),
      body: ListView.separated(
        itemCount: AppRoutes.menuOptions.length,
        separatorBuilder: (context, index) => const Divider(),
        itemBuilder: (context, index) {
          if (AppRoutes.menuOptions[index].view) {
            return ListTile(
              title: Text(
                AppRoutes.menuOptions[index].name,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(AppRoutes.menuOptions[index].desc),
              leading: Icon(
                AppRoutes.menuOptions[index].icon,
                color: Colors.indigo,
              ),
              trailing: const Icon(
                Icons.navigate_next,
                color: Colors.indigo,
              ),
              onTap: () {
                Navigator.pushNamed(
                    context, AppRoutes.menuOptions[index].route);
              },
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
