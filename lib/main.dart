import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jap_reading/screens/home_screen.dart';
import 'package:jap_reading/views/main_view.dart';
import 'package:provider/provider.dart';

import 'data/themes/app_themes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MainView(),
      child: Consumer<MainView>(builder: (context, value, child) {
        return MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: value.themeMode == ThemeMode.light
              ? Themes.primalTheme
              : Themes.darkTheme,
          home: const HomeScreen(),
        );
      }),
    );
  }
}
