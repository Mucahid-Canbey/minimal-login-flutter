import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minimal_login/main.dart';

import 'language/language_items.dart';

class LoginPage extends StatefulWidget with LanguageItems {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Icon(
            Icons.whatshot,
            size: 100,
            color: Colors.deepPurple,
          ),
          SizedBoxUtility().sizeBox50,
          // Hello Title Text !
          helloTitle(context),

          SizedBoxUtility().sizeBox10,

          // Again Welcome Text !
          againWelcome(context),

          SizedBoxUtility().sizeBox50,

          // Email textfield
          emailTextField(),
          SizedBoxUtility().sizeBox10,

          // Password textfield
          passwordTextField(),
          SizedBoxUtility().sizeBox10,
          //Sing button
          singButton(context),
          SizedBoxUtility().sizeBox25,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                LanguageItems.memberText,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                LanguageItems.registerNowText,
                style: TextStyle(color: ColorUtility().indigo, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ]),
      )),
    );
  }

  Padding singButton(BuildContext context) {
    return Padding(
      padding: PaddindUtility().paddingHorizontal,
      child: Container(
          padding: PaddindUtility().paddingAll,
          decoration: BoxDecoration(color: ColorUtility().deepPurple, borderRadius: BorderRadius.circular(12,)),
          child: Center(
            child: Text(LanguageItems.singText,
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    ?.copyWith(color: ColorUtility().white, fontWeight: FontWeight.bold,)),
          )),
    );
  }

  Padding passwordTextField() {
    return Padding(
      padding: PaddindUtility().paddingHorizontal,
      child: Container(
        decoration: boxDecoration(),
        child: Padding(
          padding: PaddindUtility().paddingLeft,
          child: const TextField(
            obscureText: true,
            keyboardType: TextInputType.visiblePassword,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              hintText: 'Password',
              border: InputBorder.none,
            ),
          ),
        ),

        // Password textfield
      ),
    );
  }

  Padding emailTextField() {
    return Padding(
      padding: PaddindUtility().paddingHorizontal,
      child: Container(
        decoration: boxDecoration(),
        child: Padding(
          padding: PaddindUtility().paddingLeft,
          child: const TextField(
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              hintText: 'Mail',
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }

  //Box Decoration
  BoxDecoration boxDecoration() {

    return BoxDecoration(
      
        color: ColorUtility().grey200,
        border: Border.all(
          color: ColorUtility().white,
        ),
        borderRadius: BorderRadius.circular(12));
  }

//Again Text
  Text againWelcome(BuildContext context) {
    return Text(
      LanguageItems.registerTexy,
      style: Theme.of(context).textTheme.headline6?.copyWith(color: ColorUtility().black54),
    );
  }

// Hello Title
  Text helloTitle(BuildContext context) {
    return Text(
      LanguageItems.welcomeText,
      style: GoogleFonts.bebasNeue(color: ColorUtility().black87, fontSize: 52),
    );
  }
}

class PaddindUtility {
  final paddingHorizontal = const EdgeInsets.symmetric(horizontal: 25.0);
  final paddingLeft = const EdgeInsets.only(left: 20);
  final paddingAll = const EdgeInsets.all(20);
}

class SizedBoxUtility {
  final sizeBox10 = const SizedBox(
    height: 10,
  );
  final sizeBox25 = const SizedBox(
    height: 25,
  );
  final sizeBox50 = const SizedBox(
    height: 50,
  );
}
