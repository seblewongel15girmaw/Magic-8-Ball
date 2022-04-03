import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(const MagicDice());
}

class MagicDice extends StatelessWidget {
  const MagicDice({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Magic Dice",
      home: MagicDiceHome(),
    );
  }
}

class MagicDiceHome extends StatefulWidget {
  const MagicDiceHome({ Key? key }) : super(key: key);

  @override
  State<MagicDiceHome> createState() => _MagicDiceHomeState();
}

class _MagicDiceHomeState extends State<MagicDiceHome> {

  int image=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ask Me Anything"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Container(
        height: double.infinity,
        color: Colors.blue[200],

        child: TextButton(onPressed: (){
          setState(() {
            image=Random().nextInt(4)+1;
          });
        }, 
        child: Image.asset("../assets/ball$image.png",
        )),
      ),
    );
  }
}
