import 'package:flutter/material.dart';
import 'package:testonline/const.dart';
import 'package:testonline/widget/WidgetItemCategory.dart';
import 'package:testonline/model/room.dart';
import 'package:testonline/widget/WidgetItemRoom.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {

  List<room> lsRoom = [];
  @override
  void initState(){
    super.initState();
    lsRoom.clear();
    lsRoom.add(room(name: 'Dreamsville House', description: 'Sultan Iskander Muda', img: '~/assets/images/room01.jpg', location: '1.8 km'));
    lsRoom.add(room(name: 'Dreamsville House', description: 'Sultan Iskander Muda', img: '~/assets/images/room01.jpg', location: '1.8 km'));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(32),
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          //header start
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //location & jakarta
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  text("Location", 14, Colors.black54, FontWeight.w200),
                  text("Jakarta", 16, Colors.black87, FontWeight.w400),
                ],
              ),
              icon(Icons.notifications, 32, true, Colors.black87)
            ],
          ),
          //header end
          const SizedBox(
            height: 16,
          ),
          //seach start
          Row(
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
          //search end
          const SizedBox(
            height: 16,
          ),
          //list category start
          Container(
            height: 60,
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
            padding: EdgeInsets.all(16),
            color: Colors.red,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                itemRoom(lsRoom[0]),
                itemRoom(lsRoom[1])
              ],
            ),
          )
        ],
      ),
    );
  }
}
