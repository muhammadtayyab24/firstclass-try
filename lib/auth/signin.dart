import 'package:flutter/material.dart';
import 'package:lastclass/auth/register.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Signin extends StatefulWidget {
  @override
  _SigninState createState() => _SigninState();
}

bool obserText = true;
final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
String p =
    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

RegExp regExp = new RegExp(p);
final TextEditingController passController = TextEditingController();
final TextEditingController emailController = TextEditingController();
void loginpage() async {
  FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  final String email = emailController.text;
  final String password = passController.text;
  final FormState _form = _formKey.currentState;
  if (_form.validate()) {
    final UserCredential user =
        await auth.signInWithEmailAndPassword(email: email, password: password);
    final DocumentSnapshot snapshot =
        await firestore.collection("users").doc(user.user.uid).get();
    final data = snapshot.data();
    print("user Loged in");
    print(data["username"]);
    print(data["email"]);
  } else {
    print("User Is Not Loged in");
  }
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: Text(
                    "Login ",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 50,
                        fontFamily: 'Hind',
                        fontStyle: FontStyle.italic),
                  ),
                ),
                Container(
                  height: 250,
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      TextFormField(
                        controller: emailController,
                        validator: (value) {
                          if (value == "") {
                            return "Required Email ";
                          } else if (!regExp.hasMatch(value)) {
                            return "Please Give Valid Emial";
                          }
                          return null;
                        },
                        style: TextStyle(
                          color: Colors.black,
                          decorationColor: Colors.white12,
                        ),
                        decoration: new InputDecoration(

                            // suffixIcon: IconButton(
                            //   onPressed: _username.clear,
                            //   icon: Icon(Icons.clear),
                            // ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            labelText: "Email",
                            labelStyle: new TextStyle(color: Colors.black)),
                      ),
                      TextFormField(
                        controller: passController,
                        obscureText: obserText,
                        validator: (value) {
                          if (value == "") {
                            return "Required Password";
                            //
                          } else if (value.length < 8) {
                            return "Username Is Too Short ";
                          }
                          return null;
                        },
                        style: TextStyle(
                          color: Colors.black,
                          decorationColor: Colors.white12,
                        ),
                        decoration: new InputDecoration(
                            suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  obserText = !obserText;
                                });

                                FocusScope.of(context).unfocus();
                              },
                              child: Icon(
                                obserText == true
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Colors.black,
                              ),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            labelText: "Password",
                            labelStyle: new TextStyle(color: Colors.black)),
                      ),
                      ElevatedButton(
                          onPressed: loginpage, child: Text("Login")),
                      Row(
                        children: <Widget>[
                          Text(
                            "I Don't Have an Account ",
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Register()));
                            },
                            child: Text(
                              "Sign up",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
