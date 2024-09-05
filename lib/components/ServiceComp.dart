import "package:flutter/material.dart";

Widget serviceitem(text, icon, color) {
  return SizedBox(
    child: Column(
      children: [
        Container(
          height: 60,
          width: 64,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Center(child: icon),
        ),
        Text(
          text,
          style: const TextStyle(color: Colors.grey, fontSize: 12),
        )
      ],
    ),
  );
}

Widget servicecomp() {
  return Column(
    children: [
      const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Services",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text("See All"),
        ],
      ),
      const SizedBox(
        height: 10,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          serviceitem(
            "Chefs",
            const ImageIcon(
              AssetImage("lib/images/Icon.png"),
              color: Color.fromRGBO(110, 86, 207, 1),
            ),
            const Color.fromRGBO(213, 219, 255, 0.5),
          ),
          serviceitem(
            "Photographer",
            const Icon(
              Icons.camera_alt_outlined,
              color: Colors.red,
            ),
            const Color.fromRGBO(255, 217, 214, 0.5),
          ),
          serviceitem(
            "Catering",
            const Icon(
              Icons.hexagon_outlined,
              color: Color.fromRGBO(232, 114, 5, 1),
            ),
            const Color.fromRGBO(255, 229, 205, 0.5),
          ),
          serviceitem(
            "Marquee Hire",
            const Icon(
              Icons.signpost_outlined,
              color: Color.fromRGBO(114, 109, 0, 1),
            ),
            const Color.fromRGBO(255, 253, 204, 0.5),
          ),
        ],
      ),
      const SizedBox(
        height: 10,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          serviceitem(
            "Venue Hire",
            const Icon(
              Icons.home_outlined,
              color: Color.fromRGBO(39, 79, 0, 1),
            ),
            const Color.fromRGBO(229, 255, 202, 0.5),
          ),
          serviceitem(
            "MC & Host",
            const ImageIcon(
              AssetImage("lib/images/Icon.png"),
              color: Color.fromRGBO(0, 140, 33, 1),
            ),
            // const Icon(
            //   Icons.person_2_outlined,
            //   color: Color.fromRGBO(0, 140, 33, 1),
            // ),
            const Color.fromRGBO(221, 255, 229, 0.5),
          ),
          serviceitem(
              "DJ",
              const ImageIcon(AssetImage("lib/images/disk.png"),
                  color: Color.fromRGBO(0, 92, 87, 1)),
              const Color.fromRGBO(207, 255, 252, 0.5)),
          serviceitem(
              "Musicians",
              const ImageIcon(AssetImage("lib/images/Mic.png"),
                  color: Color.fromRGBO(102, 0, 110, 1)),
              const Color.fromRGBO(255, 218, 255, 0.5)),
        ],
      ),
    ],
  );
}
