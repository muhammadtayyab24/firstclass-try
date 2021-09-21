import 'package:flutter/material.dart';

class Iphone extends StatefulWidget {
  @override
  _IphoneState createState() => _IphoneState();
}

class _IphoneState extends State<Iphone> {
  List<dynamic> img = [
    // 'https://akm-img-a-in.tosshub.com/indiatoday/images/story/201604/iphonese_559_040816114534.jpg',
    // 'https://akm-img-a-in.tosshub.com/indiatoday/images/story/201604/iphonese_559_040816114534.jpg',
    // "https://i.insider.com/5fdcbfcbc910a400192e846c?width=700",
    // "https://i.insider.com/5fdcbfcbc910a400192e846c?width=700",
    // "https://i.insider.com/5fdcbfcbc910a400192e846c?width=700",
    // "https://i.insider.com/5fdcbfcbc910a400192e846c?width=700",
    // "https://i.insider.com/5fdcbfcbc910a400192e846c?width=700",
    // "https://i.insider.com/5fdcbfcbc910a400192e846c?width=700",
    // "https://i.insider.com/5fdcbfcbc910a400192e846c?width=700",
    // "https://i.insider.com/5fdcbfcbc910a400192e846c?width=700",
    // "https://i.insider.com/5fdcbfcbc910a400192e846c?width=700",
    // "https://i.insider.com/5fdcbfcbc910a400192e846c?width=700",
    // "https://i.insider.com/5fdcbfcbc910a400192e846c?width=700",
    // "https://i.insider.com/5fdcbfcbc910a400192e846c?width=700",
    // "https://i.insider.com/5fdcbfcbc910a400192e846c?width=700",
    // "https://i.insider.com/5fdcbfcbc910a400192e846c?width=700",
    // "https://i.insider.com/5fdcbfcbc910a400192e846c?width=700",
    // "https://i.insider.com/5fdcbfcbc910a400192e846c?width=700",
  ];
  List<dynamic> assetss = [
    'assets/154305-.jpg',
  ];

  List<dynamic> gridtext = [
    "Iphone 12 Pro Max",
    "Iphone 12 Pro",
    "Iphone 12 ",
    "Iphone 12 Mini",
    "Iphone SE 2020 ",
    "Iphone 11 PRO MAX",
    "Iphone 11 PRO",
    "Iphone 11 ",
    "Iphone XSMAX",
    "Iphone XS",
    "Iphone XR",
    "Iphone X",
    "Iphone 8 PLUS",
    "Iphone 8",
    "Iphone 7 Plus",
    "Iphone 7",
    "Iphone 6S Plus",
    "Iphone 6S",
    "Iphone 6 Plus",
    "Iphone 6",
    "Iphone 5S",
    "Iphone 5",
    "Iphone SE  ",
  ];
  List<dynamic> gridgb = [
    "GB : 128,256,512",
    "GB : 128,256,512",
    "GB : 64,128,256",
    "GB : 64,128,256",
    "GB : 64,128,256",
    "GB : 64,256,512",
    "GB : 64,256,512",
    "GB : 64,128,256",
    "GB : 64,256,512",
    "GB : 64,256",
    "GB : 64,256",
    "GB : 64,256",
    "GB : 64,256",
    "GB : 64,256",
    "GB : 32,128,256",
    "GB : 32,128,256",
    "GB : 16,32,64,128",
    "GB : 16,32,64,128",
    "GB : 16,32,64,128",
    "GB : 16,32,64,128",
    "GB : 8,16,32,64",
    "GB : 8,16,32,64",
    "GB : 8,16,32,64"
  ];
  List<dynamic> gridcolor = [
    "GOLD,SPECIFIC BLUE,WHITE,GREY",
    "GOLD,SPECIFIC BLUE,WHITE,GREY",
    "RED,BLUE,WHITE,BLACK",
    "BLUE,WHITE,BLACK",
    "GOLD,WHITE,RED,YELLOW,BLUE",
    "GOLD,MIDNIGHT GREEN,WHITE,SPACE GREY",
    "GOLD,MIDNIGHT GREEN,WHITE,SPACE GREY",
    "BLACK,WHITE,YELLOW,",
    "GOLD,BLUE,WHITE,GREY",
    "GOLD,BLUE,WHITE,GREY",
  ];
  List<dynamic> gridnewuse = [
    "NEW , USED",
    "NEW , USED",
    "NEW , USED",
    "NEW , USED",
    "NEW , USED",
    "NEW , USED",
    "NEW , USED",
    "NEW , USED",
    "NEW , USED",
    "NEW , USED",
  ];
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
                ListTile(
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
                ListTile(
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
            "Apple Iphones",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30,
                fontFamily: 'Hind',
                fontStyle: FontStyle.italic),
          ),
        ),
        backgroundColor: (Colors.grey.shade800),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.notifications),
              color: Colors.white,
              onPressed: () {})
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: GridView.count(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            scrollDirection: Axis.vertical,
            children: List.generate(img.length, (index) {
              return Card(
                elevation: 7.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                child: Container(
                    height: 400,
                    margin: new EdgeInsets.all(1.0),
                    child: Column(
                      children: [
                        Container(
                            child:
                                Image(image: AssetImage("${assetss[index]}"))),
                        Container(
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "${gridtext[index]}",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ),
                        ),

                        // Container(
                        //   child: Align(
                        //     alignment: Alignment.center,
                        //     child: Text(
                        //       "${gridgb[index]}",
                        //       style: TextStyle(
                        //         fontWeight: FontWeight.bold,
                        //       ),
                        //     ),
                        //   ),
                        // ),
                        // Container(
                        //   child: Align(
                        //     alignment: Alignment.center,
                        //     child: Text(
                        //       "${gridcolor[index]}",
                        //       // style: TextStyle(
                        //       //     fontWeight: FontWeight.bold, fontSize: 20),
                        //     ),
                        //   ),
                        // ),
                        // Container(
                        //   child: Align(
                        //     alignment: Alignment.center,
                        //     child: Text(
                        //       "${gridnewuse[index]}",
                        //       // style: TextStyle(
                        //       //     fontWeight: FontWeight.bold, fontSize: 20),
                        //     ),
                        //   ),
                        // ),
                        // Container(
                        //   child: stars(),
                        // ),
                        // Container(
                        //   child: stars(),
                        // ),
                        // Container(
                        //   child: stars(),
                        // ),
                      ],
                    )),
              );
            }),
          ),
        ),
      ),
    );
  }
}

Widget stars() {
  return Row(
    children: [
      Icon(
        Icons.star,
        color: Colors.yellow,
        size: 12,
      ),
      SizedBox(
        width: 2,
      ),
      Icon(
        Icons.star,
        color: Colors.yellow,
        size: 12,
      ),
      SizedBox(
        width: 2,
      ),
      Icon(
        Icons.star,
        color: Colors.yellow,
        size: 12,
      ),
      SizedBox(
        width: 2,
      ),
      Icon(
        Icons.star,
        color: Colors.yellow,
        size: 12,
      ),
      SizedBox(
        width: 2,
      ),
      Icon(
        Icons.star,
        color: Colors.yellow,
        size: 12,
      ),
      SizedBox(
        width: 15,
      ),
      Container(
        child: Text("(8.5 review)"),
      ),
    ],
  );
}
