import 'package:fl_components/screens/list_view_1_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text(
              'HomeScreen',
              style: TextStyle(color: Colors.white),
            ),
            elevation: 0,
            centerTitle: true,
            backgroundColor: Colors.indigo),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  leading: const Icon(Icons.access_time_outlined),
                  title: const Text('Nombre de la Rutas'),
                  onTap: () {
                    //final route = MaterialPageRoute(
                    //    builder: (context) => const ListView1Screen());
                    Navigator.pushNamed(context, 'listView1');
                  },
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: 100));
  }
}
