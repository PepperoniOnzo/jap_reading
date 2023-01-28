import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
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
        children: <Text>[
          Text(context.watch<MainView>().word.shown,
              style: Theme.of(context).textTheme.headline4),
          Text(context.watch<MainView>().word.hiden,
              style: Theme.of(context).textTheme.subtitle1),
        ],
      ),
    );
  }
}
