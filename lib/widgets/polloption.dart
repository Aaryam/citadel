import 'package:citadel/misc/utilities.dart';
import 'package:flutter/material.dart';

class PollOption extends StatelessWidget {
  final String optionText;

  const PollOption({super.key, required this.optionText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
      child: InkWell(
        onTap: () {

        },
        splashColor: Colors.green,
        child: Container(
        decoration: BoxDecoration(
          color: CitadelColors.darkBlue,
          borderRadius: BorderRadius.circular(5.0),
          boxShadow: const [
                BoxShadow(
                  color: Color.fromARGB(72, 0, 0, 0),
                  spreadRadius: 4,
                  blurRadius: 10,
                  offset: Offset(0, 3),
                )
              ]
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 8.0),
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.radio_button_checked,
                    color: Colors.white,
                    size: 34.0,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Text(
                  optionText,
                  style: const TextStyle(
                    fontSize: 18,
                    fontFamily: 'Quicksand',
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      ),
      );
  }
}
