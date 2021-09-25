// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';


// ignore: must_be_immutable
class GoogleBotton extends StatefulWidget {
 final String textC;
 double heightC = 0.0;
 double widthC = 0.0;
final VoidCallback onPressed;   


  // ignore: use_key_in_widget_constructors
  GoogleBotton({ 
     Key? key,
     required this.textC,
     required this.widthC,
     required this.heightC,
     required this.onPressed

 });
 
 @override
 State<StatefulWidget> createState() {

     return _GoogleBotton();
 }
   

}


class _GoogleBotton extends State<GoogleBotton>{
    @override

    Widget build(BuildContext context) {
      return InkWell(
          onTap: widget.onPressed,
          child: Container(
          // ignore: prefer_const_constructors
          margin: EdgeInsets.only(top:20),
          width: widget.widthC ,
          height: widget.heightC,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
           // ignore: prefer_const_constructors
           gradient: LinearGradient(
            // ignore: prefer_const_literals_to_create_immutables
            colors:   [
                 // ignore: prefer_const_constructors
                 Color(0xFF424242),
                 // ignore: prefer_const_constructors
                 Color(0xFF424242)

              ],
              // ignore: prefer_const_constructors
              begin: FractionalOffset(0.7,0.2),
               // ignore: prefer_const_constructors
               end : FractionalOffset(3.0,0.6)
            
            ) ),
             
             child: Center (
                 // ignore: prefer_const_constructors
                 child: Text(widget.textC, style: TextStyle(fontSize: 20, color: Colors.white,), ),

              ),
            

          ),  

        );
    }

}