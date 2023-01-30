import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:jap_reading/data/themes/app_colors.dart';
import 'package:jap_reading/screens/widgets/touch_part.dart';
import 'package:jap_reading/screens/widgets/word_part.dart';
import 'package:jap_reading/views/main_view.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: const <Widget>[TouchPart(), WordPart()]),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniStartFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<MainView>().setThemeMode();
        },
        child: const Icon(
          Icons.theater_comedy,
          color: AppColors.darkPrimaryBackground,
        ),
      ),
    );
  }
}
