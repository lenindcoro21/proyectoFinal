// ignore: file_names
import 'package:firebase_auth/firebase_auth.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:proyecto_final/Repository/auth_repository.dart';

class UserBloc implements Bloc {
  final _authRepository = AuthRepository(); /* Creamos una variabke que va a guardar AuthRepository con la funcion que creamos anteriormente  */


  Stream<User?> streamFirebase = FirebaseAuth.instance.authStateChanges();
  Stream <User?> get authStatus => streamFirebase;

  Future <UserCredential> signIn(){ /* Creamos un futuro que va a recibir un <UserCredential> que va a tener el metodo  signIn() */
    return _authRepository.singInFirebase(); /* Lo que va a devolver es el objeto _authRepository.singInFirebase()  */
  }

  @override
  void dispose() {
    
  }

} 