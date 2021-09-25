
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:proyecto_final/UI/Screem/botton.dart';

class ZapatillasDetalle extends StatelessWidget {
  final assetPath, cookieprice, cookiename;

  ZapatillasDetalle({this.assetPath, this.cookieprice, this.cookiename});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xFFFFFFFF)),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text('',
            style: TextStyle(
                
                fontSize: 20.0,
                color: Color(0xFF545D68))),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.share, color: Color(0xFFFFFFFF)),
            onPressed: () {},
          ),
           Container(
              child: Center( 
              child: RatingBar.builder(
              itemCount: 1,
              initialRating: 1,
              itemSize: 28,
              itemBuilder: (context, _){
                return Icon(Icons.favorite, color: Colors.red);
              },
               onRatingUpdate: (raiting){

                 print(raiting);
               },
              ),
              ),),
        ],
      ),

      body: ListView(
        children: [
          SizedBox(height: 15.0),
          Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              'Modelos',
              style: TextStyle(
                      
                      fontSize: 42.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF545D68))
            ),
          ),
            SizedBox(height: 15.0),
            Hero(
              tag: assetPath,
              child: Image.asset(assetPath,
              height: 150.0,
              width: 100.0,
              fit: BoxFit.contain
              )
            ),
            SizedBox(height: 20.0),
            Center(
              child: Text(cookieprice,
                  style: TextStyle(
                      
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFF17532))),
            ),
            SizedBox(height: 10.0),
            Center(
              child: Text(cookiename,
                  style: TextStyle(
                      color: Color(0xFF575E67),
                      
                      fontSize: 24.0)),
            ),
            SizedBox(height: 20.0),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width - 50.0,
                child: Text('Si los deseas compralo con tan solo dar un clic !!!',
                textAlign: TextAlign.center,
                style: TextStyle(
                     
                      fontSize: 16.0,
                      color: Color(0xFFB4B8B9))
                ),
              ),
            ),
            
            Expanded(
              child: Center( 
              child: RatingBar.builder(
              itemCount: 5,
              initialRating: 3.4,
              //itemSize: 20,
              itemBuilder: (context, _){
                return Icon(Icons.star, color: Colors.amber);
              },
               onRatingUpdate: (raiting){

                 print(raiting);
               },
              ),
              ),),

            SizedBox(height: 20.0),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width - 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  color: Color(0xFF424242)
                ),
                child: Center(
                  child: Text('Add to cart',
                    style: TextStyle(
                      
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                ),
                  )
                )
              )
            )
        ]
      ),

      floatingActionButton: FloatingActionButton(onPressed: () {},
      backgroundColor: Color(0xFF424242),
      child: Icon(Icons.sports_outlined),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Botton(),
    );
  }
}