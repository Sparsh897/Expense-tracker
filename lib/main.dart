import 'package:flutter/material.dart';
import 'package:expense_tracker/widgets/expenses.dart';


var kDrakColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color.fromARGB(255, 5, 99, 125),
);
var kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 96, 59, 181),
);
void main() {
  /////////########**** //to stop the orientin in landscape*****#######/////////
  // WidgetsFlutterBinding.ensureInitialized();
  //SystemChrome.setPreferredOrientations([
  //DeviceOrientation.portraitUp
  //]).then((fn)
  //{
//  });
  runApp(MaterialApp(
    darkTheme: ThemeData.dark().copyWith(
      useMaterial3: true,
      colorScheme: kDrakColorScheme,
      cardTheme: const CardTheme().copyWith(
        color: kDrakColorScheme.secondaryContainer,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: kDrakColorScheme.primaryContainer,
          foregroundColor: kDrakColorScheme.onPrimaryContainer,
        ),
      ),
    ),
    theme: ThemeData().copyWith(
        useMaterial3: true,
        colorScheme: kColorScheme,
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: kColorScheme.onPrimaryContainer,
          foregroundColor: kColorScheme.primaryContainer,
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
                  fontWeight: FontWeight.bold,
                  color: kColorScheme.onSecondaryContainer,
                  fontSize: 16),
            )),
    //themeMode: ThemeMode.system,// default
    home: const Expenses(),
  ));
}
