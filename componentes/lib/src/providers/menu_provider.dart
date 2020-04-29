import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

class _MenuProvider {

  List<dynamic> opciones = [];

  //No se puede hacer constructor async
  _MenuProvider(){
    //cargarData();
  }

  // cargarData() {

  //   rootBundle.loadString('data/menu_opts.json')
  //     .then((data) {
  //       Map dataMap = json.decode(data);
  //       print(dataMap['rutas']);
  //       opciones = dataMap['rutas'];
  //     });

  // }

  Future<List<dynamic>> cargarData() async{

    final resp = await rootBundle.loadString('data/menu_opts.json');

    Map dataMap = json.decode(resp);
    //print( dataMap['rutas'] );
    opciones = dataMap['rutas'];

    return opciones;

  }

}


final menuProvider = new _MenuProvider();