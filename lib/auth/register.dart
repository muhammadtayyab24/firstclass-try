import 'package:flutter/material.dart';
import 'package:lastclass/auth/signin.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
String p =
    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

RegExp regExp = new RegExp(p);
bool obserText = true;
bool reobsertext = true;
final TextEditingController passController = TextEditingController();
final TextEditingController usernameController = TextEditingController();
final TextEditingController emailController = TextEditingController();

void register() async {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  final FormState _form = _formKey.currentState;
  FirebaseAuth auth = FirebaseAuth.instance;
  final String username = usernameController.text;
  final String email = emailController.text;
  final String password = passController.text;
  try {
    if (_form.validate()) {
      final UserCredential user = await auth.createUserWithEmailAndPassword(
          email: email, password: password);
      await firestore
          .collection("users")
          .doc(user.user.uid)
          .set({"email": email, "username": username});
      print("user is ready");
    } else
      print("Not Register");
  } catch (e) {
    print(e);
  }
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Container(
                child: Column(
              children: <Widget>[
                Container(
                  height: 140,
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        "Registration",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 50,
                            fontFamily: 'Hind',
                            fontStyle: FontStyle.italic),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  height: 405,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      TextFormField(
                        validator: (value) {
                          if (value == "") {
                            return "Plase Fill The username";
                            //
                          } else if (value.length < 6) {
                            return "Username Is Too Short ";
                          }
                          return null;
                        },
                        style: TextStyle(
                          color: Colors.black,
                          decorationColor: Colors.white12,
                        ),
                        controller: usernameController,
                        decoration: new InputDecoration(
                            suffixIcon: IconButton(
                              onPressed: usernameController.clear,
                              icon: Icon(Icons.clear),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            labelText: "Username",
                            labelStyle: new TextStyle(color: Colors.black)),
                      ),
                      TextFormField(
                        controller: emailController,
                        validator: (value) {
                          if (value == "") {
                            return "Please Fill Email";
                          } else if (!regExp.hasMatch(value)) {
                            return "Email Address Is Not Valid";
                          }
                          return null;
                        },
                        style: TextStyle(
                          color: Colors.black,
                          decorationColor: Colors.white12,
                        ),
                        decoration: new InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            labelText: "Email Address",
                            labelStyle: new TextStyle(color: Colors.black)),
                      ),
                      TextFormField(
                        obscureText: obserText,
                        controller: passController,
                        validator: (value) {
                          if (value == "") {
                            return "Enter Password";
                          } else if (value.length < 8) {
                            return "Your Password Is Too Short";
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
                      TextFormField(
                        obscureText: reobsertext,
                        validator: (value) {
                          if (value == "") {
                            return "ReEnter Password";
                          } else if (value != passController.text) {
                            return "Not Match";
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
                                  reobsertext = !reobsertext;
                                });

                                FocusScope.of(context).unfocus();
                              },
                              child: Icon(
                                reobsertext == true
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Colors.black,
                              ),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            labelText: "Retype Password",
                            labelStyle: new TextStyle(color: Colors.black)),
                      ),
                      ElevatedButton(
                          onPressed: register, child: Text("Register")),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            "I Have an Account ",
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
                                      builder: (context) => Signin()));
                            },
                            child: Text(
                              "Sign In",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            )),
          ),
        ),
      ),
    );
  }
}
