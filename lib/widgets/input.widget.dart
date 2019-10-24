import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class Input extends StatelessWidget {
  var label = "";
  var ctrl = new MoneyMaskedTextController();

  Input({
    @required this.label,
    @required this.ctrl
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: 100,
          alignment: Alignment.centerRight,
          child: Text(
            label,
            style: TextStyle(fontFamily: "Big Shoulders Display", color: Colors.white, fontSize: 35),
          ),
        ),
        SizedBox(width: 20,),
        Expanded(
          child: TextFormField(
            controller: ctrl,
            keyboardType: TextInputType.number,
            style: TextStyle(color: Colors.white, fontSize: 45, fontFamily: "Big Shoulders Display"),
            decoration: InputDecoration(border: InputBorder.none),
          ),
        )
      ],
    );
  }
}