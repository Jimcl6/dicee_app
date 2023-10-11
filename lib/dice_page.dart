import 'package:flutter/material.dart';

import 'dart:math';

// flutter packages
import 'package:google_fonts/google_fonts.dart';
// end flutter packages

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  var winnerText = 'Welcome to Dicee App!';
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color.fromRGBO(1, 4, 83, 1),
            Color.fromRGBO(9, 13, 126, 1),
          ],
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              winnerText,
              style: GoogleFonts.majorMonoDisplay(
                textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                Expanded(
                  child: Image.asset('images/dice-$leftDiceNumber.png'),
                ),
                Expanded(
                  child: Image.asset('images/dice-$rightDiceNumber.png'),
                ),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            Column(
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                        const EdgeInsets.symmetric(
                            vertical: 15.0, horizontal: 20.0)),
                    backgroundColor:
                        MaterialStatePropertyAll(Colors.yellow.shade700),
                  ),
                  onPressed: () {
                    setState(() {
                      leftDiceNumber = Random().nextInt(6) + 1;
                      rightDiceNumber = Random().nextInt(6) + 1;

                      if (leftDiceNumber > rightDiceNumber) {
                        winnerText = 'Player 1 wins!!';
                      } else {
                        winnerText = 'Player 2 wins!!';
                      }
                      // print('New number is now $leftDiceNumber');
                    });
                  },
                  child: Text(
                    'Roll Dice'.toUpperCase(),
                    style: GoogleFonts.lato(
                        textStyle: const TextStyle(
                            color: Color.fromARGB(255, 68, 33, 2))),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                        const EdgeInsets.symmetric(
                            vertical: 15.0, horizontal: 35.0)),
                    backgroundColor:
                        MaterialStatePropertyAll(Colors.yellow.shade700),
                  ),
                  onPressed: () {
                    setState(() {
                      leftDiceNumber = 1;
                      rightDiceNumber = 1;

                      winnerText = "roll the dice".toUpperCase();
                    });
                  },
                  child: Text(
                    'Reset'.toUpperCase(),
                    style: GoogleFonts.lato(
                        textStyle: const TextStyle(
                            color: Color.fromARGB(255, 68, 33, 2))),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
