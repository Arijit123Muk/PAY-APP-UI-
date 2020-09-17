import 'package:flutter/material.dart';
import 'package:vyorius/model/qr_code_scanner.dart';


class AcceptHere extends StatefulWidget {
  @override
  _AcceptHereState createState() => _AcceptHereState();
}

class _AcceptHereState extends State<AcceptHere> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        elevation: 3.0,
        shadowColor: Colors.white,
        leading:IconButton(
            icon: Icon(Icons.arrow_back_ios,color: Colors.white,size: 30.0,),
            onPressed: () => Navigator.pop(context),
        ),
        title: RichText(
          text: TextSpan(
            text: 'ACCEPTED ',
            style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,fontFamily: 'KumbhSans'),
            children: <TextSpan>[
              TextSpan(text: 'HERE', style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20.0,fontFamily: 'KumbhSans')),
            ],
          ),
        ),
        centerTitle: true,
        actions: [
         IconButton(
             icon: Icon(Icons.more_vert,color: Colors.white,size: 35.0,),
             onPressed: null)
        ],
      ),

      body:SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 15.0,bottom: 10.0),
                  width: MediaQuery.of(context).size.width *0.3,
                  height: MediaQuery.of(context).size.height *0.1,
                  child: Image.asset('assets/coin.png',fit: BoxFit.cover,),
                ),

                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('To Pay',style: TextStyle(fontSize: 20.0,fontFamily: 'KumbhSans',color: Colors.white),),
                      SizedBox(height: 10.0,),
                      Text('Rishav Dubey',style: TextStyle(fontSize: 20.0,fontFamily: 'KumbhSans',color: Colors.white,fontWeight: FontWeight.bold,),),
                    ],
                  ),
                ),

              ],
            ),

            Container(
              margin: EdgeInsets.only(top: 15.0,bottom: 10.0),
              color: Colors.black,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height *0.4,
              child: QrCodeScanner(),
            ),

            Center(
              child: CircleAvatar(
                radius: 30.0,
                 backgroundColor: Colors.white38,
                child: Text('OR',style: TextStyle(fontSize: 20.0,fontFamily: 'KumbhSans',color: Colors.white,fontWeight: FontWeight.bold,),),
              ),
              ),

            Container(
              decoration:BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.0),
              ) ,
              margin: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height *0.2,
              child: Row(
                children: [
                   Padding(
                     padding: const EdgeInsets.only(left:15.0),
                     child: Icon(Icons.phone_android_outlined,size: 80.0,color: Colors.black54),
                   ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:15.0,top: 50.0),
                        child: Text('Enter Mobile Number',style: TextStyle(fontSize: 14.0,fontFamily: 'KumbhSans',color: Colors.blue,fontWeight: FontWeight.bold,),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:15.0,top: 10.0),
                        child: Text('9990694565',style: TextStyle(fontSize: 30.0,fontFamily: 'KumbhSans',color: Colors.black,fontWeight: FontWeight.bold,),),
                      ),
                    ],
                  )
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left:15.0,top: 5.0),
              child: Text('you are receiving money in',style: TextStyle(fontSize: 20.0,fontFamily: 'KumbhSans',color: Colors.white,),),
            ),

            Padding(
              padding: const EdgeInsets.only(left:15.0,top: 10.0,bottom: 10.0),
              child: Text('TIPNTAP WALLET',style: TextStyle(fontSize: 19.0,fontFamily: 'KumbhSans',color: Colors.white,fontWeight: FontWeight.bold,),),
            ),

          ],
        ),
      ),
    );
  }


}
