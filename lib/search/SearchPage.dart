
import 'package:comfort/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'Innersearch.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
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
        title: Center(child: Padding(
          padding: const EdgeInsets.only(right: 30),
          child: Text("Homestays",style: TextStyle(color: Colors.black),),
        )),
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              color: Colors.white30,
              child: IconButton(
              color: Colors.black,
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>Main(),)
                ),
                icon: Icon(  Icons.arrow_back_ios_new_outlined),
              )),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Where do you want to stay?"),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  height: 40,
                  width: 330,
                  child: TextField(
                    decoration: new InputDecoration(
                        fillColor: Colors.white70,
                        focusColor: Colors.white70,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 1.0),
                        ),
                        hintText: 'Find Home stays..',
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.grey,
                        )),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 10),
                child: Row(
                  children: [
                    Container(
                      height: 40,
                      width: 162,
                      child: TextField(
                        decoration: new InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide(color: Colors.grey, width: 1.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide(color: Colors.grey, width: 1.0),
                            ),
                            hintText: 'Check in',
                            prefixIcon: Icon(
                              Icons.calendar_month,
                              color: Colors.grey,
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Container(
                        height: 40,
                        width: 162,
                        child: TextField(
                          decoration: new InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                BorderSide(color: Colors.grey, width: 1.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                BorderSide(color: Colors.grey, width: 1.0),
                              ),
                              hintText: 'Check out',
                              prefixIcon: Icon(
                                Icons.calendar_month,
                                color: Colors.grey,
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 10),
                child: Row(
                  children: [
                    Container(
                      height: 40,
                      width: 162,
                      child: TextField(
                        decoration: new InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide(color: Colors.grey, width: 1.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide(color: Colors.grey, width: 1.0),
                            ),
                            hintText: 'Guests',
                            prefixIcon: Icon(
                              Icons.groups_2_outlined,
                              color: Colors.grey,
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 6),
                      child: Container(
                        height: 40,
                        width: 162,
                        child: TextField(
                          decoration: new InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                BorderSide(color: Colors.grey, width: 1.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                BorderSide(color: Colors.grey, width: 1.0),
                              ),
                              hintText: 'Rooms',
                              prefixIcon: Icon(
                                Icons.home,
                                color: Colors.grey,
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 5),
                child: Container(
                  height: 40,
                  width: 330,
                  child: TextField(
                    decoration: new InputDecoration(
                      fillColor: Colors.white70,
                      focusColor: Colors.white70,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 1.0),
                      ),
                      hintText: 'Tap guest love for more services',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: 330,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.blueAccent),
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ResortListScreen()),
                        );
                      },
                      child: Text(
                        'Search Now',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      )),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Great value packages',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8, left: 8, top: 8),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    height: 150,
                    width: 330,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/WhatsApp Image 2023-10-04 at 11.22.29 PM.jpeg'),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left:35),
                child: Container(
                  height: 130,
                  width: 280,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white60, boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 8.0, // soften the shadow
                      spreadRadius: 1.0, //extend the shadow

                    ),
                  ],
                  ),

                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8,left: 8),
                        child: Row(
                            children: [
                              Text('Hiliya Resort',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),
                              SizedBox(width: 50,),
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
                            ]
                        ),

                      ),
                      Row(children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Text('Kenichira',style: TextStyle(color: Colors.blueAccent,fontSize: 12)),
                        ),
                        SizedBox(width: 140,),Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child:   Column(crossAxisAlignment:CrossAxisAlignment.start,children: [Text('52 Rating' ,style: TextStyle(color: Colors.grey,fontSize: 10),),

                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text('1500',style: TextStyle(decoration: TextDecoration.lineThrough,fontSize: 10,color: Colors.grey),),
                            )

                          ],),
                        )
                      ],),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Beds in a home stay",style: TextStyle(fontSize: 13),),
                                Text("Sleep 2 Guests",style: TextStyle(fontSize: 10,color: Colors.grey),)
                              ],
                            ),
                          ),
                          SizedBox(width: 60,),
                          Padding(
                            padding: const EdgeInsets.only(left:12),
                            child: Text("₹1150",style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500)),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Row(children: [
                          Text('Free Cancellation',style: TextStyle(color: Colors.green),),
                          SizedBox(
                              width: 40
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 11),
                            child: Column(crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('+₹300 taxes &fees',style: TextStyle(fontSize: 10,color: Colors.grey)),
                                Text('Per Night for 2 room',style: TextStyle(fontSize: 10,color: Colors.grey))
                              ],
                            ),
                          )
                        ],),
                      )
                    ],
                  ),

                ),
              ),SizedBox(height: 30,)
            ],
          ),
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