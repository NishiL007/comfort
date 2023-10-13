import 'package:comfort/search/innerpage.dart';
import 'package:comfort/search/moredetails.dart';
import 'package:comfort/search/pay.dart';
import 'package:flutter/material.dart';

class SelectRoom extends StatefulWidget {
  const SelectRoom({Key? key, }) : super(key: key);

  @override
  State<SelectRoom> createState() => _SelectRoomState();
}

class _SelectRoomState extends State<SelectRoom> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50,left: 10,right: 10),
                  child: Row(children: [
                    Container(width: 40,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.white,),
                      child: IconButton(onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  Resort()),
                        );

                      }, icon:Icon(Icons.arrow_back_ios_new_outlined)),
                    ),
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [Text('Select Room',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                        Text('Sep 30-Oct 01•1 room•2 Guests',style: TextStyle(color: Colors.grey),)
                      ],)
                  ],),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30,right: 15,top: 15),
                  child: Container(height: 30,width: 130,decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5), //border corner radius
                    boxShadow:[
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5), //color of shadow
                        spreadRadius: 5, //spread radius
                        blurRadius: 7, // blur radius
                        offset: Offset(0, 2), // changes position of shadow

                      ),

                    ],
                  ),
                    child: Center(child: Text('Breakfast Included',style: TextStyle(fontSize: 11),)),),
                ),
                Divider(
                  color: Colors.black,
                  height: 40,
                  thickness: 0.1,
                  indent: 5,
                  endIndent: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Row(
                    children: [
                      Text('Breakfast Included Suite Room •2 Adults',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Container( decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 1,
                              color:
                              Colors.redAccent.withOpacity(0.1899999976158142),
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                          height:25,width: 90,child: Center(child: Text('Top Rated',style: TextStyle(fontSize: 12,color: Colors.redAccent.shade100),)),
                        ),
                      )
                    ],
                  ),
                ),Divider(
                  color: Colors.black,
                  height: 10,
                  thickness: 0.1,
                  indent: 5,
                  endIndent: 5,
                ),



                Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 15,left: 25),
                            child: Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Image.asset(
                                "assets/images/WhatsApp Image 2023-10-07 at 3.07.38 AM (2).jpeg",fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.bed_outlined),
                                  Text("Double Bed"),
                                ],
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text("Details"),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                          height: 200, // Adjust the height as needed
                          decoration: BoxDecoration(
                            color:  Color(0xFFD8ECFF), // Background color
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Radio(
                                            value: "Room Only",

                                            onChanged: null,
                                            fillColor: MaterialStateProperty.all(Colors.blue[900]), groupValue: '',
                                          ),
                                          Text("Room Only")
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(bottom: 1),
                                              child: Container(
                                                width: 5,
                                                height: 5,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Colors.grey,
                                                ),
                                              ),
                                            ),
                                            Text(
                                              " No meals included",
                                              style: TextStyle(color: Colors.grey),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(bottom: 1),
                                              child: Container(
                                                width: 5,
                                                height: 5,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Colors.grey,
                                                ),
                                              ),
                                            ),
                                            Text(
                                              " No refundable",
                                              style: TextStyle(color: Colors.grey),
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 20,),
                                      Align(
                                        alignment: Alignment.bottomLeft,
                                        child: TextButton(
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context) => ReviewBooking()),
                                            );
                                          },
                                          child: Text("More Details"),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          SizedBox(width: 40,),
                                          Text(
                                            '5500',
                                            style: TextStyle(

                                              decoration: TextDecoration.lineThrough,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(" "),
                                          Text(
                                            '₹5000',
                                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [

                                          Padding(
                                            padding: const EdgeInsets.only(left: 10),
                                            child: Text("+ ₹300 taxes & fees"),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [

                                          Text("Per Night for 2 rooms"),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),


                    ],
                  ),
                ),
                Divider(
                  color: Colors.black,
                  height: 10,
                  thickness: 0.1,
                  indent: 5,
                  endIndent: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Row(
                    children: [
                      Text('Breakfast Included Suite Room •2 Adults',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Container( decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 1,
                              color:
                              Colors.redAccent.withOpacity(0.1899999976158142),
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                          height:25,width: 90,child: Center(child: Text('Top Rated',style: TextStyle(fontSize: 12,color: Colors.redAccent.shade100),)),
                        ),
                      )
                    ],
                  ),
                ),Divider(
                  color: Colors.black,
                  height: 10,
                  thickness: 0.1,
                  indent: 5,
                  endIndent: 5,
                ),



                Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 15,left: 25),
                            child: Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Image.asset(
                                "assets/images/WhatsApp Image 2023-10-07 at 3.07.38 AM (3).jpeg",fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.bed_outlined),
                                  Text("Double Bed"),
                                ],
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text("Details"),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                          height: 200, // Adjust the height as needed
                          decoration: BoxDecoration(
                            color:  Color(0xFFD8ECFF), // Background color
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Radio(
                                            value: "Room Only",

                                            onChanged: null,
                                            fillColor: MaterialStateProperty.all(Colors.blue[900]), groupValue: '',
                                          ),
                                          Text("Room Only")
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(bottom: 1),
                                              child: Container(
                                                width: 5,
                                                height: 5,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Colors.grey,
                                                ),
                                              ),
                                            ),
                                            Text(
                                              " No meals included",
                                              style: TextStyle(color: Colors.grey),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(bottom: 1),
                                              child: Container(
                                                width: 5,
                                                height: 5,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Colors.grey,
                                                ),
                                              ),
                                            ),
                                            Text(
                                              " No refundable",
                                              style: TextStyle(color: Colors.grey),
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 20,),
                                      Align(
                                        alignment: Alignment.bottomLeft,
                                        child: TextButton(
                                          onPressed: () {},
                                          child: Text("More Details"),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          SizedBox(width: 40,),
                                          Text(
                                            '5500',
                                            style: TextStyle(

                                              decoration: TextDecoration.lineThrough,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(" "),
                                          Text(
                                            '₹5000',
                                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [

                                          Padding(
                                            padding: const EdgeInsets.only(left: 10),
                                            child: Text("+ ₹300 taxes & fees"),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [

                                          Text("Per Night for 2 rooms"),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),


                    ],
                  ),
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
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w300,
                          height: 0,
                          letterSpacing: 0.22,
                        ),),
                        Text('per night(Adults)', style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w300,
                          height: 0,
                          letterSpacing: 0.22,
                        ),)

                      ],),
                    ),
                    SizedBox(width: 30,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(width: MediaQuery.of(context).size.width/3,
                        height: 35,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.blueAccent),
                        child: TextButton(onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  ReviewBooking()),
                          );
                        }, child: Text('Select Stay',style: TextStyle(color: Colors.white),),),),
                    )
                  ],
                ),)
              ]),
        )
    );
  }
}