import 'package:flutter/material.dart';
import 'package:weframetech_task/utility/widgets/extra_info.dart';
import '../../utility/widgets/circular_container.dart';


/// This widget contains Hotel information including hotels images, name, price of the room, facilities, and book now button.
class HotelDetails extends StatefulWidget {
  const HotelDetails({super.key});

  @override
  State<HotelDetails> createState() => _HotelDetailsState();
}

class _HotelDetailsState extends State<HotelDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 469,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fitHeight,
                image: AssetImage("assets/images/Rectangle_40617.png")
              )
            ),
            child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircularContainer(
                          height: 36,
                          width: 36,
                          color: Colors.white,
                          useAsButton: true,
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(
                            Icons.arrow_back_ios_new_rounded,
                            size: 15,
                          ),
                        ),
                        const CircularContainer(
                          height: 36,
                          width: 36,
                          color: Colors.white,
                          borderWidth: 0,
                          child: Image(image: AssetImage("assets/icons/Vectorheart.png")),
                        ),
                      ]
                    )
                  )
                ]
              ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 378.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 548,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35)
                )
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20.22),
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 50, right: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(),
                                child: Text(
                                  "Sunflower Suites",
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500
                                  )
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Row(
                                  children: const [
                                    Image(
                                      image: AssetImage("assets/icons/Vectordrop_white.png")
                                    ),
                                    SizedBox(width: 6),
                                    Text(
                                      "2118 Thornridge Cir. Syracus",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.grey
                                      )
                                    )
                                  ]
                                ),
                              ),
                            ]
                          ),
                          const Text(
                            "\$15000",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(251, 100, 45, 1)
                            )
                          )
                        ],
                      ),
                    ),
                    
                    
                    const Padding(
                      padding: EdgeInsets.only(top: 28.0),
                      child: Text(
                        "Description",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.black
                        )
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0, right: 20),
                      child: RichText(
                        text: TextSpan(
                          text: "Join us for our \"Empowering Together\" event where we bring together like-minded individuals from diverse backgrounds to share their experiences... ",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey,
                            wordSpacing: 3,
                            height: 1.5
                          ),
                          children: [
                            TextSpan(
                              text: 'Read More',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.blue
                              )
                            ),
                          ],
                        ),
                        
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 28.0, right: 20.0),
                      child: SizedBox(
                        height: 64,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 17.0),
                              child: Image(image: AssetImage("assets/images/row_e1.png")),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 17.0),
                              child: Image(image: AssetImage("assets/images/row_e2.png")),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 17.0),
                              child: Image(image: AssetImage("assets/images/row_e3.png")),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 17.0),
                              child: Image(image: AssetImage("assets/images/row_e4.png")),
                            ),
                            Container(
                              height: 64,
                              width: 62,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("assets/images/row_e5.png"))
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                "+24",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white
                                )
                              )
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 28.0, right: 20.0),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Color.fromRGBO(0, 166, 156, 0.08)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 13.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ExtraInfo(
                                asset: "assets/icons/Vectorbath_blue.png",
                                text: "02",
                                textColor: Color.fromRGBO(0, 166, 156, 1),
                              ),
                              ExtraInfo(
                                asset: "assets/icons/Vectorcar_blue.png", 
                                text: "05",
                                textColor: Color.fromRGBO(0, 166, 156, 1),
                              ),
                              ExtraInfo(
                                asset: "assets/icons/Vectorexpand_blue.png", 
                                text: "200m",
                                textColor: Color.fromRGBO(0, 166, 156, 1),
                              ),
                            ],
                          ),
                        )
                      ),
                      
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 28.0, bottom: 20),
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 5.0, left: 3, right: 17),
                            child: Container(
                              width: 380,
                              height: 60,
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(251, 100, 45, 1),
                                borderRadius: const BorderRadius.all(Radius.circular(10))
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20.0),
                            child: Container(
                              height: 60,
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(0, 166, 156, 1),
                                borderRadius: const BorderRadius.all(Radius.circular(10))
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                "Book Now",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white
                                )
                              )
                            ),
                          )
                        ],
                      ),
                    )
                  ]
                ),
              ),
            ),
          )
        ]
      )
    );
  }
}