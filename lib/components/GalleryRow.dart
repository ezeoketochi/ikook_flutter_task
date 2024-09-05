import 'package:flutter/material.dart';

Widget gallerywidget(context) {
  Image tickImage = Image.asset("lib/images/Icon.jpg");

  return Container(
    decoration: const BoxDecoration(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
    ),
    child: Stack(
      children: [
        Column(
          children: [
            Container(
              height: 150,
              width: MediaQuery.of(context).size.width * 0.7,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                image: DecorationImage(
                    image: AssetImage("lib/images/food.png"),
                    fit: BoxFit.cover),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          width: 100,
                          height: 35,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Center(child: Text("London")),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Icon(
                          Icons.favorite_border,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Chef Joseph",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                          Row(
                            children: [
                              Text("⭐"),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                "4.6",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                "(23 Reviews)",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ]),
                  ),
                ],
              ),
            ),
            Material(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              elevation: 2,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 3),
                height: 110,
                width: MediaQuery.of(context).size.width * 0.7,
                decoration: const BoxDecoration(
                  // border: Border.all(),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "3 years experience in culinary but became a chef a year ago. Worked with restaurants and other chefs.",
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                      textAlign: TextAlign.center,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        tickImage,
                        const Text(
                          "Chef at Home",
                          style: TextStyle(fontSize: 10),
                        ),
                        tickImage,
                        const Text(
                          "Large Event",
                          style: TextStyle(fontSize: 10),
                        ),
                        tickImage,
                        const Text(
                          "Meal Prep",
                          style: TextStyle(fontSize: 10),
                        ),
                        tickImage,
                        const Text(
                          "+3 More",
                          style: TextStyle(fontSize: 10),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
        Positioned(
          right: 10,
          top: 115,
          child: Image.asset("lib/images/chef.png"),
          // height: 20,
        ),
        Positioned(
          right: 10,
          top: 145,
          child: Image.asset("lib/images/tick.png"),
          // height: 20,
        ),
      ],
    ),
  );
}

Widget galleryrow(title) {
  return SizedBox(
    height: 330,
    child: Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            // "Top Chefs",
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text("See All"),
        ],
      ),
      const SizedBox(
        height: 10,
      ),
      SizedBox(
        height: 280,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: gallerywidget(context),
            );
          },
          itemCount: 5,
        ),
      ),
    ]),
  );
}
