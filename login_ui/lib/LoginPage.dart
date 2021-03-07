import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  bool rememberMe = true;

   Widget _title() {
    return  Text(
         "Welcome Back!",
        style: TextStyle(
          fontFamily: "circular",
          fontSize: 20,
          fontWeight: FontWeight.w700,
          color: Colors.blue,
        ),
      );
  }

  Widget _subtitle() {
    return Text(
      "Sign in to your account",
      style: TextStyle(
        fontFamily: "circular",
        wordSpacing: -0.5,
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: Colors.grey,
      ),
    );
  }

  Widget _textField(controller,title, bool isPassword) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            obscureText: isPassword,
            keyboardType: TextInputType.emailAddress,
            controller: controller,
            autofocus: false,
            decoration: InputDecoration(
              hintText: "Enter your $title",
              border: InputBorder.none,
              fillColor: Color(0xfff3f3f4),
              filled: true,
            ),
          )
        ],
      ),
    );
  }

  Widget _rememberCheck() {
    return Row(
      children: <Widget>[
        Container(
            child: Checkbox(
          value: rememberMe,
          onChanged: (bool value) {},
        )),
        _remember()
      ],
    );
  }

  Widget _remember() {
    return Text(
       "Remember me",
        style: TextStyle(
          fontFamily: "circular",
          fontSize: 12,
          fontWeight: FontWeight.normal,
          color: Colors.black,
        ),
      ) ;
  }

  Widget _forget() {
    return Text(
         "Forgot Password?",
        style: TextStyle(
          fontFamily: "circular",
          fontSize: 12,
          fontWeight: FontWeight.w700,
          color: Colors.blue
        ),
      );
  }

  Widget _submitButton() {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(vertical: 15),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.grey.shade200,
                offset: Offset(2, 4),
                blurRadius: 5,
                spreadRadius: 2)
          ],
          color: Colors.lightBlue),
      child: Text(
        'Sign In ',
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
    );
  }
  Widget _signupTitle() {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
          text: "Not an account yet? ",
          style: TextStyle(
            fontFamily: "circular",
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Color(0xff00234B),
          ),
          children: [
            TextSpan(
              text: "Sign Up",
              style: TextStyle(color: Color(0xff1C7AD9), fontSize: 16),
            ),
          ]),
    );
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: <Widget>[
          Positioned(
              top: 0,
              right: 0,
              height: 150,
              child: Image.asset('assets/Images/img1.png')),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                child: Image.asset("assets/Images/img2.png"),
                height: 120,
              )
            ],
          ),
        
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: SizedBox(),
                ),
                _title(),
                SizedBox(
                  height: 5,
                ),
                _subtitle(),
                SizedBox(
                  height: 20,
                ),
                _textField(emailController,"Email", false),
                _textField(passwordController,"Password", true),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    _rememberCheck(),
                    GestureDetector(onTap: () {}, child: _forget()),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                _submitButton(),
                SizedBox(
                  height: 30,
                ),
                Center(
                  child: _signupTitle(),
                ),
                Expanded(
                  flex: 1,
                  child: SizedBox(),
                ),
              ],
            ),
          ),
          ],
      ),
    )));
  }



}
