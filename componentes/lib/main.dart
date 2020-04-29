import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/routes/routes.dart';
import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes APP',
      debugShowCheckedModeBanner: false,
      //home: HomePage(),
      initialRoute: '/',
      routes: getApplicationRoutes(),
      //Esta propiedad sirve para redirigir a otr ruta en caso de que no exista alguna
      onGenerateRoute: ( RouteSettings settings ){

        print("Ruta llamada: ${ settings.name }");

        return MaterialPageRoute(
          builder: ( BuildContext context) => AlertPage()
        );

      },
    );
  }
}