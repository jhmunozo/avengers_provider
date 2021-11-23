import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/domain/avengers.dart';
import 'package:my_app/ui/widgets/floating_buttons.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final avengersInfo = Provider.of<AvengersInfo>(context);
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Avenger: ${avengersInfo.avenger}'),
        leading: Center(
          child: CircleAvatar(
            minRadius: 18.0,
            maxRadius: 18.0,
            backgroundImage: NetworkImage(avengersInfo.avengerPic),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Enemy: ', style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontSize: 20.0),),
            Text(avengersInfo.enemy, 
            style: GoogleFonts.lato(
              fontSize: 15.0,
              ),),
            const SizedBox(
              height: 20.0,
            ),
            Image.network(avengersInfo.enemyPic, width: 300.0,),
          ],
        )
        ),
      floatingActionButton: AppFloatingButtons(),
    );
  }
}