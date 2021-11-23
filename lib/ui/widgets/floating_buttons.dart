import 'package:flutter/material.dart';
import 'package:my_app/domain/avengers.dart';
import 'package:provider/provider.dart';

class AppFloatingButtons extends StatelessWidget {
  const AppFloatingButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final avengersInfo = Provider.of<AvengersInfo>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        FloatingActionButton.extended(
          icon: Icon(Icons.navigate_next),
          backgroundColor: Colors.orange,
          onPressed: () => avengersInfo.setAvenger(),
          label: Text('Next Avenger'),
        ),
        const SizedBox(
          height: 12.0,
        ),
        FloatingActionButton.extended(
          icon: Icon (Icons.person_add_disabled),
          backgroundColor: Colors.red,
          onPressed: () => avengersInfo.setEnemy(),
          label: Text('Enemy'),
        ),
      ],
    );
  }
}