import 'package:comfort/search/pay.dart';
import 'package:comfort/search/view%20layout.dart';
import 'package:flutter/material.dart';

class ReviewBooking extends StatefulWidget {
  const ReviewBooking({Key? key}) : super(key: key);

  @override
  State<ReviewBooking> createState() => _ReviewBookingState();
}

String? Home;
const List<String> list = <String>['One', 'Two', 'Three', 'Four'];
bool isChecked = false;
class _ReviewBookingState extends State<ReviewBooking> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white),
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  SelectRoom()),
                  );
                },
                icon: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.black),
              )),
        ),
        title: Text('Review Booking',style: TextStyle(color: Colors.black)),
      ),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                height: 290,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 20,
                                  width: 70,
                                  child: Center(child: const Text('Homestay')),
                                  decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                        width: 1,
                                        color: Colors.black
                                            .withOpacity(0.1899999976158142),
                                      ),
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                  ),
                                ),
                                Text(
                                  'Mistletoe',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Homestay &Cafe',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Ambazhachal,Munnar',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 10),
                                ),
                                Container(
                                  height: 20,
                                  width: 110,
                                  child: Center(
                                      child: const Text('Couple Friendly')),
                                  decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                        width: 1,
                                        color: Colors.black
                                            .withOpacity(0.1899999976158142),
                                      ),
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Expanded(child: SizedBox()),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(
                                    10.0), //add border radius

                                child: Image.asset(
                                  "assets/images/WhatsApp Image 2023-10-07 at 3.07.38 AM (2).jpeg",
                                  height: 60,
                                  width: 60,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 2),
                        child: Divider(
                          color: Colors.black,
                          height: 10,
                          thickness: 0.1,
                          indent: 5,
                          endIndent: 5,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'CHECK-IN',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                ),
                                Text(
                                  '03 Oct 2023, Tue',
                                  style: TextStyle(fontSize: 12),
                                ),
                                Text(
                                  '1 PM',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 25, right: 25, top: 12, bottom: 12),
                              child: Container(
                                height: 20,
                                width: 50,
                                child: Center(
                                    child: const Text(
                                      '1 Night',
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.black54),
                                    )),
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                      width: 1,
                                      color: Colors.black
                                          .withOpacity(0.1899999976158142),
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text('CHECK-OUT',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 12)),
                                Text(
                                  "04 Oct 2023,Tue",
                                  style: TextStyle(fontSize: 12),
                                ),
                                Text('11 PM',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 12))
                              ],
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 2),
                        child: Divider(
                          color: Colors.black,
                          height: 10,
                          thickness: 0.1,
                          indent: 5,
                          endIndent: 5,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Text('Guests & Room'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Text(
                          '2 Adults •Room',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
              )),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
                height: 168,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Suite Room',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: RichText(
                            text: TextSpan(
                              text: '• ',
                              style: TextStyle(color: Colors.black),
                              children: const <TextSpan>[
                                TextSpan(
                                    text: 'Rooms only',
                                    style: TextStyle(
                                      fontSize: 12,
                                    )),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: RichText(
                            text: TextSpan(
                              text: '• ',
                              style: TextStyle(color: Colors.black),
                              children: const <TextSpan>[
                                TextSpan(
                                    text: 'No meals included',
                                    style: TextStyle(
                                      fontSize: 12,
                                    )),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 2),
                          child: Divider(
                            color: Colors.black,
                            height: 10,
                            thickness: 0.1,
                            indent: 5,
                            endIndent: 5,
                          ),
                        ),
                        Text('Non-Refundable',
                            style: TextStyle(
                              fontSize: 12,
                            )),
                        Text('On Cancellation ,You will not any refund',
                            style: TextStyle(
                              fontSize: 12,
                            )),
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Text(
                            'Inclusion&Cancellation Policy',
                            style: TextStyle(
                                color: Colors.blueAccent, fontSize: 12),
                          ),
                        )
                      ],
                    ))),
          ),
          Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                  height: 350,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Price Breakup',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('2 Room×1 Night '),
                                    Text('Base Price'),
                                  ],
                                ),
                              ),
                              Expanded(child: SizedBox()),
                              Text('₹5000')
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 2),
                            child: Divider(
                              color: Colors.black,
                              height: 20,
                              thickness: 0.1,
                              indent: 5,
                              endIndent: 5,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Text('Total Disount '),
                                Expanded(child: SizedBox()),
                                Text('₹5000')
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 2),
                            child: Divider(
                              color: Colors.black,
                              height: 20,
                              thickness: 0.1,
                              indent: 5,
                              endIndent: 5,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Text('Price after Dicount '),
                                Expanded(child: SizedBox()),
                                Text('₹4700')
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 2),
                            child: Divider(
                              color: Colors.black,
                              height: 20,
                              thickness: 0.1,
                              indent: 5,
                              endIndent: 5,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Text('Service fee '),
                                Expanded(child: SizedBox()),
                                Text('₹100')
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 2),
                            child: Divider(
                              color: Colors.black,
                              height: 20,
                              thickness: 0.1,
                              indent: 5,
                              endIndent: 5,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Text(
                                  'Total Amount to be paid',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Expanded(child: SizedBox()),
                                Text('₹4800')
                              ],
                            ),
                          ),
                        ],
                      )))),
          Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Coupon Codes',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 40,
                              child: TextField(
                                decoration: InputDecoration(
                                  fillColor: Colors.grey.shade300,
                                  hintStyle: TextStyle(color: Colors.black),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  filled: true,
                                  hintText: "Have a Coupon Code ?",
                                  suffix: TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      'Apply',
                                      style:
                                      TextStyle(color: Colors.blueAccent),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Radio(
                                  value: Home,
                                  groupValue: Home,
                                  onChanged: (index) {}),
                              Text('HOMESTAY'),
                              Text(
                                'Remove',
                                style: TextStyle(
                                    color: Colors.blueAccent, fontSize: 10),
                              ),
                              Expanded(child: SizedBox()),
                              Text('₹100')
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text(
                                'Congratulation! Discount of INR 100 has been'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text('applied for your Booking'),
                          )
                        ],
                      )))),
          Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                  height: 250,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [Padding(
                          padding: const EdgeInsets.only(top: 10,left: 20),
                          child: Text('I am booking for',style: TextStyle(fontWeight: FontWeight.bold),),
                        ),
                          Row(
                              children: [
                                Radio(
                                    value: Home,
                                    groupValue: Home,
                                    onChanged: (index) {}),
                                Text('Myself'),

                                Radio(
                                    value: 1,
                                    groupValue: Home,
                                    onChanged: (index) {}),
                                Text('Someone Else')

                              ]
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left:
                            20,),
                            child:   Row(children: [

                              Container(

                                height: 30,

                                width: 40,
                                child: TextField(
                                  decoration: InputDecoration(
                                      fillColor: Colors.grey.shade300,
                                      hintStyle: TextStyle(color: Colors.black54,fontSize: 10),
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.white),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      filled: true,
                                      hintText: 'Mr'

                                  ),
                                ),

                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey.shade300),

                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 3),
                                child: Container(
                                  height: 30,
                                  width: 120,
                                  child: TextField(
                                    decoration: InputDecoration(
                                        fillColor: Colors.grey.shade300,
                                        hintStyle: TextStyle(color: Colors.black54,fontSize: 10),
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide(color: Colors.white),
                                          borderRadius: BorderRadius.circular(5),
                                        ),
                                        filled: true,
                                        hintText:"FIRST NAME"

                                    ),
                                  ),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(left: 3),
                                child: Container(
                                  height: 30,
                                  width: 120,
                                  child: TextField(
                                    decoration: InputDecoration(
                                        fillColor: Colors.grey.shade300,
                                        hintStyle: TextStyle(color: Colors.black54,fontSize: 10),
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide(color: Colors.white),
                                          borderRadius: BorderRadius.circular(5),
                                        ),
                                        filled: true,
                                        hintText:"LAST NAME"

                                    ),
                                  ),
                                ),
                              ),



                            ],),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5,bottom: 5,left: 20),
                            child: Container(
                              height: 30,
                              width: 286,
                              child: TextField(
                                decoration: InputDecoration(
                                    fillColor: Colors.grey.shade300,
                                    hintStyle: TextStyle(color: Colors.black54,fontSize: 10),
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    filled: true,
                                    hintText:"LAST NAME"

                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Row(
                              children: [
                                Container(
                                  height: 30,
                                  width: 40,
                                  child: TextField(
                                    decoration: InputDecoration(
                                        fillColor: Colors.grey.shade300,
                                        hintStyle: TextStyle(color: Colors.black54,fontSize: 8),
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide(color: Colors.white),
                                          borderRadius: BorderRadius.circular(5),
                                        ),
                                        filled: true,
                                        hintText: '+91'


                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 3),
                                  child: Container(
                                    height: 30,
                                    width: 240,
                                    child: TextField(
                                      decoration: InputDecoration(
                                          fillColor: Colors.grey.shade300,
                                          hintStyle: TextStyle(color: Colors.black54,fontSize: 10),
                                          border: OutlineInputBorder(
                                            borderSide: BorderSide(color: Colors.white),
                                            borderRadius: BorderRadius.circular(5),
                                          ),
                                          filled: true,
                                          hintText: 'Contact No'

                                      ),
                                    ),
                                  ),
                                ),
                              ],

                            ),
                          ),
                          Row(
                            children: [
                              Checkbox(
                                value: isChecked,
                                onChanged: (bool? value) { // This is where we update the state when the checkbox is tapped
                                  setState(() {
                                    isChecked = value!;
                                  });
                                },
                              ),
                              Text('I have a GST number (Optional)')
                            ],
                          ),

                        ],

                      )
                  ))),
          Container(height: 80,width: MediaQuery.of(context).size.width,color: Colors.black87,child: Row(children: [
            Padding(
              padding: const EdgeInsets.only(top: 12,left: 10),
              child: Column(crossAxisAlignment:CrossAxisAlignment
                  .start,children: [Text('₹4800',style: TextStyle(color: Colors.white,fontSize: 25,),),
                Text('Incl of taxes & fees',style: TextStyle(color: Colors.white,fontSize: 10,),),],),
            ),
            SizedBox(width: MediaQuery.of(context).size.width/4,),
            Container(height: 40,width: 140,decoration: BoxDecoration
              (borderRadius: BorderRadius
                .circular(5),color: Colors.blueAccent
            ),
              child: TextButton(onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  SelectPayment()),
                );

              }, child: Text('Continue',style: TextStyle(color: Colors.white),)),
            )
          ],),)

        ]),
      ),
    );
  }
}