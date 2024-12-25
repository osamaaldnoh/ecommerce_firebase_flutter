import 'package:ecommerce_firebase_flutter/widgets/widgetbutton.dart';
import 'package:flutter/material.dart';

import '../widgets/backgroundimage.dart';
import '../widgets/widget_textformfield.dart';

class RegisterScreen extends StatelessWidget {
  static const routName = 'RegisterScreen';
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Backgroundimages(),
      Scaffold(
        backgroundColor: Colors.transparent,
        body: Form(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(height: 172,),

                Padding(
                  padding: const EdgeInsets.only(
                    left: 40,
                    right: 40,
                  ),
                  child: Image.asset('images/applogo.png'),
                ),
                SizedBox(
                  height: 8,
                ),
                TextFormField(
                  decoration: inputDecoration('Name', context),
                  cursorColor: Theme.of(context).primaryColor,
                  cursorWidth: 3,
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                  keyboardType: TextInputType.name,
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: inputDecoration('Phone', context),
                  cursorColor: Theme.of(context).primaryColor,
                  cursorWidth: 3,
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                  keyboardType: TextInputType.phone,
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: inputDecoration('Password', context),
                  cursorColor: Theme.of(context).primaryColor,
                  cursorWidth: 3,
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  obscuringCharacter: '*',
                ),
                SizedBox(height: 10,),
                OutlinedButton(onPressed: () {}
                    , child: textChild('Create Account'),
                  style: outlinedButtonStyleLogin(context),
                ),
              ],
            ),
          ),
        ),
      ),
    ]);
  }
}
