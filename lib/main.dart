import 'package:expense_tracker/widgets/expenses.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';

var kColorScheme =
    ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 96, 59, 181));

void main() {
  // WidgetsFlutterBinding.ensureInitialized();

  //SystemChrome.setPreferredOrientations([
  //DeviceOrientation.portraitUp,
  //]).then((fn) {
  runApp(
    const MyApp(),
  );
  //});
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData().copyWith(
          colorScheme: kColorScheme,
          appBarTheme: const AppBarTheme().copyWith(
            backgroundColor: kColorScheme.primary,
            foregroundColor: kColorScheme.onPrimary,
          ),
          cardTheme: const CardTheme().copyWith(
            color: kColorScheme.secondaryContainer,
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: kColorScheme.primaryContainer,
            ),
          ),
          textTheme: ThemeData().textTheme.copyWith(
                  titleLarge: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: kColorScheme.onSecondaryContainer,
              ))),
      home: const Expenses(),
    );
  }
}
