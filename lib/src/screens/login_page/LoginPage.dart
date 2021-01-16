import 'package:flutter/material.dart';
import 'package:newtotolist/src/screens/login_page/login_page_view_Model.dart';
import 'package:stacked/stacked.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      builder: (context, model, child) {
        return Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            leading: IconButton(
              onPressed: () {},
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
                  "Sign in to continue...",
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
                  decoration: InputDecoration(hintText: "John Doe"),
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  "Password",
                  style: TextStyle(
                    fontSize: 23,
                  ),
                ),
                TextField(
                  decoration:
                      InputDecoration(hintText: "Enter your password here"),
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        model.openForgotPassword(context);
                      },
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(fontSize: 16),
                      ),
                    )
                  ],
                ),
                Expanded(
                  child: Center(
                    child: InkWell(
                      onTap: () {
                        model.openHomePage(context);
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 130, vertical: 20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(7)),
                            color: Color(0xFF8545EC)),
                        child: Text(
                          "Log In",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
      viewModelBuilder: () => LoginPageViewModel(),
    );
  }
}
