import 'package:flutter/material.dart';
import 'package:jap_reading/views/main_view.dart';
import 'package:provider/provider.dart';

class SliderCof extends StatelessWidget {
  const SliderCof({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('あ', style: Theme.of(context).textTheme.headline4),
        RotatedBox(
            quarterTurns: 1,
            child: SizedBox(
              width: MediaQuery.of(context).size.height * 0.6,
              child: Slider(
                divisions: 4,
                max: 1,
                min: 0,
                value: context.watch<MainView>().hiraganaToKatakanaCof,
                onChanged: ((value) {
                  context.read<MainView>().setNewCof(value);
                }),
              ),
            )),
        Text('ア', style: Theme.of(context).textTheme.headline4)
      ],
    );
  }
}
