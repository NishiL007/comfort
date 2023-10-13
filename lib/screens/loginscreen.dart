//
//
// import 'package:comfort/pages/registerpage.dart';
// import 'package:flutter/material.dart';
//
// List<Widget> btn = <Widget>[
//   Text('Login',),
//   Text('Register')
// ];
//
// class Home extends StatefulWidget {
//
//
//   @override
//   State<Home> createState() => _HomeState();
// }
//
// class _HomeState extends State<Home> {
//   final List<bool> _selectedBtn = <bool>[true, false];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Container(
//         child: Column(
//           children: [
//             Container(
//               height: MediaQuery.of(context).size.height * 0.5,
//               width: MediaQuery.of(context).size.width,
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Image.asset(
//                   "assets/images/WhatsApp Image 2023-10-03 at 7.43.48 AM.jpeg",
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Text(
//               "Explore Beauty",
//               style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.indigo[900]),
//             ),
//             Text(
//               "Of Journey",
//               style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.indigo[900]),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Text("Live life with no excuse,travel",
//                 style: TextStyle(fontWeight: FontWeight.bold)),
//             Text("with no regrets",
//                 style: TextStyle(fontWeight: FontWeight.bold)),
//             SizedBox(height: 20),
//             SizedBox(
//               height: 50,
//             ),
//
//       ToggleButtons(
//               direction: Axis.horizontal,
//               onPressed: (int index){
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => RegisterPage(),
//
//                   ),
//                 );
//                 setState(() {
//                   for(int i = 0; i < _selectedBtn.length; i++){
//                     _selectedBtn[i]=i==index;
//
//                   }
//                 });
//               },
//
//               borderRadius: BorderRadius.all(Radius.circular(20)),
//               selectedBorderColor: Colors.black,
//               selectedColor: Colors.white,
//               fillColor: Colors.indigo[900],
//               color: Colors.black,
//               constraints: BoxConstraints(
//                 minHeight: 40,
//                 minWidth: 100,
//               ),
//
//               isSelected: _selectedBtn,
//               children: btn,
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:comfort/pages/loginpage.dart';
import 'package:comfort/pages/registerpage.dart';

import 'package:flutter/material.dart';

List<Widget> btn = <Widget>[
  Text(
    'Login',
  ),
  Text('Register')
];

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<bool> _selectedBtn = <bool>[true, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  "assets/images/WhatsApp Image 2023-10-03 at 7.43.48 AM.jpeg",
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Explore Beauty",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo[900]),
            ),
            Text(
              "Of Journey",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo[900]),
            ),
            SizedBox(
              height: 20,
            ),
            Text("Live life with no excuse,travel",
                style: TextStyle(fontWeight: FontWeight.bold)),
            Text("with no regrets",
                style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            SizedBox(
              height: 50,
            ),
            ToggleButtons(
              direction: Axis.horizontal,
              onPressed: (int index) {
                if (index == 0) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    ),
                  );
                } else {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RegisterPage(),
                    ),
                  );
                }

                setState(() {
                  for (int i = 0; i < _selectedBtn.length; i++) {
                    _selectedBtn[i] = i == index;
                  }
                });
              },
              borderRadius: BorderRadius.all(Radius.circular(20)),
              selectedBorderColor: Colors.black,
              selectedColor: Colors.white,
              fillColor: Colors.indigo[900],
              color: Colors.black,
              constraints: BoxConstraints(
                minHeight: 40,
                minWidth: 100,
              ),
              isSelected: _selectedBtn,
              children: btn,
            )
          ],
        ),
      ),
    );
  }
}
