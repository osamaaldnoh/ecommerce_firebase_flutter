import 'package:ecommerce_firebase_flutter/main.dart';
import 'package:ecommerce_firebase_flutter/screens/login_screen.dart';
import 'package:ecommerce_firebase_flutter/screens/registerscreen.dart';
import 'package:ecommerce_firebase_flutter/widgets/widgetbutton.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/welcome.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Spacer(flex: 1,),
            Padding(
              padding: const EdgeInsets.only(
                left: 40,
                right: 40,
              ),
              child: Image.asset(
                'images/applogo.png',
              ),
            ),
            Text(
              'Find, Discover,\nChoose and Buy\nanything online.',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),

            Spacer(flex: 5,),

            Padding(padding: EdgeInsets.all(10),
            child: Column(
              children: [
                OutlinedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, RegisterScreen.routName);
                  },
                  child: textChild('Join Now'),
                  style: outlinedButtonStyleJoin(context),
                ),

                SizedBox(
                  height: 8,
                ),
                OutlinedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, LoginScreen.routName);
                  },
                  child: textChild('Already have an Account? Login'),
                  style: outlinedButtonStyleLogin(context),
                  ),
              ],
            ),
            ),

            Text('Wants to become a Seller?',
            textAlign: TextAlign.right,
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 23,
              fontWeight: FontWeight.bold,
            ),
            ),
            SizedBox(height: 5,),
          ],
        ),
      ),
    );
  }
}
