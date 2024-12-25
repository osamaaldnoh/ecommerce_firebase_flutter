
import 'package:flutter/material.dart';
  InputDecoration inputDecoration(String hinttext,BuildContext context) {
    return InputDecoration(
      hintText: '$hinttext',
      hintStyle: TextStyle(
          fontSize: 24,
          color: Theme.of(context).primaryColor,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(13),
        borderSide: BorderSide(
          color: Theme
              .of(context)
              .primaryColor,
          width: 3,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(13),
        borderSide: BorderSide(
          color: Theme
              .of(context)
              .primaryColor,
          width: 3,
        ),
      ),

    );
  }
