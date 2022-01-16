import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'constants.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  firebase_auth.FirebaseAuth firebaseAuth = firebase_auth.FirebaseAuth.instance;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        reverse: true,
        child: ConstrainedBox(
          constraints:
              BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/person.png")
                            as ImageProvider,
                        fit: BoxFit.cover,
                        alignment: Alignment.bottomCenter),
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "SIGN IN",
                            style: Theme.of(context).textTheme.headline4,
                          ),
                          GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, '/signup');
                              },
                              child: Text(
                                "SIGN UP",
                                style: Theme.of(context).textTheme.button,
                              ))
                        ],
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 30),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 8.0),
                              child: Icon(
                                Icons.alternate_email,
                                color: kPrimaryColor,
                              ),
                            ),
                            Expanded(
                              child: TextField(
                                controller: emailController,
                                decoration:
                                    InputDecoration(hintText: "Email Address"),
                              ),
                            )
                          ],
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 8.0),
                            child: Icon(
                              Icons.lock,
                              color: kPrimaryColor,
                            ),
                          ),
                          Expanded(
                            child: TextField(
                              controller: passwordController,
                              decoration: InputDecoration(hintText: "Password"),
                            ),
                          )
                        ],
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 30),
                        child: Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: Colors.white.withOpacity(0.5)),
                              ),
                              child: Icon(Icons.android,
                                  color: Colors.white.withOpacity(0.5)),
                            ),
                            const SizedBox(width: 16),
                            Container(
                              padding: const EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: Colors.white.withOpacity(0.5)),
                              ),
                              child: Icon(Icons.chat,
                                  color: Colors.white.withOpacity(0.5)),
                            ),
                            const Spacer(),
                            Container(
                              child: GestureDetector(
                                onTap: () async {
                                  try {
                                    firebase_auth.UserCredential
                                        userCredential = await firebaseAuth
                                            .signInWithEmailAndPassword(
                                                email: emailController.text,
                                                password:
                                                    passwordController.text);
                                    //Go to home page!!!
                                  } catch (e) {
                                    final snackbar =
                                        SnackBar(content: Text(e.toString()));
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(snackbar);
                                  }
                                },
                                child: const Icon(
                                  Icons.arrow_forward,
                                  color: Colors.black,
                                ),
                              ),
                              padding: const EdgeInsets.all(16),
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle, color: kPrimaryColor),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
