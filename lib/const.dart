import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

LinearGradient gradientColor() {
  return LinearGradient(
    colors: [Colors.blue.shade200, Colors.blue],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}

Widget imageInput(String imgPath, double sizeImg) {
  return Container(
    margin: const EdgeInsets.only(top: 16, bottom:  16, ),
    child: ClipRRect(
      borderRadius:
          BorderRadius.circular(20.0), // Có thể điều chỉnh độ cong ở đây
      child: Image.file(
        File(imgPath), // Thay thế bằng URL ảnh của bạn
        width: sizeImg, // Định kích thước rộng của ảnh
        height: sizeImg, // Định kích thước cao của ảnh
        fit: BoxFit.cover,
        errorBuilder:
            (BuildContext context, Object error, StackTrace? stackTrace) {
          return Image.network(
            imgPath, // Thay thế bằng URL ảnh của bạn
            width: sizeImg, // Định kích thước rộng của ảnh
            height: sizeImg, // Định kích thước cao của ảnh
            fit: BoxFit.cover,
            errorBuilder:
                (BuildContext context, Object error, StackTrace? stackTrace) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(
                    20.0), // Có thể điều chỉnh độ cong ở đây
                child: Icon(
                  Icons.image, // Icon sử dụng khi có lỗi
                  size: sizeImg, // Kích thước của icon
                ),
              );
            },
          );
        },
      ),
    ),
  );
}

Widget text(String value, double size, Color colorText, FontWeight weight) {
  return Material(
    color: Colors.transparent,
    child: Text(value,
        style: TextStyle(
          fontSize: size,
          color: colorText,
          fontWeight: weight,
        ),
        maxLines: 1,
        overflow: TextOverflow.ellipsis),
  );
}

Widget icon(IconData icon, double size, bool notifica, Color color) {
  double notifi = notifica ? 10 : 0;

  return Stack(
    children: [
      Icon(
        icon,
        color: color,
        size: size,
      ),
      Positioned(
        right: 0,
        top: 0,
        child: Container(
          width: notifi,
          height: notifi,
          decoration: BoxDecoration(
            color: Colors.red,
            shape: BoxShape.circle,
          ),
        ),
      ),
    ],
  );
}

Container container(
    String value, IconData icon, double size, bool notifica, bool active) {
  Color color = active ? Colors.white : Colors.blue;
  Color colorText = active ? Colors.blue : Colors.white;
  double notifi = notifica ? 5 : 0;
  return Container(
    height: 40,
    width: double.infinity,
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(20), // Bo góc phải trên
        bottomRight: Radius.circular(20), // Bo góc phải dưới
      ), // Bo góc với bán kính 20
    ),
    child: Padding(
      padding: EdgeInsets.only(left: 32),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            children: [
              Icon(
                icon,
                color: colorText,
                size: size,
              ),
              Positioned(
                right: 0,
                top: 0,
                child: Container(
                  width: notifi,
                  height: notifi,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(width: 16), // Khoảng cách giữa Icon và Text
          Material(
            color: Colors.transparent,
            child: Text(
              value,
              style: TextStyle(
                  color: colorText,
                  fontSize: size,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w200),
            ),
          ),
        ],
      ),
    ),
  );
}
