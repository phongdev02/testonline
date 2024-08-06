import 'package:flutter/material.dart';
import 'package:testonline/const.dart';

Widget itemListview(String imgpath, String name, String price, double numberBedrom, double numberBathroom){
  return Container(
    margin: EdgeInsets.only(left: 16, bottom: 16),
    child: Row(children: [
      //img
      Container(
        height: 80,
        width: 80,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.all(Radius.circular(16)),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(imgpath)
          )
        ),
        
      ),
      Container(
        margin: EdgeInsets.only(left: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            text(name, 16, Colors.black, FontWeight.w600),
            text('Rp. '+price+' / Year', 14, Colors.blue, FontWeight.bold),
            Container(
              child: Row(
                children: [
                  Row(
                    children: [icon(Icons.bedroom_child_outlined, 14, false, Colors.black54),SizedBox(width: 8,), text(numberBedrom.toString() + ' Bedroom', 14, Colors.black54, FontWeight.w300)],
                  ),
                  SizedBox(width: 16,)
                  ,
                  Row(
                    children: [icon(Icons.bathtub, 14, false, Colors.black54),SizedBox(width: 8,), text(numberBedrom.toString() + ' Bedroom', 14, Colors.black54, FontWeight.w300)],
                  ),
                ],
              ),
            )
        ],),
      )
    ],),
  );
}