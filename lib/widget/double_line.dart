import 'package:flutter/material.dart';

class DoubleLine extends StatelessWidget {
  final double? height = 1;
  const DoubleLine({Key? key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Container(
      height: 50,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          Expanded(child: Container(
            margin: EdgeInsets.only(top: 3),
            height: height,color: Colors.grey,)
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20,right: 20,),
            child: Text("or",style: TextStyle(fontSize: 19,color: Colors.black38),),
          ),

          Expanded(child: Container(
            margin: EdgeInsets.only(top: 3),
            height: height,color: Colors.grey,)
          )
        ],
      ),
    );
  }
}
