import 'package:componentes/src/pages/alert_page.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:componentes/src/routes/routes.dart';
import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes APP',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: [
        const Locale('en', 'US'), // English
        const Locale('es', 'ES')
      ],
      //home: HomePage(),
      initialRoute: '/',
      routes: getApplicationRoutes(),
      //Esta propiedad sirve para redirigir a otra ruta en caso de que no exista alguna
      onGenerateRoute: ( RouteSettings settings ){

        print("Ruta llamada: ${ settings.name }");

        return MaterialPageRoute(
          builder: ( BuildContext context) => AlertPage()
        );

      },
    );
  }
}