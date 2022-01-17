import 'package:flutter/material.dart';
import 'package:flutter_smart_gym/constant/theme_color.dart';

class InputFieldSuffixIcon extends StatefulWidget {
  String? initialValue;
  String? hintText;
  String? labelText;
  Widget? prefixIcon;
  bool isPassword;

  bool? check;
  void Function(String)? onChanged;
  void Function(String?)? onSaved;
  String? Function(String?)? validate;
  InputFieldSuffixIcon({
    Key? key,
    this.initialValue,
    this.hintText,
    this.labelText,
    this.onSaved,
    this.onChanged,
    this.validate,
    this.prefixIcon,
    this.isPassword = true,
  }) : super(key: key);

  @override
  _InputFieldSuffixIconState createState() => _InputFieldSuffixIconState();
}

class _InputFieldSuffixIconState extends State<InputFieldSuffixIcon> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: TextFormField(

        obscureText: widget.isPassword,
        initialValue: widget.initialValue,
        decoration: InputDecoration(

            hintText: widget.hintText,
            // errorText:errorText,
            labelText: widget.labelText,
            prefixIcon: widget.prefixIcon,
            errorStyle: TextStyle(fontSize: 15),
            suffixIcon: InkWell(
                onTap: () {
                  setState(() {
                    widget.isPassword = !widget.isPassword;
                  });
                },
                child: widget.isPassword
                    ? const Icon(Icons.visibility,color: lightBlue,)
                    : const Icon(Icons.visibility_off,color: lightBlue,)),
          labelStyle: TextStyle(color: Colors.blue,fontSize: 19,fontWeight: FontWeight.bold),
          filled: true,
          fillColor: Colors.white,
          enabledBorder: InputBorder.none,
          focusedBorder:InputBorder.none,
          border:InputBorder.none,
        ),
        onSaved: widget.onSaved,
        onChanged: widget.onChanged,
        validator: widget.validate,

      ),
    );
  }
  OutlineInputBorder outlineInputBorder(){
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide:BorderSide.none,
      gapPadding: 10,
    );
  }
}
