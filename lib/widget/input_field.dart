import 'package:flutter/material.dart';

class InputFieldWidget extends StatefulWidget {
  String? initialValue;
  String? hintText;
  String? labelText;
  Widget? prefixIcon;
  int? maxLines;
  bool? isPassword;
  TextInputType? textInputType;
  void Function(String)? onChanged;
  void Function(String?)? onSaved;
  String? Function(String?)? validate;

  InputFieldWidget({Key? key,
    this.initialValue,
    this.hintText,
    this.labelText,
    this.onSaved,
    this.onChanged,
    this.validate,
    this.textInputType,
    this.prefixIcon,
    this.maxLines,
    this.isPassword,
  }) : super(key: key);

  @override
  _InputFieldWidgetState createState() => _InputFieldWidgetState();
}

class _InputFieldWidgetState extends State<InputFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              blurRadius: 6,
              spreadRadius: 5,
              offset: Offset(0,-0.2),
              color: Colors.grey.withOpacity(0.1),)
          ]
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: TextFormField(
          obscureText: widget.isPassword ?? false,
          keyboardType: widget.textInputType ?? TextInputType.text,
          initialValue:widget.initialValue,
          decoration:  InputDecoration(
            hintText:widget.hintText,
            labelText: widget.labelText,
            prefixIcon: widget.prefixIcon,
            labelStyle: const TextStyle(color: Colors.blue,fontSize: 19,fontWeight: FontWeight.bold),
            filled: true,
            fillColor: Colors.white,
            enabledBorder: InputBorder.none,
            focusedBorder:InputBorder.none,
            border:InputBorder.none,
          ),
          onSaved: widget.onSaved,
          onChanged: widget.onChanged,
          validator: widget.validate,
          maxLines: widget.maxLines ?? 1,
        ),
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