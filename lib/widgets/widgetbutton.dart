
import 'package:flutter/material.dart';

Text textChild(String nameButton)
{
  return Text(
    '$nameButton',
    style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 20),
  );
}

ButtonStyle outlinedButtonStyleLogin(BuildContext context)
{
  return OutlinedButton.styleFrom(
      backgroundColor: Theme.of(context).primaryColor,
      fixedSize: Size.fromWidth(
        double.maxFinite,
      ),
      padding: EdgeInsets.only(
        top: 20,
        bottom: 20,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      foregroundColor: Colors.black12


  );
}

ButtonStyle outlinedButtonStyleJoin(BuildContext context)
{
  return OutlinedButton.styleFrom(
      fixedSize: Size.fromWidth(
        double.maxFinite,
      ),
      padding: EdgeInsets.only(
        top: 20,
        bottom: 20,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      side: BorderSide(
        color: Theme.of(context).primaryColorDark,
        width: 3.0,
      ),
      foregroundColor: Colors.black12
  );
}