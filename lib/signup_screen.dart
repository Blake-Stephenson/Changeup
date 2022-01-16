import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'constants.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  firebase_auth.FirebaseAuth firebaseAuth = firebase_auth.FirebaseAuth.instance;

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

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
                            "SIGN UP",
                            style: Theme.of(context).textTheme.headline4,
                          ),
                          GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, '/signin');
                              },
                              child: Text(
                                "SIGN IN",
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
                                controller: _emailController,
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
                              controller: _passwordController,
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
                              child: Icon(Icons.settings,
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
                              child: FittedBox(
                                child: GestureDetector(
                                  onTap: () async {
                                    try {
                                      await firebaseAuth
                                          .createUserWithEmailAndPassword(
                                              email: _emailController.text,
                                              password:
                                                  _passwordController.text);
                                      //Successful -> Add Navigation to HomePage

                                    } catch (e) {
                                      final snackbar =
                                          SnackBar(content: Text(e.toString()));
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(snackbar);
                                    }
                                  },
                                  child: Container(
                                    margin: const EdgeInsets.only(bottom: 0),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 26, vertical: 16),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                      color: kPrimaryColor,
                                    ),
                                    child: Row(
                                      children: [
                                        Text(
                                          "JOIN US",
                                          style: Theme.of(context)
                                              .textTheme
                                              .button!
                                              .copyWith(
                                                color: Colors.black,
                                              ),
                                        ),
                                        const SizedBox(width: 10),
                                        const Icon(
                                          Icons.arrow_forward,
                                          color: Colors.black,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
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
