import 'package:comfort/Events/Activites.dart';
import 'package:comfort/Events/festivals.dart';
import 'package:comfort/Events/wonderland.dart';
import 'package:comfort/search/SearchPage.dart';
import 'package:flutter/material.dart';
class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

// class _SearchScreenState extends State<SearchScreen> {
//   void updateList(String value) {
//     setState(() {
//       displayList = data.where((element)=> element.name!.toLowerCase().contains(value.toLowerCase())).toList();
//     });
//   }
//   static List<Content> data = [
//
//   ];
//   List<Content> displayList = List.from(data);


class _MainState extends State<Main> {
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
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                height: MediaQuery.sizeOf(context).width*0.4,
                child: Stack(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/images/l q.png"),
                                fit: BoxFit.cover
                            )
                        )
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.topRight,
                            child: IconButton(onPressed: (){}, icon:Icon(Icons.menu,color: Colors.white70,)),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 40,
                              child: TextField(
                                onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context)  =>SecondScreen()
                                  ),
                                ),
                                decoration: InputDecoration(
                                  fillColor: Colors.white70 ,
                                  prefixIcon: Icon(Icons.search,color: Colors.white70,),
                                  border: OutlineInputBorder(
                                    borderSide:BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  filled: true,
                                  hintStyle: TextStyle(
                                      color: Colors.white70
                                  ),
                                  hintText: "Search",
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SingleChildScrollView(

                scrollDirection: Axis.vertical,

                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Plans",
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 16,
                            ),
                          )
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 100,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image:AssetImage(
                                "assets/images/big-sale-discounts-products 1.png",
                              ),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                      SizedBox(height: 20,),
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Event and Festivals",
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 16,
                            ),
                          )
                      ),
                      Container(
                        height: 120,
                        child: ListView.builder(
                          padding: EdgeInsets.symmetric(horizontal: 6,vertical: 14),
                          scrollDirection: Axis.horizontal,
                          itemCount: 6, itemBuilder: ( context, index) {
                          return  InkWell(onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Festivals()),
                        );
                      },
                            child: GestureDetector(
                              child: Column(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.symmetric(horizontal: 5),
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(shape: BoxShape.circle,
                                        color: Colors.green,
                                      image: DecorationImage(fit: BoxFit.fill,
                                        image: AssetImage("assets/images/happy-onam-2022-kerala-celebrates-onam-2022-16626071873x2.jpg",),),
                                  )
                                  ),
                                  Text("Onam")
                                ],
                              ),
                            ),
                          );
                        },
                        ),

                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Find your wonderland",
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 200,
                        child: ListView.builder(
                            padding: const EdgeInsets.symmetric( vertical: 12,horizontal: 8),
                            scrollDirection: Axis.horizontal,
                            itemCount: 5,
                            itemBuilder: ( context, index){
                              return InkWell(onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) =>  Munnar()),
                                );
                              },

                                child: GestureDetector(
                                  child: Column(
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.symmetric(horizontal: 4),
                                        height: 160,
                                        width: 120,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage("assets/images/WhatsApp Image 2023-10-06 at 1.33.11 AM.jpeg",),
                                          fit: BoxFit.cover,
                                        ),
                                          shape: BoxShape.rectangle,
                                          border: Border.all(color:Colors.black54,width: 0),
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                      ),
                                      Text("Munnar")
                                    ],
                                  ),
                                ),
                              );
                            }),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Offers & Deals",
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 200,
                        child: ListView.builder(
                            padding: const EdgeInsets.symmetric( vertical: 12,horizontal: 8),
                            scrollDirection: Axis.horizontal,
                            itemCount: 2,
                            itemBuilder: (BuildContext context,int index){
                              return GestureDetector(
                                child: Column(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.symmetric(horizontal: 4),
                                      height: 150,
                                      width: 250,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage("assets/images/5651956.jpg",),
                                          fit: BoxFit.cover,
                                        ),
                                        shape: BoxShape.rectangle,
                                        border: Border.all(color:Colors.black54,width: 0),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            }),
                      ),

                      Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Our service",
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 16,
                            ),
                          )
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 110,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image:AssetImage(
                                "assets/images/Screenshot 2023-09-23 164325 1.png",
                              ),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Activites",
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 16,
                            ),
                          )
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 180,
                        child: ListView.builder(
                            padding: const EdgeInsets.symmetric( vertical: 12,horizontal: 8),
                            scrollDirection: Axis.horizontal,
                            itemCount: 5,
                            itemBuilder: ( context, index){
                              return InkWell(onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) =>  Activites()),
                                );
                              },
                                child: GestureDetector(
                                  child: Column(
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.symmetric(horizontal: 4),
                                        height: 72,
                                        width: 71,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                              "assets/images/WhatsApp Image 2023-10-06 at 12.05.34 AM (1).jpeg",),
                                            fit: BoxFit.cover,
                                          ),
                                          shape: BoxShape.rectangle,
                                          border: Border.all(color:Colors.black54,width: 0),
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                      ),
                                      Text("Sip line")
                                    ],
                                  ),
                                ),
                              );
                            }),
                      ),
                    ],
                  ),
                ),
              )

            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,selectedItemColor:Colors.black,
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