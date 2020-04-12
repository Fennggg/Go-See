import 'package:flutter/material.dart';
import 'package:off_app/user/auth.dart';
import 'package:off_app/pages/home.dart';
import 'package:off_app/user/register.dart';
import 'package:provider/provider.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);

    return Scaffold(
      key: _key,
      backgroundColor: Colors.white,
      body: authProvider.status == Status.Authenticating
          ?  CircularProgressIndicator()
          : SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        "assets/go.jpg",
                        width: 200,
                        height: 200,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: TextFormField(
                          controller: authProvider.email,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Email",
                              icon: Icon(Icons.email)),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: TextFormField(
                          controller: authProvider.password,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Password",
                              icon: Icon(Icons.lock)),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: GestureDetector(
                      onTap: () async {
                        if (!await authProvider.signIn()) {
                          _key.currentState.showSnackBar(
                              SnackBar(content: Text("Login failed!")));
                          return;
                        }
                        authProvider.clearController();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.lightBlueAccent,
                           // border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(25)),
                        child: Padding(
                          padding: EdgeInsets.only(top: 2, bottom: 2),
                          child: MaterialButton(
                              minWidth: MediaQuery.of(context).size.width,
                              child: Text(
                                "Login",
                                style: TextStyle(color: Colors.white),
                                textAlign: TextAlign.center,
                              )),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Register()));
                    },
                    child: MaterialButton(
                        minWidth: MediaQuery.of(context).size.width,
                        child: Text(
                          "Register",
                          style: TextStyle(color: Colors.black),
                          textAlign: TextAlign.center,
                        )),
                  ),
                ],
              ),
            ),
    );
  }
}
