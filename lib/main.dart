import 'package:flutter/material.dart';
import 'package:ikook_task/components/GalleryRow.dart';
import 'package:ikook_task/components/ServiceComp.dart';
import 'package:ikook_task/components/TaskBar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Color appcolor = const Color.fromRGBO(252, 192, 28, 1);

    return MaterialApp(
      title: 'iKook Flutter Task',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: appcolor),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

// ignore: must_be_immutable
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color appcolor = const Color.fromRGBO(252, 192, 28, 1);

  List<BottomNavigationBarItem> navItems = const [
    BottomNavigationBarItem(
      icon: ImageIcon(
        AssetImage(
          "lib/images/1.png",
        ),
        // Icons.pentagon_outlined,
      ),
      label: "Home",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.favorite_border),
      label: "Favourite",
    ),
    BottomNavigationBarItem(
        icon: ImageIcon(
          AssetImage(
            "lib/images/check.png",
          ),
        ),
        label: "Bookings"),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.message,
      ),
      label: "Message",
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.account_circle_outlined,
      ),
      label: "Account",
    ),
  ];

  int selectedIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        selectedItemColor: appcolor,
        showUnselectedLabels: true,
        onTap: onItemTapped,
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: TextStyle(color: appcolor),
        unselectedLabelStyle: TextStyle(color: appcolor),
        items: navItems,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            children: <Widget>[
              //customized task bar
              taskbar(appcolor),
              const SizedBox(
                height: 20,
              ),
              //customized search row
              searchrow(context),
              const SizedBox(
                height: 20,
              ),

              //Services
              servicecomp(),

              const SizedBox(
                height: 20,
              ),

              //Top chefs
              galleryrow("Top Chefs"),
              const SizedBox(
                height: 20,
              ),

              //Top photographers
              galleryrow("Top Photographers"),
              const SizedBox(
                height: 20,
              ),

              //Venue hire
              galleryrow("Venue Hire"),
              const SizedBox(
                height: 20,
              ),

              //Mc & host
              galleryrow("MC & Host")
            ],
          ),
        ),
      ),
    );
  }
}
