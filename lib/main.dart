import 'package:deposito_nelinho/main_screen.dart';
import 'package:deposito_nelinho/style/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'controllers/main_screen_controller.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => MainScreenController(),
        )
      ],
      child: const App(),
    ),
  );
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Depósito Nelinho",
      home: const MainScreen(),
      theme: appTheme(),
    );
  }
}
