import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jap_reading/screens/home_screen.dart';
import 'package:jap_reading/views/main_view.dart';
import 'package:provider/provider.dart';

import 'data/themes/app_themes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MainView(),
      child: MaterialApp(
        
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: Themes.primalTheme,
        darkTheme: Themes.darkTheme,
        themeMode: ThemeMode.system,
        home: const HomeScreen(),
      ),
    );
  }
}
