import 'package:flutter/material.dart';
import '../homepage/HomePage.dart';

class PasswordChangedSuccessfully extends StatefulWidget {
  @override
  _PasswordChangedSuccessfullyState createState() => _PasswordChangedSuccessfullyState();
}

class _PasswordChangedSuccessfullyState extends State<PasswordChangedSuccessfully> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("asset/image/success.png")
              )
            ),
          ),
          Text("Successful!", style: TextStyle(
            fontSize: 35
          ),),
          Text("You have successfully changed our password. Please use your new password to login!", style: TextStyle(
            fontSize: 18,
          ),textAlign: TextAlign.center,),
          SizedBox(height: 70,),
          Center(
            child: InkWell(
              onTap: openHomePage,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(7)),
                    color: Color(0xFF8545EC)
                ),
                child: Text("Continue", style: TextStyle(
                    fontSize: 18,
                    color: Colors.white
                ),),
              ),
            ),
          ),
        ],
      ),
    );
  }
  void openHomePage()
  {
    Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
  }
}

