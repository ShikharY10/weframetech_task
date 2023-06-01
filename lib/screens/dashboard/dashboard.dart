import 'package:flutter/material.dart';
import '../../utility/widgets/circular_container.dart';
import '../hotels/details.dart';
import 'hotel_card.dart';

/// This is the landing/home page of the app which container some user information, search bar, recent search, hotel information and also have the option to rent a hotel.
class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(0, 166, 156, 1),
      body: ListView(
        children: [
          /// This section container UI implementation of "more" option and user profile
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                CircularContainer(
                  height: 36,
                  width: 36,
                  color: Color.fromRGBO(251, 100, 45, 1),
                  child: Image(
                    image: AssetImage("assets/icons/VectorList.png")
                  ),
                ),
                CircularContainer(
                  height: 36,
                  width: 36,
                  color: Color.fromRGBO(251, 100, 45, 1),
                  borderWidth: 0,
                  child: Image(
                    image: AssetImage("assets/icons/Ellipse_2645.png")
                  ),
                ),
              ]
            ),
          ),

          // This section container UI implementation of search bar.
          Padding(
            padding: const EdgeInsets.only(top: 16, left: 20, right: 20),
            child: Stack(
              alignment: AlignmentDirectional.topEnd,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Container(
                    height: 64,
                    width: MediaQuery.of(context).size.width-40-5,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(251, 100, 45, 1),
                      border: Border.all(
                        color: Colors.black
                      ),
                      borderRadius: BorderRadius.circular(20)
                    ),
                  ),
                ),
                TextFormField(
                  controller: searchController,
                  style: const TextStyle(color: Color.fromARGB(255, 28, 29, 77)),
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search_rounded),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.black
                      ),
                      borderRadius: BorderRadius.circular(20)),
                    hintText: "Search News...",
                    hintStyle: const TextStyle(
                      color: Colors.black
                    ),
                  ),
                ),
              ]
            )
          ),

          // This section shows user's recent searches
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              height: 136,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black),
                borderRadius: const BorderRadius.all(Radius.circular(20))
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text("Recent Searches",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500
                          ),
                        ),
                        Text("See All",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(251, 100, 45, 1)
                          ),
                        ),
                      ]
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Row(
                        children: [
                          const CircularContainer(
                            height: 48,
                            width: 48,
                            color: Color.fromRGBO(251, 100, 45, 1),
                            child: Image(
                              image: AssetImage("assets/icons/VectorDrop.png")
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Washington Ave. Manchester",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500
                                  ),
                                ),
                                Text(
                                  "Royal Ln. Mesa",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400
                                  ),
                                ),
                              ],
                            ),
                          )
                        ]
                      ),
                    )
                  ]
                ),
              )
            )
          ),

          // This section container UI implementation of Hotel related information
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35)
              )
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 28.0, left: 20),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 23.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 112,
                          height: 50,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(251, 100, 45, 1),
                            border: Border.all(color: Colors.black),
                            borderRadius: const BorderRadius.all(Radius.circular(30))
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Row(
                              children: const [
                                CircularContainer(
                                  height: 34, 
                                  width: 34,
                                  color: Colors.white,
                                  child: Image(
                                    image: AssetImage("assets/icons/Vectorhand.png")
                                  )
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    "Rent",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white
                                    ),
                                  ),
                                )
                              ]
                            ),
                          ),
                        ),
                        // This is a custom made widget that paints circular widget for showing micro informations
                        const CircularContainer(
                          height: 50, 
                          width: 50,
                          color: Color.fromRGBO(251, 100, 45, 0.16), 
                          child: Image(
                            image: AssetImage("assets/icons/vectorhomeDoller.png")
                          )
                        ),
                        const CircularContainer(
                          height: 50, 
                          width: 50,
                          color: Color.fromRGBO(251, 100, 45, 0.16), 
                          child: Image(
                            image: AssetImage("assets/icons/Vectorbag.png")
                          )
                        ),
                        const CircularContainer(
                          height: 50, 
                          width: 50,
                          color: Color.fromRGBO(251, 100, 45, 0.16), 
                          child: Image(
                            image: AssetImage("assets/icons/vectorperson.png")
                          )
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 29.5, right: 23.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Nearby Hotels",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Colors.black
                          )
                        ),
                        Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 3.0, top: 3.0),
                              child: Container(
                                width: 44,
                                height: 44,
                                decoration: BoxDecoration(
                                  color: const Color.fromRGBO(251, 100, 45, 1),
                                  border: Border.all(color: Colors.black),
                                  borderRadius: const BorderRadius.all(Radius.circular(10))
                                ),
                              ),
                            ),
                            Container(
                              width: 44,
                              height: 44,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: Colors.black),
                                borderRadius: const BorderRadius.all(Radius.circular(10))
                              ),
                              child: const Icon(Icons.arrow_forward)
                            )
                          ],
                        )
                      ]
                    )
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25.0),
                    child: SizedBox(
                      height: 293,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          for (int i=0; i<2; i++)
                          /// This is also a custom made widget that paints UI for showing hotel details.
                            HotelCard(
                              "assets/images/Rectangle_40621.png",
                              "Sunflower Suites",
                              "\$21,00,000",
                              subtitle: "2118 Thornridge Cir. Syracus",
                              extraInfo: const [
                                {
                                  "asset": "assets/icons/Vectorbath.png",
                                  "text": "02"
                                },
                                {
                                  "asset": "assets/icons/VectorCar.png",
                                  "text": "05"
                                },
                                {
                                  "asset": "assets/icons/VectorExpand.png",
                                  "text": "200m"
                                },
                              ],
                              onTap: () {
                                Navigator.push(
                                  context, 
                                  MaterialPageRoute(
                                    builder: (context) => const HotelDetails()
                                  )
                                );
                              },
                            )
                        ]
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25.0),
                    child: SizedBox(
                      height: 293,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          for (int i=0; i<2; i++)
                            const HotelCard(
                              "assets/images/Rectangle_40621.png",
                              "Hotel Orchid",
                              "\$21,00,000",
                              subtitle: "2118 Thornridge Cir. Syracus",
                              extraInfo: [
                                {
                                  "asset": "assets/icons/Vectorbath.png",
                                  "text": "04"
                                },
                                {
                                  "asset": "assets/icons/VectorCar.png",
                                  "text": "07"
                                },
                                {
                                  "asset": "assets/icons/VectorExpand.png",
                                  "text": "150m"
                                },
                              ]
                            )
                        ]
                      ),
                    ),
                  )
                ],
              ),
            )
          ),
        ],
      )
    );
  }
}