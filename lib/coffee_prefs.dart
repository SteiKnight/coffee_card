import 'package:coffee_card/styled_body_text.dart';
import 'package:flutter/material.dart';

class CoffeePrefs extends StatefulWidget {
  const CoffeePrefs({super.key});

  @override
  State<CoffeePrefs> createState() => _CoffeePrefsState();
}

class _CoffeePrefsState extends State<CoffeePrefs> {
  int strength = 1;
  int sugars = 1;

  void incStrength() {
    setState(() {
      if (strength < 5) {
        strength += 1;
      } else {
        strength = 1;
      }
    });
  }

  void incSugar() {
    setState(() {
      sugars = sugars < 5 ? sugars + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: [
          const StyledBodyText('Strength: '),
          for (int i = 0; i < strength; i++)
            Image.asset('assets/img/coffee_bean.png', width: 25),
          const Expanded(child: SizedBox()),
          FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: Colors.brown,
                foregroundColor: Colors.white,
              ),
              onPressed: incStrength,
              child: const Text('+')),
        ]),
        Row(children: [
          const StyledBodyText('Sugars: '),
          if (sugars == 0) const StyledBodyText('No Sugar'),
          for (int i = 0; i < sugars; i++)
            Image.asset('assets/img/sugar_cube.png', width: 25),
          const Expanded(child: SizedBox()),
          FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: Colors.brown,
                foregroundColor: Colors.white,
              ),
              onPressed: incSugar,
              child: const Text('+')),
        ]),
      ],
    );
  }
}
