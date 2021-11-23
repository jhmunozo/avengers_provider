//imports de paquetes
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// imports de clases
import 'package:my_app/domain/avengers.dart';
import 'package:my_app/ui/pages/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return ChangeNotifierProvider(
        create: (context) => AvengersInfo(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Material App',
          initialRoute: '/home',
          routes: {
            '/home': (context) => HomePage()
          },
        ),
    );
  }
}