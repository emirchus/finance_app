import 'package:finance_app/core/entities/user/user_entity.dart';
import 'package:finance_app/core/enums/auth_enum.dart';
import 'package:finance_app/core/services/user_services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

final FirebaseAuth auth = FirebaseAuth.instance;

class UserServiceImpl extends UserService {
  const UserServiceImpl(super.consumer, super.userRepository);

  @override
  Future<void> authenticate(AuthEnum authEnum, [String? email, String? password]) async {
    assert(
      authEnum == AuthEnum.email && (email == null || password == null),
      'Email and password must be provided for email authentication',
    );

    UserEntity? userEntity;
    switch (authEnum) {
      case AuthEnum.google:
        try {
          userEntity = await signInWithGoogle();
        } catch (e) {
          rethrow;
        }
        break;
      default:
        throw Exception('AuthEnum not implemented');
    }

    await userRepository.add(userEntity);
  }

  Future<UserEntity> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      final GoogleSignInAuthentication googleAuth = await googleUser!.authentication;

      final OAuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      final UserCredential userCredential = await auth.signInWithCredential(credential);
      final User? user = userCredential.user;

      if (user == null) throw Exception('User is null');

      return UserEntity(
        id: user.uid,
        name: user.displayName!,
        email: user.email!,
        photoUrl: user.photoURL,
      );
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> signOut() async {}
}
