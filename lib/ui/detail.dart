import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:testonline/const.dart';

class DetailView extends StatefulWidget {
  const DetailView({super.key});

  @override
  State<DetailView> createState() => _DetailViewState();
}

class _DetailViewState extends State<DetailView> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Nội dung khác của màn hình
        Center(
          child: Container(
            child: ListView(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 32, left: 16, right: 16),
                  height: 350,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.all(Radius.circular(32)),
                      image: DecorationImage(
                          image: AssetImage('assets/images/room01.jpg'),
                          fit: BoxFit.cover)),
                  child: Container(
                    padding: EdgeInsets.all(25),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(32)),
                      gradient: LinearGradient(
                        colors: [
                          Colors.transparent,
                          Color.fromARGB(128, 0, 0, 0)
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              alignment: Alignment.center,
                              decoration: const BoxDecoration(
                                  color: Color.fromARGB(54, 0, 0, 0),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50))),
                              child: icon(Icons.arrow_back_ios, 24, false,
                                  Colors.white),
                            ),
                            Container(
                              height: 40,
                              width: 40,
                              alignment: Alignment.center,
                              decoration: const BoxDecoration(
                                  color: Color.fromARGB(54, 0, 0, 0),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50))),
                              child:
                                  icon(Icons.bookmark, 24, false, Colors.white),
                            )
                          ],
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              text('Dreamsville House', 18, Colors.white,
                                  FontWeight.normal),
                              text('Jl. Sultan Iskandar Muda, Jakarta selatan',
                                  14, Colors.white70, FontWeight.w300),
                              SizedBox(
                                height: 16,
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    Row(
                                      children: [
                                        icon(Icons.bedroom_child_outlined, 14,
                                            false, Colors.white70),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        text(5.toString() + ' Bedroom', 14,
                                            Colors.white70, FontWeight.w300)
                                      ],
                                    ),
                                    SizedBox(
                                      width: 16,
                                    ),
                                    Row(
                                      children: [
                                        icon(Icons.bathtub, 14, false,
                                            Colors.white70),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        text(6.toString() + ' Bedroom', 14,
                                            Colors.white70, FontWeight.w300)
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                    margin: EdgeInsets.only(left: 16),
                    child: text(
                        'Description', 18, Colors.black, FontWeight.normal)),
                Container(
                    margin: EdgeInsets.only(left: 16),
                    child: text(
                        'The 3 level house that has a modern design, has a large pool and a garage that fits up to four cars... Show More',
                        14,
                        Colors.black87,
                        FontWeight.normal)),
                //contact
                Container(
                  margin: EdgeInsets.all(16),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //contact
                        Container(
                          child: Row(
                            children: [
                              //image
                              Container(
                                height: 50,
                                width: 50,
                                decoration: const BoxDecoration(
                                    color: Color(0xFFC4C4C4),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50)),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/people.png'),
                                        fit: BoxFit.cover,
                                        alignment: Alignment.topCenter)),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    text('Garry Allen', 18, Colors.black,
                                        FontWeight.w600),
                                    text('Owner', 13, Colors.black,
                                        FontWeight.w300),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),

                        //phone and messenge
                        Container(
                          child: Row(
                            children: [
                              Container(
                                  height: 40,
                                  width: 40,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8)),
                                      color: Color(0xFF0A8ED9)),
                                  child: icon(
                                      Icons.phone, 24, false, Colors.white)),
                              SizedBox(
                                width: 16,
                              ),
                              Container(
                                  height: 40,
                                  width: 40,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8)),
                                      color: Color(0xFF0A8ED9)),
                                  child: icon(
                                      Icons.messenger, 24, false, Colors.white))
                            ],
                          ),
                        )
                      ]),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  margin: EdgeInsets.only(left: 16, right: 16),
                  child: text('Gallery', 18, Colors.black, FontWeight.w600),
                ),
                Container(
                  //height: 140,
                  padding: const EdgeInsets.all(16.0),
                  child: GridView.count(
                    crossAxisCount: 4, // Số cột là 4
                    crossAxisSpacing: 10, // Khoảng cách ngang giữa các cột
                    mainAxisSpacing: 10, // Khoảng cách dọc giữa các hàng
                    shrinkWrap: true, // Tự động co giãn lưới theo nội dung
                    children: [
                      imageGallery('assets/images/gallary01.jpeg', 50, 15, 0),
                      imageGallery('assets/images/gallary02.jpeg', 50, 15, 0),
                      imageGallery('assets/images/gallary03.jpeg', 50, 15, 0),
                      imageGallery('assets/images/gallary04.jpeg', 50, 15, 5)
                    ],
                  ),
                ),
                Container(
                  height: 1000,
                  margin: EdgeInsets.only(left: 16, right: 16),
                  child: imageGallery('assets/images/map.png', 50, 15, 0),
                ),
              ],
            ),
          ),
        ),

        // Container cố định ở cuối màn hình
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 90,
            padding: EdgeInsets.all(16),
            decoration:const BoxDecoration(
              color: Colors.blue,
              gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(28, 255, 255, 255),
                          Colors.white
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                text('Price', 14, Colors.black54, FontWeight.w400),
                text('Rp. 2.500.000.000 / Year', 18, Colors.black, FontWeight.w600),
              ],),
              Container(
                padding: EdgeInsets.only(left: 32, right: 32, top: 18, bottom: 18),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  gradient: gradientColor()
                ),
                child: text('Rent Now', 18, Colors.white, FontWeight.w700),
              )
            ],),
          ),
        ),
      ],
    );
  }
}
