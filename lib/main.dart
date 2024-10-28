import 'package:flutter/material.dart';

void main() {
  // runApp(const MyApp());
  // }

  runApp( MaterialApp(

    home: SafeArea(

      // Center : Text is in center of the phone

      child: Scaffold(

        // body : Center(child: MyWidget()), // Text in the Center

        body:  MyWidget(),   // Text will be displayed on Top

        // body:  Center(child: MyWidget()),

      ),
    ),


    debugShowCheckedModeBanner:false , // disappear the Flutter at corner of phone

  )
  );
}
/*
 Color, without Chidl, Size with Height-Width,  Alignment(Alignment, AlignmentDirection, FractionalOffset),
 padding, margin, decoration (color, shape, borderRadius, border), transfer

 */

class MyWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
// put the cursor before Column------>Select Wrap with Container
    return Container(

        padding: EdgeInsets.all(45),

        child: Column(

            children: [

              Row(              // First row
                children: const [

                  const SizedBox(height:15),    // the gap between rowin Column

                  SizedBox(
                    width: 90,
                    child: Text('User Name : ',
                        style: TextStyle(fontSize: 14, color: Colors.red)),
                  ),

                  Text('Kien Nguyen from Flutter ',
                      style: TextStyle(fontSize: 14, color: Colors.blue))

                ],
              ),

              const SizedBox(height:15),    // the gap between row

              Row(              // Second row
                children: const [

                  const SizedBox(height:15),    // the gap between row in Column

                  SizedBox(
                    width: 90,
                    child: Text('Email : ',
                        style: TextStyle(fontSize: 14, color: Colors.red)),
                  ),

                  Text('abcd@gail.com',
                      style: TextStyle(fontSize: 14, color: Colors.blue))

                ],
              ),
               const SizedBox(height:15),    // the gap between row in Column

              Row(                         // Third row
                children: const [

                  SizedBox(
                    width: 90,
                    child: Text('Address : ',
                        style: TextStyle(fontSize: 14, color: Colors.red)),
                  ),

                  Text(' 222 Bankok, Thailand ',
                      style: TextStyle(fontSize: 14, color: Colors.blue))

                ],
              ),

              const SizedBox(height:15),    // the gap between row in Column

              Row(                        // Fourth row
                children: const [

                  SizedBox(
                    width: 90,
                    child: Text('Password : ',
                        style: TextStyle(fontSize: 14, color: Colors.red)),
                  ),

                  Text(' ',
                      style: TextStyle(fontSize: 14, color: Colors.blue))

                ],
              ),

              const SizedBox(height:15),    // the gap between row in Column

              
              Row(
                children: [
                  Expanded(                 // Create a button

                                  // if use flex: to divide the box by partion
                      child:   ElevatedButton(
                        onPressed: (){},
                        
                        // put Style for inside Button :
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey,
                          foregroundColor: Colors.white
                        ),
                        
                        child: const Text('Cancel ',style: TextStyle(fontSize: 18, color: Colors.red)),),),

                  const SizedBox(width:10),    // Width to isolate 2 boxes on the same ROW

                  Expanded(                 // Create a button

                    // if use flex: to divide the box by partion

                      child:   ElevatedButton(
                        onPressed: (){},

                        // put Style for inside Button :
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueAccent,
                            foregroundColor: Colors.white
                        ),
                        child: const Text('Submit ',style: TextStyle(fontSize: 18, color: Colors.red),),))
                ],
              )
              

            ]
        )

    );
  }
}