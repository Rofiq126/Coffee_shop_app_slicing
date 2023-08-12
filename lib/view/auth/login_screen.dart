import 'package:barbershop_app/common/style/style.dart';
import 'package:barbershop_app/common/widget/custom_button.dart';
import 'package:barbershop_app/common/widget/custom_textField.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Styles.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: size.height * 0.1,
            ),
            Image(
                width: size.width * 0.9,
                height: size.height * 0.3,
                image: const AssetImage('asset/icon/main_icon.png')),
            CustomTextField(controller: email, obsecure: false, label: 'Email'),
            const SizedBox(
              height: 16,
            ),
            CustomTextField(
                controller: password, obsecure: true, label: 'Password'),
            const SizedBox(
              height: 10,
            ),
            InkWell(
                onTap: () {},
                child: const Center(
                    child: Text(
                  'Forgot Password?',
                  style: Styles.txtGeneralWhiteSmall,
                ))),
            Padding(
              padding: const EdgeInsets.only(top: 50, bottom: 70),
              child: CustomButton(
                  buttonName: 'LOG IN',
                  horizontal: 40,
                  navigator: () {},
                  buttonColor: Styles.brown,
                  textStyle: Styles.txtGeneralWhite),
            ),
            const Text(
              'Don\'t have an account?',
              style: Styles.txtGeneralBrownSmall,
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              'Create an Account',
              style: Styles.txtGeneralWhite,
            )
          ],
        ),
      ),
    );
  }
}
