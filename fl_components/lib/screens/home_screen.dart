import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes en Flutter'),
        elevation: 0,
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => const ListTile(
                leading: Icon(Icons.access_time_outlined),
                title: Text('Nombre de rute'),
              ),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: 100),
    );
  }
}
