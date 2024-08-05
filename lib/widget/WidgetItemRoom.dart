import 'dart:io';

import 'package:testonline/model/room.dart';
import "package:flutter/material.dart";

Widget itemRoom(room item) {
  return Container(
    margin: const EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: Colors.grey,
      image: DecorationImage(
        image: AssetImage('assets/images/room01.png'),
        fit: BoxFit.cover, 
      ),
    ),
    child: Center(
      child: Text('Your Content Here'),
    ),
  );
}
