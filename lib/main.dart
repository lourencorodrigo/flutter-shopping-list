import 'package:flutter/material.dart';

import 'views/home_page.dart';
import 'views/create_page.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName: (context) => HomePage(),
        CreatePage.routeName: (context) => CreatePage(),
      },
    );
  }
}
