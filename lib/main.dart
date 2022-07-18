import 'package:crypto/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var textSize = Theme.of(context).textTheme;
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        textTheme: textSize.copyWith(
          headline4: textSize.headline4!.copyWith(
            color: Colors.white,
          ),
          headline5: textSize.headline4!.copyWith(
            color: Colors.white,
          ),
          headline6: textSize.headline4!.copyWith(
            color: Colors.white,
          ),
          subtitle1: textSize.headline4!.copyWith(
            color: Colors.white,
          ),
          subtitle2: textSize.headline4!.copyWith(
            color: Colors.white,
          ),
          overline: textSize.overline!.copyWith(
            color: Colors.grey,
          ),
        ),
      ),
      themeMode: ThemeMode.dark,
      home: HomeScreen(),
    );
  }
}
