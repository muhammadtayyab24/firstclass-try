import 'package:flutter/material.dart';
import 'package:lastclass/apple-iphone.dart';
import 'package:lastclass/fav.dart';
import 'package:lastclass/laptop.dart';
import 'package:lastclass/auth/register.dart';
import 'package:lastclass/auth/signin.dart';
import 'package:lastclass/sumsung.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List icon = ['Icons.home'];

  int currentTab = 0;

  Widget currentScreen = Home();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SafeArea(
        child: Drawer(
          child: Container(
            decoration: BoxDecoration(color: Colors.grey.shade200),
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                const DrawerHeader(
                  // margin: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            "https://t4.ftcdn.net/jpg/03/66/67/13/360_F_366671394_JLHMxmDbS6ROchywtMRVaMmlJyZjEhYO.jpg")),
                  ),
                  child: Text(
                    "WELCOME TO G.M.ALI STORE",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                        fontFamily: 'Hind',
                        fontStyle: FontStyle.italic),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Signin()));
                  },
                  child: ListTile(
                    leading: Icon(
                      Icons.person,
                      color: Colors.black,
                      size: 40.0,
                    ),
                    title: Text(
                      "Sign In",
                      style: TextStyle(
                          color: Colors.grey[800],
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    trailing: Icon(
                      Icons.arrow_right,
                      color: Colors.black,
                      size: 36.0,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Register()));
                  },
                  child: ListTile(
                    leading: Icon(
                      Icons.person_add_alt_1,
                      color: Colors.black,
                      size: 40.0,
                    ),
                    title: Text(
                      "Sign Up",
                      style: TextStyle(
                          color: Colors.grey[800],
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    trailing: Icon(
                      Icons.arrow_right,
                      color: Colors.black,
                      size: 36.0,
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.settings,
                    color: Colors.black,
                    size: 40.0,
                  ),
                  title: Text(
                    "Settings",
                    style: TextStyle(
                        color: Colors.grey[800],
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  trailing: Icon(
                    Icons.arrow_right,
                    color: Colors.black,
                    size: 36.0,
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.help_center,
                    color: Colors.black,
                    size: 40.0,
                  ),
                  title: Text(
                    "Help & Supports",
                    style: TextStyle(
                        color: Colors.grey[800],
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  trailing: Icon(
                    Icons.arrow_right,
                    color: Colors.black,
                    size: 36.0,
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.contact_page,
                    color: Colors.black,
                    size: 40.0,
                  ),
                  title: Text(
                    "Contact US",
                    style: TextStyle(
                        color: Colors.grey[800],
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  trailing: Icon(
                    Icons.arrow_right,
                    color: Colors.black,
                    size: 36.0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      appBar: AppBar(
        title: Center(
            child: Text(
          "Collections",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30,
              fontFamily: 'Hind',
              fontStyle: FontStyle.italic),
        )),
        backgroundColor: (Colors.grey.shade800),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.notifications),
              color: Colors.white,
              onPressed: () {})
        ],
      ),
      body: ListView(
        children: [
          Column(
            children: [
              InkWell(
                child: Container(
                  margin: EdgeInsets.only(top: 10),
                  height: 140,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.8), BlendMode.dstATop),
                        image: NetworkImage(
                            "https://t.ipadizate.es/2020/10/fondos-iPhone-12-Pro.jpg")),
                  ),
                  child: Center(
                    child: Text(
                      "APPLE IPHONES",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 23,
                          fontFamily: 'Hind',
                          fontStyle: FontStyle.italic),
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Iphone()),
                  );
                },
              ),
              InkWell(
                child: Container(
                  margin: EdgeInsets.only(top: 10),
                  height: 140,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.8), BlendMode.dstATop),
                        image: NetworkImage(
                            "https://www.thenews.com.pk/assets/uploads/updates/2019-08-20/l_514916_043020_updates.jpg")),
                  ),
                  child: Center(
                    child: Text(
                      "SAMSUNG GALAXY",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 23,
                          fontFamily: 'Hind',
                          fontStyle: FontStyle.italic),
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Sumsung()),
                  );
                },
              ),
              InkWell(
                child: Container(
                  margin: EdgeInsets.only(top: 10),
                  height: 140,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.8), BlendMode.dstATop),
                        image: NetworkImage(
                            "https://en.dailypakistan.com.pk/digital_images/large/2020-11-17/top-5-best-laptops-you-can-buy-in-2020-1605591092-8004.jpg")),
                  ),
                  child: Center(
                    child: Text(
                      "LAPTOPS",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 23,
                          fontFamily: 'Hind',
                          fontStyle: FontStyle.italic),
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Laptop()),
                  );
                },
              ),
              InkWell(
                child: Container(
                  margin: EdgeInsets.only(top: 10),
                  height: 140,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.8), BlendMode.dstATop),
                        image: NetworkImage(
                            "http://cdn.mos.cms.futurecdn.net/aQaxyefqFjKhRv6YDG3XKe.jpg")),
                  ),
                  child: Center(
                    child: Text(
                      "PlAY STATION/X BOX",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 23,
                          fontFamily: 'Hind',
                          fontStyle: FontStyle.italic),
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Iphone()),
                  );
                },
              ),
              InkWell(
                child: Container(
                  margin: EdgeInsets.only(top: 10),
                  height: 140,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.8), BlendMode.dstATop),
                      image: AssetImage("assets/123-hero.jpg"),
                      // NetworkImage(
                      //     "https://www.popsci.com/uploads/2019/03/18/V3QATKYRDMFWFTDPYI3LVPKGQQ.jpg?width=785")
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "APPLE ACCESSORIES",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 23,
                          fontFamily: 'Hind',
                          fontStyle: FontStyle.italic),
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Iphone()),
                  );
                },
              ),
              InkWell(
                child: Container(
                  margin: EdgeInsets.only(top: 10),
                  height: 140,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.9), BlendMode.dstATop),
                        image: NetworkImage(
                            "https://i.pinimg.com/originals/59/10/1d/59101d000eceb1afc13d5e7808c0a77d.jpg")),
                  ),
                  child: Center(
                    child: Text(
                      "ACCESSORIES",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 23,
                          fontFamily: 'Hind',
                          fontStyle: FontStyle.italic),
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Iphone()),
                  );
                },
              ),
            ],
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 50,
        color: Colors.white,
        child: Container(
          height: 50,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: <
                  Widget>[
            MaterialButton(
                minWidth: 50,
                onPressed: () {
                  setState(() {
                    currentScreen = Home();
                    currentTab = 0;
                  });
                },
                child: Icon(Icons.home,
                    color: currentTab == 0 ? Color(0xFF111140) : Colors.black)),
            MaterialButton(
                minWidth: 60,
                onPressed: () {
                  setState(() {
                    currentScreen = Fav();
                    currentTab = 1;
                  });
                },
                child: Icon(Icons.favorite,
                    color: currentTab == 1 ? Color(0xFF111140) : Colors.black)),
            MaterialButton(
                minWidth: 60,
                onPressed: () {
                  setState(
                    () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("Search"),
                            content: TextField(),
                          );
                        },
                      );
                    },
                  );
                },
                child: Container(
                  child: Icon(Icons.search,
                      size: 50,
                      color:
                          currentTab == 2 ? Color(0xFF111140) : Colors.black),
                )),
            MaterialButton(
                minWidth: 60,
                onPressed: () {
                  setState(() {
                    currentScreen = Fav();
                    currentTab = 3;
                  });
                },
                child: Icon(Icons.store,
                    color: currentTab == 3 ? Color(0xFF111140) : Colors.black)),
            MaterialButton(
                minWidth: 60,
                onPressed: () {
                  setState(() {
                    currentScreen = Iphone();
                    currentTab = 4;
                  });
                },
                child: Icon(Icons.person,
                    color: currentTab == 4 ? Color(0xFF111140) : Colors.black)),
          ]),
        ),
      ),
    );
  }
}
