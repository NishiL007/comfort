import 'package:comfort/home.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/602a86cc-b61f-49d0-8419-923202f9b3c9.jfif"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 30,right: 30,top: 260,),
          child: SingleChildScrollView(
            child: Container(

              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(60),topRight: Radius.circular(60)),
                color: Colors.white,),

              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Create Account",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,color: Colors.indigo[900]),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("Join Us to Discovers Everywhere",
                    style: TextStyle(fontSize: 10),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                    child: Container(
                      height: 30,width: 250,
                      child: TextField(
                        style: TextStyle(color: Colors.black,fontSize: 10,),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.blue[50],
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: BorderSide.none),
                          hintText: "Frist Name",
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                    child: Container(
                      height: 30,width: 250,
                      child: TextField(
                        style: TextStyle(color: Colors.black,fontSize: 10),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.blue[50],
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: BorderSide.none),
                          hintText: "Last Name",
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                    child: Container(
                      height: 30,width: 250,
                      child: TextField(
                        style: TextStyle(color: Colors.black,fontSize: 10,),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.blue[50],
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: BorderSide.none),
                          hintText: "Enter Your Email ID",
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                    child: Container(
                      height: 30,width: 250,
                      child: TextField(
                        style: TextStyle(color: Colors.black,fontSize: 10,),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.blue[50],
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: BorderSide.none),
                          hintText: "Enter Your Referral ID",
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: SizedBox(
                      height: 20,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                    child: Container(
                      height: 40,width: 400,
                      child: TextButton(
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>Main(),)
                        ),
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.indigo[900],
                            primary: Colors.white,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)
                            ),
                            minimumSize: Size(double.infinity, 45,)
                        ),
                        child: Text(
                          'Sign Up',
                          style: TextStyle(fontSize: 20.0),
                        ),
                      ),
                    ),

                  ),
                  SizedBox(height: 20,),
                  TextButton(
                    style: TextButton.styleFrom(
                      textStyle: TextStyle(fontSize: 20, color: Colors.blueAccent),
                    ),
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Main()),
                      );
                    },
                    child: Text(
                      "Already have an account",
                      style: TextStyle(color: Colors.black,fontSize: 11),
                    ),
                  ),
                ],
              ),
            ),

          ),
        ),
      ),
    );
  }
}
