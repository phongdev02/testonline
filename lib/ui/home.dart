import 'package:flutter/material.dart';
import 'package:testonline/const.dart';
import 'package:testonline/widget/WidgetItemCategory.dart';
import 'package:testonline/model/room.dart';
import 'package:testonline/widget/WidgetItemRoom.dart';
import 'package:testonline/widget/widgetitemlistviewroom.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  List<room> lsRoom = [];
  @override
  void initState() {
    super.initState();
    //lsRoom.clear();
    lsRoom.add(room(
        name: 'Dreamsville House',
        description: 'Sultan Iskander Muda',
        img: 'assets/images/room01.jpg',
        location: '1.8 km'));
    lsRoom.add(room(
        name: 'Ascot House',
        description: 'Jl. Cilandak Tengah',
        img: 'assets/images/room02.jpg',
        location: '1.8 km'));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          //header start
          Container(
            margin: EdgeInsets.only(top: 32, left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //location & jakarta
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    text("Location", 14, Colors.black54, FontWeight.w200),
                    Row(children: [
                      text("Jakarta", 16, Colors.black87, FontWeight.w400),
                      icon(Icons.arrow_drop_down, 18, false, Colors.black87)
                      ],)
                    
                  ],
                ),
                icon(Icons.notifications, 32, true, Colors.black87)
              ],
            ),
          ),
          //header end
          const SizedBox(
            height: 16,
          ),
          //seach start
          Container(
            margin: EdgeInsets.only(top: 16, left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //search
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(31, 212, 208, 208),
                        borderRadius: BorderRadius.all(Radius.circular(16))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: 16, top: 8, bottom: 8, right: 16),
                            child: Material(
                              child: TextField(
                                decoration: InputDecoration(
                                  icon: Icon(
                                    Icons.search,
                                  ),
                                  hintText: 'Search address, or near you',
                                  hintStyle: const TextStyle(
                                      fontSize: 14.0,
                                      color: Colors.black54,
                                      fontWeight: FontWeight.normal),
                                  filled: true,
                                  border: InputBorder.none,
                                  fillColor: Colors.transparent,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                //option on right search
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.blue.shade200, Colors.blue],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: icon(Icons.menu, 16, false, Colors.white),
                  ),
                ),
              ],
            ),
          ),
          //search end
          const SizedBox(
            height: 16,
          ),
          //list category start
          Container(
            height: 50,
            margin: EdgeInsets.only(left: 8),
            padding: EdgeInsets.all(8),
            alignment: Alignment.center,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                ItemCategory('House', true),
                ItemCategory('Apartment', false),
                ItemCategory('hotel', false),
                ItemCategory('Villa', false),
              ],
            ),
          ),
          //list category end
          const SizedBox(
            height: 16,
          ),
          //header list rom start
          Container(
            margin: EdgeInsets.only(left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                text('Nearfrom you', 16, Colors.black, FontWeight.normal),
                text('See more', 14, Colors.black54, FontWeight.normal),
              ],
            ),
          ),
          //header list rom end
          const SizedBox(
            height: 16,
          ),
          //list rom start
          Container(
            height: 300,
            margin: EdgeInsets.only(left: 16),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [itemRoom(lsRoom[0]), itemRoom(lsRoom[1])],
            ),
          ),
          //list rom end
          //header listview rom start
          Container(
            margin: EdgeInsets.only(left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                text('Best for you', 16, Colors.black, FontWeight.normal),
                text('See more', 14, Colors.black54, FontWeight.normal),
              ],
            ),
          ),
          
          //header listview rom end
           const SizedBox(
            height: 16,
          ),
          itemListview('assets/images/house01.jpeg', 'Orchad House', '2.500.000.000', 6, 4),
          itemListview('assets/images/house02.jpeg', 'The Hollies House', '2.000.000.000', 5, 2)
        ],
      ),
    );
  }
}
