import 'package:flutter/material.dart';
import 'package:flutter_application_6/wedget/welcome.dart';

class HomeScreen extends StatelessWidget {
  List cake = ["Berries", "Lemon", "Strawberry", "Peach", "Chocolate"];

  List cake2 = ["Lavender", "Rainbow", "Orange", "Flower", "hearts"];

  List cake3 = ["Lavender", "Rainbow", "Flower", "hearts", "Berries"];

  List<Color> bgColors = [
    Color(0xFFFBDCDA),
    Color(0xFFD4EEF3),
    Color(0xFFFAE6D5),
    Color(0xFFefcfe7),
    Color.fromARGB(255, 207, 239, 217),
    Color.fromARGB(255, 205, 177, 249),
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
          child: Column(children: [
        SizedBox(
          height: 40,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "location",
                    style: TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(176, 6, 5, 7),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Color.fromARGB(172, 245, 181, 230),
                      ),
                      Text(
                        "Riyadh",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(176, 6, 5, 7),
                        ),
                      ),
                      Icon(
                        Icons.arrow_drop_down,
                        color: Color.fromARGB(172, 245, 181, 230),
                      )
                    ],
                  ),
                ],
              ),
              Stack(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/Screenshot 2024-08-06 011609.png"),
                            fit: BoxFit.cover)),
                  ),
                  Positioned(
                    left: 40,
                    child: Container(
                      padding: EdgeInsets.all(7),
                      margin: EdgeInsets.all(7),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 1),
                          color: Colors.red,
                          shape: BoxShape.circle),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 1.4,
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 243, 242, 243),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: TextFormField(
                  decoration: InputDecoration(hintText: "search"),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Color.fromARGB(172, 245, 181, 230),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(
                  Icons.filter_list,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 6, horizontal: 10),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
                "assets/WhatsApp Image 2024-08-06 at 7.03.25 PM.jpeg"),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "types",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "see all",
                  style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(172, 245, 181, 230),
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 130,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: cake.length,
            itemBuilder: (context, index) {
              return Container(
                width: 130,
                margin: EdgeInsets.only(left: 15),
                padding: EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                  color: bgColors[index],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      "assets/${cake[index]}.jpeg",
                      width: 90,
                      height: 90,
                    ),
                    Text(
                      cake[index],
                      style: TextStyle(fontSize: 17, color: Colors.black),
                    )
                  ],
                ),
              );
            },
          ),
        ),
        Padding(padding: EdgeInsets.symmetric(horizontal: 30, vertical: 25)),
        SizedBox(
            height: 130,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: cake2.length,
                itemBuilder: (context, index) {
                  return Container(
                      width: 130,
                      margin: EdgeInsets.only(left: 15),
                      padding: EdgeInsets.symmetric(vertical: 5),
                      decoration: BoxDecoration(
                        color: bgColors[index],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              "assets/${cake2[index]}.jpeg",
                              width: 90,
                              height: 90,
                            ),
                            Text(
                              cake2[index],
                              style:
                                  TextStyle(fontSize: 17, color: Colors.black),
                            ),
                          ]));
                })),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Popular",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "see all",
                  style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(172, 245, 181, 230),
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
            height: 550,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: cake2.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {},
                    child: Container(
                      width: MediaQuery.of(context).size.width / 1.4,
                      margin: EdgeInsets.only(
                        left: 15,
                        top: 5,
                        bottom: 5,
                        right: 5,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(230, 252, 253, 251)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                            ),
                            child: Image.asset(
                              "assets/${cake3[index]}.jpeg",
                              height: 450,
                              width: MediaQuery.of(context).size.width / 1.4,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 10,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      cake3[index],
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Icon(
                                          Icons.star,
                                          size: 20,
                                          color: Color.fromARGB(
                                              172, 245, 181, 230),
                                        ),
                                        Text(
                                          "4.5",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          width: 6,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(8),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.location_on,
                                            color: Color.fromARGB(
                                                172, 245, 181, 230),
                                          ),
                                          SizedBox(
                                            width: 3,
                                          ),
                                          Text("1 KM"),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 7,
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(172, 245, 181, 230),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Text(
                                        "/SAR 7",
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.black),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                })),
        SizedBox(
          height: 10,
        ),
        InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => WelcomeWidget()));
          },
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 3, vertical: 10),
            padding: EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
                color: Color.fromARGB(172, 245, 181, 230),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(color: Colors.black26),
                ]),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                "Back",
                style: TextStyle(
                    fontSize: 22,
                    color: Color.fromARGB(175, 241, 240, 243),
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 10,
              ),
            ]),
          ),
        )
      ])),
    );
  }
}
