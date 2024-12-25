import 'package:ecommerce_firebase_flutter/widgets/widgetbutton.dart';
import 'package:flutter/material.dart';

import '../widgets/widget_textformfield.dart';

class LoginScreen extends StatelessWidget {
  static const routName = 'LoginScreen';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/login.png'),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Form(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 160,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 40,
                      right: 40,
                    ),
                    child: Image.asset('images/applogo.png'),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Forget Password',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Theme.of(context).primaryColor)),
                      Row(
                        children: [
                          Text('Remember me',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Theme.of(context).primaryColor)),
                          Checkbox(
                            value: false,
                            onChanged: (_) {},
                            side: BorderSide(
                              color: Theme.of(context).primaryColor,
                              width: 2,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    child: textChild('Login'),
                    style: outlinedButtonStyleLogin(context),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
