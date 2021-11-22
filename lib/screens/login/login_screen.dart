import 'package:faucon_it_book/app_color.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/login.png",
                        height: 200.0,
                      ),
                    ],
                  ),
                  SizedBox(height: 30.0),
                  Text(
                    "Se connecter",
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      //letterSpacing: 3.0,
                    ),
                  ),
                  Text(
                    "Veuillez vous conecter pour continuer",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.normal,
                      color: AppColors.kTextColor.withOpacity(0.5),
                      //letterSpacing: 3.0,
                    ),
                  ),
                  SizedBox(height: 40.0),
                  Form(
                    child: Column(
                      children: [
                        SizedBox(height: 10.0),
                        TextFormField(
                          decoration: InputDecoration(
                            label: Text("Email"),
                            prefixIcon: Icon(
                              Icons.email_outlined,
                            ),
                          ),
                        ),
                        SizedBox(height: 10.0),
                        TextFormField(
                          decoration: InputDecoration(
                            label: Text("Mot de passe"),
                            prefixIcon: Icon(
                              Icons.lock_outlined,
                            ),
                          ),
                        ),
                        SizedBox(height: 40.0),
                        Container(
                          padding: EdgeInsets.fromLTRB(40, 20, 40, 20),
                          decoration: BoxDecoration(
                            color: AppColors.kPrimaryColor.withOpacity(.6),
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          child: Text(
                            "Se connecter".toUpperCase(),
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.normal,
                              color: AppColors.kTextColor,
                              //letterSpacing: 3.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Text.rich(
                TextSpan(
                  text: "Pas encore un compte ?",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.normal,
                    color: AppColors.kTextColor,
                    //letterSpacing: 3.0,
                  ),
                  children: [
                    TextSpan(
                      text: "Créer un compte",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.normal,
                        color: AppColors.kPrimaryColor,
                        //letterSpacing: 3.0,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
