import 'package:comfort/search/Innersearch.dart';
import 'package:comfort/search/moredetails.dart';
import 'package:comfort/search/view%20layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Resort extends StatefulWidget {
  const Resort({Key? key}) : super(key: key);

  @override
  State<Resort> createState() => _ResortState();
}

class _ResortState extends State<Resort> {
  int _selectedIndex=0;
  void _navigateBottomNavBar(int index){
    setState(() {
      _selectedIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          color: Colors.white,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  ResortListScreen()),
            );
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Colors.black,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: const Icon(Icons.search),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: const Icon(Icons.save_alt),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: const Icon(Icons.favorite_border),
          ),
        ],
        backgroundColor: Color(0xFFD8ECFF),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 3,
              width: MediaQuery.of(context).size.width,

              color: Color(0xFFD8ECFF),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15,left: 20,bottom: 8,),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0), //add border radius
                      child: Image.asset(

                        "assets/images/WhatsApp Image 2023-10-07 at 3.07.38 AM.jpeg",
                        height: MediaQuery.of(context).size.height / 3.5,
                        width: MediaQuery.of(context).size.width / 2.3,
                        fit:BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15,bottom: 8,left: 10),
                    child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0), //add border radius
                          child: Image.asset(

                            "assets/images/WhatsApp Image 2023-10-07 at 3.07.38 AM (1).jpeg",
                            height: MediaQuery.of(context).size.height / 7.4,
                            width: MediaQuery.of(context).size.width / 5,
                            fit:BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5,),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0), //add border radius
                          child: Image.asset(

                            "assets/images/WhatsApp Image 2023-10-07 at 3.07.38 AM (3).jpeg",
                            height: MediaQuery.of(context).size.height / 7.4,
                            width: MediaQuery.of(context).size.width / 5,
                            fit:BoxFit.cover,
                          ),
                        ),
                      ),
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15,bottom: 8,right: 5),
                    child: Column(children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.0), //add border radius
                        child: Image.asset(

                          "assets/images/WhatsApp Image 2023-10-07 at 3.07.38 AM (2).jpeg",
                          height: MediaQuery.of(context).size.height / 7.4,
                          width: MediaQuery.of(context).size.width / 5,
                          fit:BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0), //add border radius
                          child: Image.asset(

                            "assets/images/WhatsApp Image 2023-10-07 at 3.07.38 AM (3).jpeg",
                            height: MediaQuery.of(context).size.height / 7.4,
                            width: MediaQuery.of(context).size.width / 5,
                            fit:BoxFit.cover,
                          ),
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  'Mistletoe Homestay & Cafe',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0,
                    letterSpacing: 0.40,
                  ),
                ),
                RatingBarIndicator(
                  rating: 4,
                  itemCount: 5,
                  itemSize: 20.0,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                ),
                Text(
                  'Rooms in a homestay with a kitchen, BBQ WIFI& parking',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.6499999761581421),
                    fontSize: 10,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    height: 0,
                    letterSpacing: 0.20,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    height: 130,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Color(0xFFD8ECFF),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 20, right: 15, top: 8, bottom: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Room in a Homestay',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                  letterSpacing: 0.22,
                                ),
                              ),

                              SizedBox(
                                width: MediaQuery.of(context).size.width / 6,
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) =>  SelectRoom()),
                                  );
                                },
                                child: Text(
                                  'View Layout',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF0084FF),
                                    fontSize: 9,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                    letterSpacing: 0.18,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: RichText(
                              text: TextSpan(
                                text: '1 Bedroom',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 11,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w300,
                                  height: 0,
                                  letterSpacing: 0.22,
                                ),
                                children: const <TextSpan>[
                                  TextSpan(
                                    text: '.',
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  TextSpan(
                                    text: '1 Bedroom',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 11,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w300,
                                      height: 0,
                                      letterSpacing: 0.22,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '.',
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  TextSpan(
                                    text: '1 King Bed, 2 Bunk Beds',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 11,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w300,
                                      height: 0,
                                      letterSpacing: 0.22,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Divider(
                            color: Colors.black,
                            height: 25,
                            thickness: 0.1,
                            indent: 5,
                            endIndent: 5,
                          ),
                          Text(
                            'Sleeps 4 guests',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 11,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w300,
                              height: 0,
                              letterSpacing: 0.22,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Divider(
                    color: Colors.black,
                    height: 25,
                    thickness: 0.1,
                    indent: 5,
                    endIndent: 5,
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(9.0),
                        child: Column(
                          children: [
                            Icon(
                              Icons.microwave,
                              size: 30,
                              color: Colors.grey,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text(
                                'Kitchenette',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 11,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  height: 0,
                                  letterSpacing: 0.22,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 10,
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 13),
                            child: Icon(
                              Icons.chair_outlined,
                              size: 30,
                              color: Colors.grey,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 17),
                            child: Column(
                              children: [
                                Text(
                                  'Living',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 11,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                    height: 0,
                                    letterSpacing: 0.22,
                                  ),
                                ),
                                Text(
                                  'Room',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 11,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                    height: 0,
                                    letterSpacing: 0.22,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 7,
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.pool,
                            size: 30,
                            color: Colors.grey,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              'Pool',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 11,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                height: 0,
                                letterSpacing: 0.22,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 7,
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 7),
                            child: Text(
                              '+13',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blueAccent),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Column(
                              children: [
                                Text(
                                  'More',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 11,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                    height: 0,
                                    letterSpacing: 0.22,
                                  ),
                                ),
                                Text(
                                  'Amenitities',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 11,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                    height: 0,
                                    letterSpacing: 0.22,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Divider(
                    color: Colors.black,
                    height: 25,
                    thickness: 0.1,
                    indent: 5,
                    endIndent: 5,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 20,
                            width: MediaQuery.of(context).size.width / 16,
                            child: Center(
                                child: Text('4.2',
                                    style: TextStyle(color: Colors.white))),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2),
                                color: Colors.indigo[900]),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  text: TextSpan(
                                    text: 'Very Good ',
                                    style: TextStyle(
                                        color: Colors.indigo[900], fontSize: 15,fontWeight: FontWeight.bold),
                                    children: const <TextSpan>[
                                      TextSpan(
                                        text: '52 rating',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w300,
                                          height: 0,
                                          letterSpacing: 0.22,
                                        ),
                                      ),

                                    ],
                                  ),
                                ),
                                Text('68% guests rated this property 4 and above',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w300,
                                    height: 0,
                                    letterSpacing: 0.22,
                                  ),)
                              ],
                            ),
                          ),
                          SizedBox(width: MediaQuery.of(context).size.width/10,),
                          CircleAvatar(radius: 20,child: Icon(Icons.arrow_forward),backgroundColor:
                          Color(0xFFD8ECFF)  ,)
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.location_on,color: Colors.red,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Ambazhachal,Munnar',style: TextStyle(fontWeight: FontWeight.bold),),
                                Text('15.5 km from city centre',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w300,
                                    height: 0,
                                    letterSpacing: 0.22,
                                  ),)
                              ],
                            ),
                          ),
                          SizedBox(width: MediaQuery.of(context).size.width/5,),

                          CircleAvatar(radius: 20,child: Icon(Icons.redo,),backgroundColor:
                          Color(0xFFD8ECFF)  ,)
                        ],
                      ),
                    ],
                  ),
                )
              ]),
            ),

            Container(height: 80,width: MediaQuery.of(context).size.width,color: Colors.black,child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8,left: 20,),
                  child: Column(crossAxisAlignment:CrossAxisAlignment.start,children: [
                    Row(children: [
                      Text('₹5000',style: TextStyle(color: Colors.white,fontSize: 25),),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(height: 20,width: 70,decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Colors.white,
                              width: 1,
                            )),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Row(children: [
                              Text(' 5 0ffers ',style: TextStyle(fontSize: 10,color: Colors.white),),
                              Icon(Icons.keyboard_arrow_down,size: 10,color: Colors.white,)
                            ],),
                          ),
                        ),
                      ),
                    ],),
                    Text('+₹1510 taxes & service fees ', style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w300,
                      height: 0,
                      letterSpacing: 0.22,
                    ),),
                    Text('per night(Adults)', style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w300,
                      height: 0,
                      letterSpacing: 0.22,
                    ),)

                  ],),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(width: MediaQuery.of(context).size.width/3,
                    height: 35,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.blueAccent),
                    child: TextButton(onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  SelectRoom()),
                      );
                    }, child: Text('Select Stay',style: TextStyle(color: Colors.white),),),),
                )
              ],
            ),)
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