import 'package:proyecto_final/Repository/auth_firebase.dart';
import 'package:firebase_auth/firebase_auth.dart';



class AuthRepository {

    final _authFirebase= AuthFirebase(); /*Creamos una variable llamamos a la clase que creamos en authFirebase */
    Future <UserCredential> singInFirebase() => _authFirebase.signIn(); /* Creamos un futuro que va a estar esperando un objeto de tipo <UserCredential> */
}