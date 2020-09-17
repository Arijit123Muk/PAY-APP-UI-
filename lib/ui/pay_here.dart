import 'package:flutter/material.dart';
import 'package:vyorius/ui/accept_here.dart';

class PayHere extends StatefulWidget {
  @override
  _PayHereState createState() => _PayHereState();
}

class _PayHereState extends State<PayHere> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading:IconButton(
            icon: Icon(Icons.menu,color: Colors.white,size: 30.0,),
            onPressed: null
        ),
        title:  RichText(
          text: TextSpan(
            text: 'PAY',
            style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,fontFamily: 'KumbhSans'),
            children: <TextSpan>[
              TextSpan(text: 'APP', style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20.0,fontFamily: 'KumbhSans')),
            ],
          ),
        ),
        centerTitle: true,
        actions: [
           Stack(
             children: [
               Container(
                 margin: EdgeInsets.only(right: 10.0,top: 10.0),
                 width: MediaQuery.of(context).size.width *0.12,
                 height: MediaQuery.of(context).size.height *0.1,
                 decoration:BoxDecoration(
                   color: Colors.white38,
                   borderRadius: BorderRadius.circular(13.0),
                 ) ,
                 child: null,
               ),
               Positioned(
                 top: 8.0,
                 left: 33.0,
                 child: CircleAvatar(
                   backgroundColor: Colors.white,
                   radius: 6.0,
                   child: CircleAvatar(
                     backgroundColor: Colors.blue,
                     radius: 5.0,
                   ),
                 ),
               )
             ],
           )
        ],
      ),
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                 Center(
                   child: Container(
                     margin: EdgeInsets.only(top: 10.0),
                     width: MediaQuery.of(context).size.width *0.8,
                     height: MediaQuery.of(context).size.height *0.3,
                     child: Image.asset('assets/pay.png',fit: BoxFit.cover,),
                   ),
                 ),

                GestureDetector(
                  onTap: () => Navigator.pushNamed(context, '/accepthere'),
                  child: Container(
                    margin: EdgeInsets.only(left:10.0,right: 10.0,top: 30.0),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height *0.3,
                    decoration:BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15.0),
                    ) ,
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 10.0,bottom: 10.0),
                          width: MediaQuery.of(context).size.width *0.2,
                          height: MediaQuery.of(context).size.height *0.1,
                          child: Image.asset('assets/qr.png',fit: BoxFit.fill,),
                        ),

                        Text('Scan and Pay',style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold,fontFamily: 'KumbhSans'),),
                        SizedBox(height: 10.0,),
                        Text('Lorem Ipsum is a simple dummy text',style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold,fontFamily: 'KumbhSans',color: Colors.black54),),
                      ],
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(left:10.0,right: 10.0,top: 10.0),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height *0.3,
                  decoration:BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.0),
                  ) ,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 10.0,bottom: 10.0),
                        width: MediaQuery.of(context).size.width *0.4,
                        height: MediaQuery.of(context).size.height *0.16,
                        child: Image.asset('assets/payment.jpg',fit: BoxFit.fill,),
                      ),

                      Text('Recived Money',style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold,fontFamily: 'KumbhSans'),),
                      SizedBox(height: 10.0,),
                      Text('Lorem Ipsum is a simple dummy text',style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold,fontFamily: 'KumbhSans',color: Colors.black54),),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
