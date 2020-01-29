

import 'Burc_Liste.dart';
import 'package:flutter/material.dart';

import 'Burc_detay.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Burçlar",
      debugShowCheckedModeBanner: false,
      initialRoute: "/burcListesi",
      routes: {
        "/burcListesi": (context) => BurcListesi(),

      },
      onGenerateRoute: (RouteSettings setting){
        List<String>pathElemanlari = setting.name.split("/");
        if(pathElemanlari[1]=="burcDetay"){
          return MaterialPageRoute(builder : (context) => BurcDetay(int.parse(pathElemanlari[2])));
        }
        return null;
      },



      theme: ThemeData(
        primarySwatch: Colors.red,
        brightness: Brightness.dark,
      ),
      home: BurcListesi(
        
      ),
    );
  }
}
