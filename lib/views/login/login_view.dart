import 'package:flutter/material.dart';

import 'components/login_form.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                // image: DecorationImage(
                //   // image: AssetImage(Assets.images.background.path),
                //   // Replace with your background image asset
                //   fit: BoxFit.fill,
                // ),
              ),
            ),
            const SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: LoginForm(),
              )
            )
          ],
        )
      ),
    );
  }
}
