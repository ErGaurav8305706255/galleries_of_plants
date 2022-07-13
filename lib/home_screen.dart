import 'package:flutter/material.dart';
import 'package:plant_gallery/constant/color_constant.dart';
import 'package:plant_gallery/constant/icon_constant.dart';
import 'package:plant_gallery/constant/string_constant.dart';

import 'monsterra_deliciosa_screen.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final List item=[
    {
      'image': 'assets/fav1.jpg',
      'in' : 'Indoor',
      'title':'Monsterra Deliciosa',
      'subtitle': '\u{0024}${80.00}',
    },
    {
      'image': 'assets/fav2.jpg',
      'in' : 'Indoor',
      'title':'Aglaonema Commutatum',
      'subtitle': '\u{0024}${50.00}',
    },
    {
      'image': 'assets/fav3.jpg',
      'in' : 'Indoor',
      'title':'Monsterra Deliciosa',
      'subtitle': '\u{0024}${80.00}',
    },
    {
      'image': 'assets/fav4.jpg',
      'in' : 'Indoor',
      'title':'Aglaonema Commutatum',
      'subtitle': '\u{0024}${50.00}',
    },
    {
      'image': 'assets/fav5.jpg',
      'in' : 'Indoor',
      'title':'Monsterra Deliciosa',
      'subtitle': '\u{0024}${80.00}',
    },
  ];
  final List item2=[
    {
      'image': 'assets/indoornew1.jpg',
      'in' : 'Indoor',
      'title':'Monsterra Deliciosa',
      'subtitle': '\u{0024}${80.00}',
    },
    {
      'image': 'assets/indoornew2.jpg',
      'in' : 'Indoor',
      'title':'Aglaonema Commutatum',
      'subtitle': '\u{0024}${50.00}',
    },
    {
      'image': 'assets/indoornew3.jpg',
      'in' : 'Indoor',
      'title':'Monsterra Deliciosa',
      'subtitle': '\u{0024}${80.00}',
    },
    {
      'image': 'assets/indoor3.jpg',
      'in' : 'Indoor',
      'title':'Aglaonema Commutatum',
      'subtitle': '\u{0024}${50.00}',
    },
    {
      'image': 'assets/indoor4.jpg',
      'in' : 'Indoor',
      'title':'Monsterra Deliciosa',
      'subtitle': '\u{0024}${80.00}',
    },
    {
      'image': 'assets/indoor5.jpg',
      'in' : 'Indoor',
      'title':'Monsterra Deliciosa',
      'subtitle': '\u{0024}${80.00}',
    },
    {
      'image': 'assets/indoor6.jpg',
      'in' : 'Indoor',
      'title':'Monsterra Deliciosa',
      'subtitle': '\u{0024}${80.00}',
    },
  ];
  final List item3=[
    {
      'image': 'assets/out1.jpg',
      'out': 'Outdoor',
      'title':'Monsterra Deliciosa',
      'subtitle': '\u{0024}${80.00}',
    },
    {
      'image': 'assets/out2.jpg',
      'out': 'Outdoor',
      'title':'Aglaonema Commutatum',
      'subtitle': '\u{0024}${50.00}',
    },
    {
      'image': 'assets/out3.jpg',
      'out': 'Outdoor',
      'title':'Monsterra Deliciosa',
      'subtitle': '\u{0024}${80.00}',
    },
    {
      'image': 'assets/image4.jpg',
      'out': 'Outdoor',
      'title':'Aglaonema Commutatum',
      'subtitle': '\u{0024}${50.00}',
    },
    {
      'image': 'assets/image5.jpg',
      'out': 'Outdoor',
      'title':'Monsterra Deliciosa',
      'subtitle': '\u{0024}${80.00}',
    },
    {
      'image': 'assets/image6.jpg',
      'out': 'Outdoor',
      'title':'Monsterra Deliciosa',
      'subtitle': '\u{0024}${80.00}',
    },
  ];
  final List item4=[
    {
      'image': 'assets/fav1.jpg',
      'title':'Monsterra Deliciosa',
      'subtitle': '\u{0024}${80.00}',
    },
    {
      'image': 'assets/fav2.jpg',
      'title':'Aglaonema Commutatum',
      'subtitle': '\u{0024}${50.00}',
    },
    {
      'image': 'assets/fav3.jpg',
      'title':'Monsterra Deliciosa',
      'subtitle': '\u{0024}${80.00}',
    },
    {
      'image': 'assets/fav4.jpg',
      'title':'Aglaonema Commutatum',
      'subtitle': '\u{0024}${50.00}',
    },
    {
      'image': 'assets/fav5.jpg',
      'title':'Monsterra Deliciosa',
      'subtitle': '\u{0024}${80.00}',
    },
  ];


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4,
      child: Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 30),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(StringConstant.goodmorning,
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold
                          ),),
                        const Spacer(),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Text(StringConstant.loremmiddle,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500,color: ColorConstant.textColorgray
                          ),),
                        const Spacer(),
                      ],
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: ColorConstant.textfieldColor,
                        hintText: StringConstant.search,
                        prefixIcon: Icon(Icons.search,color: ColorConstant.iconColor),
                        suffixIcon: Icon(Icons.filter_alt_rounded,color: ColorConstant.iconColor,)
                      ),
                    ),
                    const SizedBox(height: 15),
                    TabBar(
                        indicatorColor: ColorConstant.iconColor,
                        labelColor: ColorConstant.iconColor,
                        labelStyle: const TextStyle(fontSize: 12,fontWeight: FontWeight.bold),
                        unselectedLabelColor: Colors.grey,
                        unselectedLabelStyle: const TextStyle(fontSize: 10),
                        tabs: [
                      Tab(text: StringConstant.popular),
                      Tab(text: StringConstant.indoor),
                      Tab(text: StringConstant.outdoor),
                      Tab(text: StringConstant.toppick),
                    ]),
                    Container(height: 350,
                      decoration: const BoxDecoration(
                      color: Colors.transparent
                    ),
                      child: TabBarView(
                          children: [
                            ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: item.length,
                                itemBuilder: (context, index) {
                                  return Container(
                                    height: 200,width: 200,
                                    margin: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: ColorConstant.textfieldColor
                                    ),
                                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10),bottomRight: Radius.circular(80),bottomLeft: Radius.circular(20)),
                                          ),
                                          child: ClipRRect(
                                              borderRadius: const BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10),bottomRight: Radius.circular(80),bottomLeft: Radius.circular(20)),
                                              child: Image.asset(item[index]['image'],
                                                  fit: BoxFit.cover,
                                                  height: 200,
                                                  width: 200)),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                                          child: Text(item[index]['in'],
                                            style: const TextStyle(
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold
                                            ),),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                                          child: Text(item[index]['title'],
                                            style: const TextStyle(
                                              color: Colors.black,
                                              fontSize: 12,
                                            ),),
                                        ),
                                        const SizedBox(height: 15),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                                          child: Row(mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Text(item[index]['subtitle'],
                                                style: const TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                ),),
                                             const Spacer(),
                                              InkWell(onTap: () {
                                                Navigator.push(context, MaterialPageRoute(builder: (context) => const MonsterraScreen()));
                                              },
                                                  child: Icon(Icons.add_circle_outlined,color: ColorConstant.iconColor,size: 30,))
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  );
                                }),
                            ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: item2.length,
                                itemBuilder: (context, index) {
                                  return Container(
                                    height: 300,width: 200,
                                    margin: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: ColorConstant.textfieldColor
                                    ),
                                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10),bottomRight: Radius.circular(80),bottomLeft: Radius.circular(20)),
                                          ),
                                          child: ClipRRect(
                                              borderRadius: const BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10),bottomRight: Radius.circular(80),bottomLeft: Radius.circular(20)),
                                              child: Image.asset(item2[index]['image'],
                                                  fit: BoxFit.cover,
                                                  height: 200,
                                                  width: 200)),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                                          child: Text(item2[index]['in'],
                                            style: const TextStyle(
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold
                                            ),),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                                          child: Text(item2[index]['title'],
                                            style: const TextStyle(
                                              color: Colors.black,
                                              fontSize: 12,
                                            ),),
                                        ),
                                        const SizedBox(height: 15),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                                          child: Row(mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Text(item2[index]['subtitle'],
                                                style: const TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                ),),
                                              const Spacer(),
                                              Icon(Icons.add_circle_outlined,color: ColorConstant.iconColor,)
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  );
                                }),
                            ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: item3.length,
                                itemBuilder: (context, index) {
                                  return Container(
                                    height: 300,width: 200,
                                    margin: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: ColorConstant.textfieldColor,
                                    ),
                                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10),bottomRight: Radius.circular(80),bottomLeft: Radius.circular(20)),
                                          ),
                                          child: ClipRRect(
                                              borderRadius: const BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10),bottomRight: Radius.circular(80),bottomLeft: Radius.circular(20)),
                                              child: Image.asset(item3[index]['image'],
                                                  fit: BoxFit.cover,
                                                  height: 200,
                                                  width: 200)),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                                          child: Text(item3[index]['out'],
                                            style: const TextStyle(
                                                color: Colors.black,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold
                                            ),),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                                          child: Text(item3[index]['title'],
                                            style: const TextStyle(
                                              color: Colors.black,
                                              fontSize: 12,
                                            ),),
                                        ),
                                        const SizedBox(height: 15),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                                          child: Row(mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Text(item3[index]['subtitle'],
                                                style: const TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                ),),
                                              const Spacer(),
                                              Icon(Icons.add_circle_outlined,color: ColorConstant.iconColor,)
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  );
                                }),
                            ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: item4.length,
                                itemBuilder: (context, index) {
                                  return Container(
                                    height: 300,width: 200,
                                    margin: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: ColorConstant.textfieldColor,
                                    ),
                                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10),bottomRight: Radius.circular(80),bottomLeft: Radius.circular(20)),
                                          ),
                                          child: ClipRRect(
                                              borderRadius: const BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10),bottomRight: Radius.circular(80),bottomLeft: Radius.circular(20)),
                                              child: Image.asset(item4[index]['image'],
                                                  fit: BoxFit.cover,
                                                  height: 200,
                                                  width: 200)),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                                          child: Text('Indoor',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold
                                            ),),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                                          child: Text(item[index]['title'],
                                            style: const TextStyle(
                                              color: Colors.black,
                                              fontSize: 12,
                                            ),),
                                        ),
                                        const SizedBox(height: 15),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                                          child: Row(mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Text(item[index]['subtitle'],
                                                style: TextStyle(
                                                  color: ColorConstant.textColor,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                ),),
                                              const Spacer(),
                                              Icon(Icons.add_circle_outlined,color: ColorConstant.iconColor,)
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  );
                                }),
                      ]),
                    ),
                    Text(StringConstant.recentshop,
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                    ),),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                                IconConstant.indoor3,
                                fit: BoxFit.cover,
                                height: 60,
                                width: 60
                            )),
                        const SizedBox(width: 15),
                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(StringConstant.plantstore,style: const TextStyle(
                              fontWeight: FontWeight.bold
                            )),
                            Text(StringConstant.loremshort)
                          ],
                        ),
                        const Spacer(),
                        const Text('\u{0024}${70.00}',style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),)
                      ],
                    )
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
