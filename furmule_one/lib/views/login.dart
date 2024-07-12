import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  Widget _buildInputs() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 50.0),
              child: Text(
                'First Name',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(height: 5),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 50.0),
              width: 300,
              height: 50,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Enter your first name',
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.green,
                        width: 2,
                        ), 
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 50.0),
              child: Text(
                'Last Name',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(height: 5),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 50.0),
              width: 300,
              height: 50,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Enter your last name',
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.green,
                        width: 2,
                        ), 
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
  Widget _button(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50.0),
      width: 200,
      height: 50,
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color.fromARGB(255, 153, 0, 0), Color.fromARGB(255, 255, 0, 0)], 
            begin: Alignment(0,-2),
            end: Alignment.bottomCenter,
          ),
          borderRadius: BorderRadius.circular(5)
        ), 
        child: ElevatedButton(
        onPressed: () {},
        child: Text('Next    >',style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          ),
          ),
        style: ElevatedButton.styleFrom(
        backgroundColor: Colors.transparent, 
        elevation: 0, 
        
      ),
        
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 120,
                height: 120,
                margin: EdgeInsets.only(top: 80),
                child: Image.asset("assets/images/logo.png"),
              ),
              Container(
                child: Text(
                  "Let's Get Familiar",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                child: Text(
                  "Introduce Yourself",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(height: 200),
              _buildInputs(),
              SizedBox(height: 90),
              _button()
            ],
          ),
        ),
      ),
    );
  }
}
