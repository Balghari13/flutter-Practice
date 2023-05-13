import 'package:flutter/material.dart';


class RoundedButton extends StatelessWidget {
  final String btnName;
  final Icon? icon;
  final Color? byColor;
  final VoidCallback? callback;
  RoundedButton({Key? key,
    required this.btnName,
    this.icon,
    this.byColor= Colors.blue,
    this.callback}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){
      callback!();
    }, child: icon!= null ?Row(
      children: [
        icon!,
        Text(btnName),
      ],
    ):Text(btnName),
    style: ElevatedButton.styleFrom(
        backgroundColor: byColor,
      shadowColor: byColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(21),
          bottomLeft: Radius.circular(21),
        )
      )
    ),
    );

  }
}
