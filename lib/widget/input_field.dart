import 'package:flutter/material.dart';



class InputFieldWidget extends StatefulWidget {
  String? initialValue;
  String? hintText;
  String? labelText;
  Widget? prefixIcon;
  int? maxLines;
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
    this.prefixIcon,
    this.maxLines,
  }) : super(key: key);

  @override
  _InputFieldWidgetState createState() => _InputFieldWidgetState();
}

class _InputFieldWidgetState extends State<InputFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: TextFormField(
        initialValue:widget.initialValue,
        decoration:  InputDecoration(
          hintText:widget.hintText,
          // hintStyle: TextStyle(
          //   color: Colors.grey,
          //   fontSize: 17,
          //   fontFamily: "verdana_regular",
          //   fontWeight: FontWeight.w600,
          // ),
          labelText: widget.labelText,
          prefixIcon: widget.prefixIcon,
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
        maxLines: widget.maxLines ?? 1,
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
