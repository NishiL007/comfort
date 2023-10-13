import 'package:comfort/search/SearchPage.dart';
import 'package:comfort/search/innerpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ResortListScreen extends StatefulWidget {
  const ResortListScreen({Key? key}) : super(key: key);

  @override
  State<ResortListScreen> createState() => _ResortListScreenState();
}

class _ResortListScreenState extends State<ResortListScreen> {
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
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondScreen()),
              );
            },
            icon: Icon(Icons.arrow_back_ios_new_outlined),color: Colors.black,
          ),
          backgroundColor: Color(0xFFF3F3F3),
          title: Row(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 58),
                    child: Text(
                      "Munnar",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        height: 0,
                        letterSpacing: 0.32,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                    ),
                    child: Text(
                      "1 Oct - 3 Oct, 5 Guests",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        height: 0,
                        letterSpacing: 0.24,
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Icon(
                          Icons.edit,
                          color: Colors.blueAccent,
                          size: 18,
                        )),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 2),
                      child: Text(
                        'Edit',
                        style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 13,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Icon(
                          Icons.search,
                          color: Colors.blueAccent,
                          size: 18,
                        )),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 2),
                      child: Text(
                        'Search',
                        style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Icon(
                          Icons.location_on,
                          color: Colors.blueAccent,
                          size: 18,
                        )),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text(
                        'Map',
                        style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
            ],
          )),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      width: 100,
                      height: 38,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text(
                              'Sort By',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color:
                                Colors.black.withOpacity(0.699999988079071),
                                fontSize: 12,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                height: 0,
                                letterSpacing: 0.28,
                              ),
                            ),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.sync_alt,
                                size: 18,
                              ))
                        ],
                      ),
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 1,
                            color: Colors.black.withOpacity(0.1899999976158142),
                          ),
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 110,
                        height: 38,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text(
                                'All Filters',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black
                                      .withOpacity(0.699999988079071),
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                  letterSpacing: 0.28,
                                ),
                              ),
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.tune,
                                  size: 18,
                                ))
                          ],
                        ),
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 1,
                              color:
                              Colors.black.withOpacity(0.1899999976158142),
                            ),
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 75,
                      height: 38,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text(
                              'Price',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color:
                                Colors.black.withOpacity(0.699999988079071),
                                fontSize: 12,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                height: 0,
                                letterSpacing: 0.28,
                              ),
                            ),
                          ),
                          Icon(
                            Icons.keyboard_arrow_down,
                            size: 25,
                          )
                        ],
                      ),
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 1,
                            color: Colors.black.withOpacity(0.1899999976158142),
                          ),
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 99,
                        height: 38,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text(
                                'Popular',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black
                                      .withOpacity(0.699999988079071),
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                  letterSpacing: 0.28,
                                ),
                              ),
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.keyboard_arrow_down,
                                  size: 18,
                                ))
                          ],
                        ),
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 1,
                              color:
                              Colors.black.withOpacity(0.1899999976158142),
                            ),
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  'Showing Properties in Munnar',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    height: 0,
                    letterSpacing: 0.40,
                  ),
                ),
              ),
              Container(

                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(

                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (context, index) {

                      return InkWell(onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Resort()),
                        );
                      },

                        child: Column(children: [
                          Container(
                            width: 367,
                            height:408,
                            child: Stack(
                              children: [
                                Positioned(

                                  top: 0,
                                  child: Container(
                                    width: 367,
                                    height: 408,
                                    decoration: ShapeDecoration(
                                      color:Color(0xFFF4F4F4),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 0,
                                  top: 5,
                                  child: SingleChildScrollView(scrollDirection: Axis.horizontal,
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 367,
                                          height: 180,
                                          decoration: ShapeDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/images/WhatsApp Image 2023-10-06 at 4.02.24 AM.jpeg"),
                                              fit: BoxFit.cover,
                                            ),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(35),
                                                topRight: Radius.circular(35),
                                                bottomLeft: Radius.circular(2),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),

                                Positioned(
                                  left: 8,
                                  top: 217,
                                  child: Text(
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
                                ),





                                Positioned(
                                  left: 6,
                                  top: 193,
                                  child: SizedBox(
                                    width: 58,
                                    height: 18,
                                    child: RatingBarIndicator(
                                      rating: 4,
                                      itemCount: 5,

                                      itemSize: 20.0,
                                      physics: BouncingScrollPhysics(),
                                      itemBuilder: (context, _) => Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 116,
                                  top: 193,
                                  child: SizedBox(
                                    width: 58,
                                    height: 18,
                                    child: Text(
                                      '52 Rating',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.black
                                            .withOpacity(0.6499999761581421),
                                        fontSize: 10,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                        letterSpacing: 0.20,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 3,
                                  top: 247,
                                  child: SizedBox(
                                    width: 58,
                                    height: 18,
                                    child: Text(
                                      'Munnar',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.black
                                            .withOpacity(0.6499999761581421),
                                        fontSize: 12,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                        letterSpacing: 0.24,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  right: 140,
                                  top: 301,
                                  child: SizedBox(
                                    width: 206,
                                    height: 18,
                                    child: Text(
                                      '2 Bedrooms/ Sleeps 4 guests',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.black
                                            .withOpacity(0.6499999761581421),
                                        fontSize: 13,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                        letterSpacing: 0.26,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 10,
                                  top: 329,
                                  child: SizedBox(
                                    width: 163,
                                    height: 18,
                                    child: Text(
                                      'Breakfast available at extra charge',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                        letterSpacing: 0.24,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 8,
                                  top: 277,
                                  child: SizedBox(
                                    width: 84,
                                    height: 18,
                                    child: Text(
                                      'Entire Villa',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                        height: 0,
                                        letterSpacing: 0.30,
                                      ),
                                    ),
                                  ),
                                ),

                                Positioned(
                                  left: 302,
                                  top: 280,
                                  child: SizedBox(
                                    width: 33,
                                    height: 19,
                                    child: Text(
                                      '5500',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(decoration: TextDecoration.lineThrough,
                                        color: Color(0xFF040404),
                                        fontSize: 12,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                        letterSpacing: 0.24,
                                      ),
                                    ),
                                  ),
                                ),


                                Positioned(
                                  left: 278,
                                  top: 290,
                                  child: SizedBox(
                                    width: 67,
                                    height: 31,
                                    child: Text(
                                      '5000',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20
                                        ,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                        height: 0,
                                        letterSpacing: 0.50,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 240,
                                  top: 316,
                                  child: Text(
                                    '+300 taxes& fees',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black
                                          .withOpacity(0.699999988079071),
                                      fontSize: 12,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                      letterSpacing: 0.24,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 217,
                                  top: 332,
                                  child: Text(
                                    'Per Night for 2 rooms',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black
                                          .withOpacity(0.699999988079071),
                                      fontSize: 12,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                      letterSpacing: 0.24,
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ]),
                      );
                    }),

              ),


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
      ),);
  }
}
