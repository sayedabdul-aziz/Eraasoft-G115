import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:se7ety_4_15/features/auth/presentation/manager/auth_states.dart';

class AuthCubit extends Cubit<AuthStates> {
  AuthCubit() : super(AuthInitialState());

  // LOGIN
  login(String email, String password) async {
    emit(LoginLoadingState());
    try {
      var credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);

      emit(LoginSuccessState(role: credential.user!.photoURL!));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        emit(LoginErrorState('الحساب غير موجود'));
      } else if (e.code == 'wrong-password') {
        emit(LoginErrorState('كلمة السر خطا'));
      } else {
        emit(LoginErrorState('حدثت مشكله فالتسجيل حاول لاحقا'));
      }
    }
  }

  // REGISTER A Doctor
  registerDoctor(String name, String email, String password) async {
    emit(RegisterLoadingState());
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      User user = credential.user!;
      await user.updateDisplayName(name);
      await user.updatePhotoURL('0');

      // store in firestore
      FirebaseFirestore.instance.collection('doctors').doc(user.uid).set({
        'name': name,
        'image': '',
        'specialization': '',
        'rating': 3,
        'email': user.email,
        'phone1': '',
        'phone2': '',
        'bio': '',
        'openHour': '',
        'closeHour': '',
        'address': '',
        'uid': user.uid,
      }, SetOptions(merge: true));
      emit(RegisterSuccessState());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        emit(RegisterErrorState('كلمة المرور ضعيفة'));
        // print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        emit(RegisterErrorState('الحساب موجود بالفعل'));
      } else {
        emit(RegisterErrorState('حدثت مشكلة فالتسجيل'));
      }
    }
  }

  // REGISTER A Patient
  registerPatient(String name, String email, String password) async {
    emit(RegisterLoadingState());
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      User user = credential.user!;
      await user.updateDisplayName(name);

      // role
      await user.updatePhotoURL('1');

      // store in firestore
      FirebaseFirestore.instance.collection('patients').doc(user.uid).set({
        'name': name,
        'image': '',
        'age': null,
        'email': email,
        'phone': '',
        'bio': '',
        'city': '',
        'uid': user.uid,
      }, SetOptions(merge: true));
      emit(RegisterSuccessState());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        emit(RegisterErrorState('كلمة المرور ضعيفة'));
        // print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        emit(RegisterErrorState('الحساب موجود بالفعل'));
      } else {
        emit(RegisterErrorState('حدثت مشكلة فالتسجيل'));
      }
    }
  }

  // Upload Doctor
  updateDoctorData(
      {required String uid,
      required String specialization,
      required String image,
      required String phone1,
      String? phone2,
      required String bio,
      required String startTime,
      required String endTime,
      required String address}) async {
    emit(UpdateLoadingState());
    try {
      FirebaseFirestore.instance.collection('doctors').doc(uid).set({
        'image': image,
        'specialization': specialization,
        'phone1': phone1,
        'phone2': phone2,
        'bio': bio,
        'openHour': startTime,
        'closeHour': endTime,
        'address': address,
      }, SetOptions(merge: true));
      emit(UpdateSuccessState());
    } catch (e) {
      emit(UpdateErrorState(e.toString()));
    }
  }
}
