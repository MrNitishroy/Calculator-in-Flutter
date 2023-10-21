import 'package:flutter/material.dart';

class ResultDisplay extends StatelessWidget {
  final String input;
  final String result;
  const ResultDisplay({super.key, required this.input, required this.result});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      // height: 200,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Color(0xffD3DEF6),
          border: Border.all(width: 2, color: Color(0xffD3DEF6))),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
              input,
              style: TextStyle(
                  color: Color(0xff354970),
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  shadows: [
                    BoxShadow(
                      color: Color(0xff354970).withOpacity(0.2),
                      offset: Offset(-2, -2),
                      blurRadius: 10,
                    )
                  ]),
            ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
              result,
              style: TextStyle(
                  color: Color(0xff354970),
                  fontSize: 55,
                  fontWeight: FontWeight.bold,
                  shadows: [
                    BoxShadow(
                      color: Color(0xff354970).withOpacity(0.2),
                      offset: Offset(-2, -2),
                      blurRadius: 10,
                    )
                  ]),
            ),
            ],
          ),
        ],
      ),
    );
  }
}
