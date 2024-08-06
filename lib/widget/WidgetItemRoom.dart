import 'dart:ui';

import 'package:testonline/const.dart';
import 'package:testonline/model/room.dart';
import "package:flutter/material.dart";

Widget itemRoom(room item) {
  return Stack(
    children: [
      Container(
        height: 272,
        width: 222,
        margin: const EdgeInsets.only(right: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(16)),
          image: DecorationImage(
            image: AssetImage(item.img),
            fit: BoxFit.cover,
          ),
        ),
      ),
      Container(
          height: 272,
          width: 222,
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            gradient: LinearGradient(
              colors: [Colors.transparent, const Color.fromARGB(216, 0, 0, 0)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                right: 0,
                top: 0,
                child: Container(
                  padding: EdgeInsets.only(top:3,bottom: 3, right: 6, left: 6 ),
                  decoration: BoxDecoration(
                    color: Colors.black26,
                    borderRadius: BorderRadius.all(Radius.circular(18))
                  ),
                  child:Row(children: [
                    icon(Icons.location_on, 14, false, Colors.white),
                    SizedBox(width: 4,),
                    text(item.location, 14, Colors.white, FontWeight.w300),
                  ],)
                      
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  text(item.name, 18, Colors.white, FontWeight.normal),
                  text(item.description, 14, Colors.white70, FontWeight.w300),
                ],
              ),
            ],
          )),
    ],
  );
}
