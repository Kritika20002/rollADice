import 'package:flutter/material.dart';
import 'dart:math';

final randomizer =Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var number = 2;
  void rollDice() {
    setState((){
    number = randomizer.nextInt(6) + 1;
  });
  }

  @override
  Widget build(context) {
    return Column(
        mainAxisSize:MainAxisSize.min,
        children:[Image.asset(
            'assets/images/dice-$number.png' ,width:200
        ),   const SizedBox( height :20),
          ElevatedButton(onPressed: rollDice,style:ElevatedButton.styleFrom(
            // padding:const EdgeInsets.only(top: 30,),
              foregroundColor:Colors.yellow, textStyle:const TextStyle(fontSize: 30)), child: const Text("Roll the Dice"))]);

  }
}