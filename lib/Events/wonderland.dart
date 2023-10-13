import 'package:comfort/home.dart';
import 'package:comfort/screens/loginscreen.dart';
import 'package:flutter/material.dart';
class Munnar extends StatefulWidget {
  const Munnar({super.key});

  @override
  State<Munnar> createState() => _MunnarState();
}

class _MunnarState extends State<Munnar> {
  final List<bool> _selectedBtn = <bool>[true, false];
  int _selectedIndex=0;
  void _navigateBottomNavBar(int index){
    setState(() {
      _selectedIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,
        leading:IconButton(
          onPressed: () {

              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  Main()),
              );
            },
          icon: Icon(Icons.arrow_back_ios,color: Colors.black),
        ),
        title:Text("Find Your Wonderland",
          style: TextStyle(
            color: Colors.black,
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),) ,
      ),
      body:SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              width:MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Image.asset("assets/images/WhatsApp Image 2023-10-06 at 1.33.11 AM.jpeg",
                fit: BoxFit.cover,),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Munnar",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  )
              ),
            ),
            SizedBox(height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white),
                height: 200,
                width:  MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10,bottom: 10),
                        child: Text(
                          "Description",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                      ),
                      Text(
                        "Onam is an annual indian harvest festival celebrated",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black54,
                        ),
                      ),
                      Text(
                        "predominantly by the Hindus of Kerala.A major annual",
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.black54,
                        ),
                      ),
                      Text(
                        "events for Keralities,it is the official festval of a state ",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black54,
                        ),
                      ),
                      Text(
                        "and includes a specturum of cultural events.onam",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black54,
                        ),
                      ),
                      Text(
                        "commemorates King Mahabali and vamana",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black54,
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 180,top: 20),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              height: 30,width: 130,
                              child: TextButton(
                                onPressed: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>Munnar(),)
                                ),
                                style: TextButton.styleFrom(
                                    backgroundColor: Colors.indigo,
                                    primary: Colors.white,
                                    elevation: 0,
                                    shape: BeveledRectangleBorder(side: BorderSide.none),
                                    minimumSize: Size(double.infinity, 45,)
                                ),
                                child: Text(
                                  'Book now',
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text("Related Events",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            Container(
              height: 165,
              child: ListView.builder(
                  padding: const EdgeInsets.symmetric( vertical: 12,horizontal: 8),
                  scrollDirection: Axis.horizontal,
                  itemCount: 6,
                  itemBuilder: (BuildContext context,int index){
                    return GestureDetector(
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 16),
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(image: DecorationImage(
                              image: AssetImage("assets/images/WhatsApp Image 2023-10-06 at 1.33.11 AM.jpeg",),
                              fit: BoxFit.cover,
                            ),
                              shape: BoxShape.rectangle,
                              border: Border.all(color:Colors.black54,width: 0),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          Text("Munnar"),
                        ],
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,selectedItemColor:Colors.black ,
        onTap: _navigateBottomNavBar,
        type: BottomNavigationBarType.fixed,
        items: [BottomNavigationBarItem(icon:Icon(Icons.home),label: 'home'),
          BottomNavigationBarItem(icon:Icon(Icons.subtitles_outlined),label: 'Booking'),
          BottomNavigationBarItem(icon:Icon(Icons.new_releases_outlined),label: 'Offers'),
          BottomNavigationBarItem(icon:Icon(Icons.wallet_giftcard),label: 'Gift Box'),
          BottomNavigationBarItem(icon:Icon(Icons.help_center_outlined),label: 'Need Help'),
        ],
      ),
    );
  }
}