import'package:flutter/material.dart';
import 'package:proyecto_final/Bloc/BLOC_user.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:proyecto_final/UI/Screem/pantalla_2.dart';
import 'package:proyecto_final/UI/Widgets/googleBotton.dart';
import 'package:firebase_auth/firebase_auth.dart';





class Pantalla_1 extends StatelessWidget {

  late UserBloc userBloc;
 //final _controllerPassword=TextEditingController();
 //final _controllerUsername=TextEditingController();
 
 @override
 
  Widget build(BuildContext context) {
        
      userBloc = BlocProvider.of(context);
    
    return _controlSession();
    
    
  }


    Widget _controlSession(){

    return StreamBuilder(

     stream:   userBloc.authStatus,

      builder: (BuildContext context, AsyncSnapshot snapshot){

        if (!snapshot.hasData || snapshot.hasError){

          return loginApp();

        }else {

          return MyHomePage();

        }

      });

    }    

    Widget loginApp()  {
     return Scaffold( 
       appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white.withOpacity(0),
        
       
      ),
       body: Container(
         child: ListView(children:<Widget> [

           Container(height: 40.0,
           margin: EdgeInsets.only(top:15.0),
           child: Text("SHOES ",textAlign: TextAlign.center,style: TextStyle(fontSize: 30),),
           ),

           Container(height: 40.0,
           margin: EdgeInsets.only(top:15.0),
           child: Text("WELCOME",textAlign: TextAlign.center,style: TextStyle(fontSize: 30),),
           ),

           Container( 
             height: 250.0,
             width: 250.0,
             margin:EdgeInsets.only(top:15.0),
             decoration: BoxDecoration(
               image: DecorationImage(
                 fit: BoxFit.contain,
                 image: AssetImage("assets/img/logoinicio.png"),

               ),
               borderRadius: BorderRadius.all(Radius.circular(10.0)),
               shape: BoxShape.rectangle,
             ),

                      
           ),
           
            

           Container(
               padding: const EdgeInsets.all(20),
              alignment: Alignment.center,
              
               child: Text(
               'La comodidad promete ser la máxima '
                'protagonista de esta primavera-verano 2021,'
                ' este calzado reaparece una y otra vez reinventándose para dar el máximo juego posible. ',
                 softWrap: true,
               ),
             ),//Titulo
             Container(
               padding: const EdgeInsets.all(20),
              alignment: Alignment.center,
              
               child: Text(
               '',
                 softWrap: true,
               ),
             ),//

          
           
           /*Container(
             child: Center(child: MaterialButton(minWidth: 100.0,height: 40.0,onPressed: (){},
             color: Colors.purple,
             child: Text('Get started',style: TextStyle (color: Colors.white)
             ,),),)
             ,

             
           ),*/

           GoogleBotton(textC: "Login with Google", widthC: 80, heightC: 35, onPressed: (){

              userBloc.signIn().then((UserCredential user)=> print("Usted se ha autenticado como ${user.user}"));
            },
            
            )

                            

         ],) 
       )

       
     );
   }
  
 

} 