import 'package:comfort/search/moredetails.dart';
import 'package:flutter/material.dart';

class SelectPayment extends StatefulWidget {
  const SelectPayment({Key? key}) : super(key: key);

  @override
  State<SelectPayment> createState() => _SelectPaymentState();
}

class _SelectPaymentState extends State<SelectPayment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.grey.shade100,
      appBar: AppBar(backgroundColor: Colors.white,
        leading: IconButton(onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) =>  ReviewBooking()),
          );
        },
          icon: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.black),),
        title: Text('Select Payment Mode',style: TextStyle(color: Colors.black)),
      ),
      body:Column(crossAxisAlignment:CrossAxisAlignment.start,children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(height: 150,width:
          MediaQuery.of(context).size.width,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white)
            ,child:
            Column(children: [
              Row(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Due Now',style: TextStyle(fontWeight: FontWeight.bold),),
                ),Expanded(child: SizedBox()),Column(crossAxisAlignment:CrossAxisAlignment.start,children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text('₹4800'),
                  ),Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Text('saving +200',style: TextStyle(color: Colors.green,fontSize: 12),),
                  )
                ],)
              ],),
              Padding(
                padding: const EdgeInsets.only(top: 2),
                child: Divider(
                  color: Colors.black,
                  height: 25,
                  thickness: 0.1,
                  indent: 5,
                  endIndent: 5,
                ),
              ),
              Row(mainAxisAlignment:MainAxisAlignment.start,crossAxisAlignment:CrossAxisAlignment.start,children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0), //add border radius
                    child: Image.asset(

                      "assets/images/WhatsApp Image 2023-10-07 at 3.07.38 AM (2).jpeg",
                      height: 60,
                      width:60,
                      fit:BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(crossAxisAlignment:CrossAxisAlignment.start,children: [
                      Text('Mistletoe Homestay & Cafe',style: TextStyle(fontWeight: FontWeight.bold),),
                      Text('03oct/1:00pm-4 Oct/11:00 Am')
                    ],),
                  ),
                )
              ],)
            ],),),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Other Pay Options',style: TextStyle(fontWeight: FontWeight.bold),),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white)
            ,height: 180,width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Row(crossAxisAlignment:CrossAxisAlignment.start,children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10,left:30,),
                    child: Container(height:50,width:50,
                    child: Image.asset('assets/images/WhatsApp Image 2023-10-12 at 3.15.05 AM.jpeg')),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10,left: 5,right: 5),
                    child: Column(children: [Text('UPI Options ',style: TextStyle(fontWeight: FontWeight.bold),),
                      Row(children: [
                        Container(height: 30,width: 50,child: Image.asset('assets/images/WhatsApp Image 2023-10-12 at 3.15.04 AM.jpeg'),),
                        Container(height: 30,width: 50,child: Image.asset('assets/images/WhatsApp Image 2023-10-12 at 3.15.08 AM (2).jpeg'),)],)

                    ],),
                  ),
                  Expanded(child: SizedBox(),),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: IconButton(onPressed: () {

                    }, icon: Icon(Icons.arrow_forward_ios,color: Colors.blueAccent,),),
                  )
                ],),
                Padding(
                  padding: const EdgeInsets.only(top: 2),
                  child: Divider(
                    color: Colors.black,
                    height: 25,
                    thickness: 0.1,
                    indent: 5,
                    endIndent: 5,
                  ),
                ),
                Row(crossAxisAlignment:CrossAxisAlignment.start,children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10,left:30,),
                    child: Container(height:50,width:50,child: Image.asset('assets/images/WhatsApp Image 2023-10-12 at 3.55.25 AM.jpeg')),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(top: 10,left: 5,right: 5),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Credit/Debit/ATM Card',style: TextStyle(fontWeight: FontWeight.bold),),
                      )
                  ),
                  Expanded(child: SizedBox(),),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: IconButton(onPressed: () {

                    }, icon: Icon(Icons.arrow_forward_ios,color: Colors.blueAccent,),),
                  )
                ])
              ],
            ),

          ),
        )

      ],) ,
    );
  }
}