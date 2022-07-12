import 'package:flutter/material.dart';
import 'package:plant_gallery/constant/color_constant.dart';
import 'package:plant_gallery/constant/icon_constant.dart';
import 'package:plant_gallery/constant/string_constant.dart';
import 'bottom_navigator_screen.dart';
class MonsterraScreen extends StatefulWidget {
  const MonsterraScreen({Key? key}) : super(key: key);

  @override
  State<MonsterraScreen> createState() => _MonsterraScreenState();
}

class _MonsterraScreenState extends State<MonsterraScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: double.infinity,
                  color: Colors.white,
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 370,),
                       Text(StringConstant.indoor),
                      const SizedBox(height: 15),
                      Text(StringConstant.monsterradliciosa,style: const TextStyle(
                          fontSize: 15,fontWeight: FontWeight.bold
                      )),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          Container(
                              height: 25,width: 25,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                              ),
                              child: Image.asset(IconConstant.sub,fit: BoxFit.cover,)),
                          const SizedBox(width: 10),
                          Container(
                              height: 20,width: 20,
                              decoration: BoxDecoration(color: ColorConstant.textfieldColor,
                            borderRadius: BorderRadius.circular(40),
                          ),
                              child: Center(child: Text('1',style: TextStyle(
                                color: ColorConstant.iconColor,
                              ),))),
                          const SizedBox(width: 10),
                          Icon(Icons.add_circle_outlined,color: ColorConstant.iconColor,),
                          const Spacer(),
                          const Text('\u{0024}${80.00}',style: TextStyle(
                            fontWeight: FontWeight.bold,fontSize: 18
                          ),)
                        ],
                      ),
                      const SizedBox(height: 15),
                      Text(StringConstant.loremlarge,
                      ),
                      const SizedBox(height: 15),
                      Text(StringConstant.details,
                          style: const TextStyle(
                              fontSize: 15,fontWeight: FontWeight.bold
                          )
                      ),
                      const SizedBox(height: 15),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              const Icon(Icons.water_drop),
                              const SizedBox(height: 5),
                              const Text('1L',style: TextStyle(
                                fontWeight: FontWeight.bold
                              )),
                              const SizedBox(height: 5),
                              Text(StringConstant.perday)
                            ],
                          ),
                          Column(
                            children: [
                              const Icon(Icons.device_thermostat),
                              const SizedBox(height: 5),
                              const Text('8\u2103',style: TextStyle(
                                  fontWeight: FontWeight.bold
                              )),
                              const SizedBox(height: 5),
                              Text(StringConstant.humadity)
                            ],
                          ),
                          Column(
                            children: [
                              const Icon(Icons.sunny),
                              const SizedBox(height: 5),
                              const Text("12\u2103",style: TextStyle(
                                  fontWeight: FontWeight.bold
                              )),
                              const SizedBox(height: 5),
                              Text(StringConstant.temp)
                            ],
                          )
                        ],
                      )
                    ],
                  ),


                ),
                Container(
                  height: 300,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30)),
                      color: ColorConstant.textfieldColor
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 30),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            InkWell(onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const BottomNavigatorScreen()));
                            },
                                child: const Icon(Icons.arrow_back)),
                            const Spacer(),
                            const Icon(Icons.search),
                          ],
                        ),
                        const SizedBox(height: 130),
                        Text(StringConstant.size),
                        Text(StringConstant.small,style: const TextStyle(
                            fontWeight: FontWeight.bold
                        ),
                        ),
                        const SizedBox(height: 15,),
                        Text(StringConstant.family),
                        Text(StringConstant.cactaceae,style: const TextStyle(
                            fontWeight: FontWeight.bold
                        ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 150,left: 100,
                  child: SizedBox(height: 200,width: 150,
                    child: ClipRRect(borderRadius: BorderRadius.circular(20),
                      child: Image.asset(IconConstant.fav1,
                        fit: BoxFit.cover,
                        ),
                    ),
                  ),
                ),
                Positioned(top: 275,left: 270,
                  child: Container(
                      height: 50,
                      width: 50,
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          border: Border.all(color: ColorConstant.textColorgray,width: 1),
                          borderRadius: BorderRadius.circular(40),
                          color: ColorConstant.containerColor
                      ),
                      child: Icon(Icons.favorite,color: ColorConstant.iconColor,size: 30)),
                ),
              ],
        )),
      ),
      bottomNavigationBar: Container(
            padding: const EdgeInsets.all(15),
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20)),color: ColorConstant.iconColor
            ),
            child: Text(StringConstant.asstocard,textAlign: TextAlign.center,style: TextStyle(
              color: ColorConstant.containerColor
            ),)
        ),
      );
  }
}
