import 'package:flutter/material.dart';
import 'package:jap_reading/views/main_view.dart';
import 'package:provider/provider.dart';

class WordPart extends StatelessWidget {
  const WordPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(context.watch<MainView>().word.shown,
              style: Theme.of(context).textTheme.headline4),
          const SizedBox(width: 25),
          AnimatedOpacity(
              opacity: context.watch<MainView>().mode ? 1 : 0,
              curve: Curves.easeInOut,
              duration: const Duration(seconds: 1),
              child: Text(context.watch<MainView>().word.hiden,
                  style: Theme.of(context).textTheme.subtitle1))
        ],
      ),
    );
  }
}
