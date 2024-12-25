import 'package:flutter/material.dart';

class Backgroundimages extends StatelessWidget {
  const Backgroundimages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/register.png'),
          fit: BoxFit.fill,
        ),
      ),

    );
  }
}
