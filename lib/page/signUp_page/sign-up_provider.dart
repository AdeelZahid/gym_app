
import 'package:flutter/cupertino.dart';
import 'package:flutter_smart_gym/model/SignupUser.dart';

class SignUpProvider extends ChangeNotifier{

  String confirmPassword = "";


  SignUpUser signUpUser = SignUpUser();


  void onSaveUsername(String? value){
    signUpUser.email = value ?? "";
  }

  void onSavedPassword  (String? value) {
    signUpUser.password = value ?? "";
    // print (password);
  }

  void onSaveConfirmPassword(String? value){
    confirmPassword = value ?? "";
  }

  void onChancedPassword  (String value) {
    signUpUser.password = value;
  }
  void onChangedConfirmPassword  (String value) {
    confirmPassword = value;
  }

  String? validateUsername(String? value){
    signUpUser.email = value ?? "";
    if(value==null || value.isEmpty){
      return "please enter your user Email";
    }else if(value.length<3 ){
      return "Email length must be 3 or long";
    }else{
      return null;
    }
  }

  String? validatePassword(String? value){
    signUpUser.password = value ?? "";
    if (value == null || value.isEmpty) {
      return 'Password cannot be empty';
    }else if(value.length<3){
      return "Passwrod length must be 3 character or long";
    } else if(value.length>16){
      return "Password length must be 16 character or less";
    }else {
      return null;
    }
  }

  String? validateConfirmPassword(String? value){
    confirmPassword = value ?? "";
    if(value==null  || value.isEmpty){
      return "Confirm password is required";
    }
    else if(value.length<3){
      return "password must 3 charactor or long";
    }else if(value.length>16) {
      return "Password length must be 16 character or less";
    } else if(signUpUser.password != confirmPassword){
      return "password not match";
    }

    return null;
  }

  void onSubmit(){
    print({"${signUpUser.email}, ${signUpUser.password}, $confirmPassword"});
  }
/// Form provider End
}
