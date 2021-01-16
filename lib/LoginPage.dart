import 'package:flutter/material.dart';
import 'package:newtotolist/HomePage.dart';
import 'Forgotpassword.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'avenir'),
      home: loginPage(),
    );
  }
}

class loginPage extends StatefulWidget {
  @override
  _loginPageState createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  @override
  int fontSize = 15;

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
            onPressed: null,
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                "Welcome Back!",
                style: TextStyle(fontSize: 35),
              ),
              Text(
                "Sign in to continue",
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "User Name",
                style: TextStyle(
                  fontSize: 23,
                ),
              ),
              TextField(
                decoration: InputDecoration(hintText: "Shan Shaji"),
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Password",
                style: TextStyle(
                  fontSize: 23,
                ),
              ),
              TextField(
                decoration: InputDecoration(hintText: "Enter password here"),
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: openForgotPassword,
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(fontSize: 16),
                    ),
                  )
                ],
              ),
              Expanded(
                child: Center(
                  child: 
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 100, vertical: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(9)),
                        color: Color(0xFFA14DDA).withOpacity(100),
                    ),
                    child: RaisedButton(onPressed: () {
                      Navigator.push(context,new MaterialPageRoute(builder: (BuildContext context) => new HomePage()));
                    },                   
                    child:Text(
                      "Log In",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    ),
                    ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void openForgotPassword() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ForgotPassword()));
  }
}
