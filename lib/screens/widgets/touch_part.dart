import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../views/main_view.dart';

class TouchPart extends StatelessWidget {
  const TouchPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: FractionallySizedBox(
        heightFactor: 1,
        widthFactor: 0.25,
        child: GestureDetector(
          onTap: () => context.read<MainView>().tap(),
          child: Container(
            color: Colors.transparent,
          ),
        ),
      ),
    );
  }
}
