import 'package:google_sign_in/google_sign_in.dart';
import'package:firebase_auth/firebase_auth.dart';

 /* Configuración Firebase_Auth*/ 

/* Creamos un archivo desntro de Repository y creamos una instancia de Firebase.
- Importamos el paquete de fire_auth y google_sign_in
- Creamos la clase y llamamos la clase AuthFirebase una vez hecho eso vamos a crear 
   2 variables globales que van a contener una instacia de Firebase y otro que va a 
  contener los inicios de secion de google */



class AuthFirebase{

 final FirebaseAuth _auth = FirebaseAuth.instance; /* variable instacia de Firebase */
 final GoogleSignIn _googleSignIn = GoogleSignIn();/* variable contener los inicios de secion de google */

 Future<UserCredential> signIn() async{ /* Creamos un futuro permite generar los token que genera google y tambien despilega el formulario de inicio de cesion de google */

   GoogleSignInAccount? googleSignInAccount = await _googleSignIn.signIn(); /* Recibe los datos  */
    GoogleSignInAuthentication gSA = await googleSignInAccount!.authentication;  /* Creamos la parte de la autenticacion se guarda en lamvariable gSA*/

     UserCredential user = await _auth.signInWithCredential(GoogleAuthProvider.credential( /* Creamos un objeto de tipo user que va a recibir los datos de inicio de cesion */
        idToken: gSA.idToken , accessToken: gSA.accessToken));   


        return user;  /* Retornamos a usuario */

 }

}