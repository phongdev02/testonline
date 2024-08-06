import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

LinearGradient gradientColor() {
  return LinearGradient(
    colors: [Colors.blue.shade200, Colors.blue],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}

Widget text(String value, double size, Color colorText, FontWeight weight) {
  return Text(value,
      style: TextStyle(
        fontSize: size,
        color: colorText,
        fontWeight: weight,
        fontFamily: 'Raleway',
      ),
      softWrap: true,
      maxLines: 2,
      overflow: TextOverflow.ellipsis
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
      borderRadius:const BorderRadius.only(
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


Widget imageGallery(String filepath, double valueHW, double radiusI, int numberGallery){
  bool testnumber = false;
  if(numberGallery == 0)
    testnumber = true;
  return testnumber ? Container(
    height: valueHW,
    width: valueHW,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(radiusI)),
      image: DecorationImage(
        image: AssetImage(filepath),
        fit: BoxFit.cover
      )
    ),
  ) : 
  Container(
    height: valueHW,
    width: valueHW,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(radiusI)),
      image: DecorationImage(
        image: AssetImage(filepath),
        fit: BoxFit.cover
      )
    ),
    child: Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(84, 0, 0, 0),
      borderRadius: BorderRadius.all(Radius.circular(radiusI)),
      ),
      child: Center(child: text('+'+numberGallery.toString(), 24, Colors.white, FontWeight.w600),),
    )
  );
}