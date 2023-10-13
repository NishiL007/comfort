// import 'package:comfort/home.dart';
// import 'package:flutter/material.dart';
//
// class LoginPage extends StatelessWidget {
//   const LoginPage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Container(
//         child: Column(
//           children: [
//             Container(
//               height: MediaQuery.of(context).size.height * 0.3,
//               width: MediaQuery.of(context).size.width,
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Image.asset(
//                   "assets/images/602a86cc-b61f-49d0-8419-923202f9b3c9.jfif",
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Text(
//               "Login here",
//               style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Text("Welecome back,your travels",
//                 style: TextStyle(fontWeight: FontWeight.bold)),
//             Text("have beem waiting for you",
//                 style: TextStyle(fontWeight: FontWeight.bold)),
//             SizedBox(height: 20),
//             Padding(
//               padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
//               child: TextField(
//                 style: TextStyle(color: Colors.black),
//                 decoration: InputDecoration(
//                   filled: true,
//                   fillColor: Colors.blue[100],
//                   border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(8.0),
//                       borderSide: BorderSide.none),
//                   hintText: "Email addres",
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Padding(
//               padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
//               child: TextField(
//                 style: TextStyle(color: Colors.black),
//                 decoration: InputDecoration(
//                   filled: true,
//                   fillColor: Colors.blue[100],
//                   border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(8.0),
//                       borderSide: BorderSide.none),
//                   hintText: "Password",
//                 ),
//               ),
//             ),
//             SizedBox(height: 10,),
//             Padding(
//               padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
//               child: Container(
//                 child: Align(
//                   alignment: Alignment.bottomRight,
//                   child: TextButton(
//                     style: TextButton.styleFrom(
//                       textStyle: TextStyle(fontSize: 15, color: Colors.blueAccent),
//                     ),
//                     onPressed: () {},
//                     child: Text(
//                       "Forgotten password",
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Padding(
//               padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
//               child: TextButton(
//                 onPressed: () {},
//                 style: TextButton.styleFrom(
//                     backgroundColor: Colors.black,
//                     primary: Colors.white,
//                     elevation: 0,
//                     shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(32)
//                     ),
//                     minimumSize: Size(double.infinity, 50)
//                 ),
//                 child: Text(
//                   'Sign in',
//                   style: TextStyle(fontSize: 20.0),
//                 ),
//               ),
//             ),
//             SizedBox(height: 20,),
//             TextButton(
//               style: TextButton.styleFrom(
//                 textStyle: TextStyle(fontSize: 20, color: Colors.blueAccent),
//               ),
//               onPressed: (){
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => const Home()),
//                 );
//               },
//               child: Text(
//                 "Create new account",
//                 style: TextStyle(color: Colors.black),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:comfort/home.dart';
import 'package:comfort/pages/registerpage.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
                    "Login here",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,color: Colors.indigo[900]),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("Welcome back, your travels",
                    style: TextStyle(fontSize: 12),
                      ),
                  Text("have bee waiting for you",
                    style: TextStyle(fontSize: 12),
                      ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                    child: Container(
                      height: 40,width: 250,
                      child: TextField(
                        style: TextStyle(color: Colors.black,fontSize: 12,),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.blue[50],
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: BorderSide.none),
                          hintText: "Email addres",
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
                      height: 40,width: 250,
                      child: TextField(
                        style: TextStyle(color: Colors.black,fontSize: 12,),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.blue[50],
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: BorderSide.none),
                          hintText: "Password",
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                    child: Container(
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            textStyle: TextStyle(fontSize: 15, color: Colors.indigo[900]),
                          ),
                          onPressed: () {},
                          child: Text(
                            "Forgotten password",style: TextStyle(fontSize: 12),
                          ),
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
                            minimumSize: Size(double.infinity, 50)
                        ),

                        child: Text(
                          'Sign in',
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
                        MaterialPageRoute(builder: (context) => const RegisterPage()),
                      );
                    },
                    child: Text(
                      "Create new account",
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
