// Essential Flutter packages
import 'package:flutter/material.dart';

//The used item for the drawer
ListTile sideDrawerItem({Image image, String itemName, Function onPressed}) {
  return ListTile(
    title: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
      child: Row(
        children: <Widget>[
          //Left icon
          Container(
            margin: EdgeInsets.only(right: 15),
            height: 24,
            width: 24,
            child: image,
          ),

          // The item text
          Text(
            itemName,
            style: TextStyle(
                letterSpacing: 1.5,
                fontSize: 15,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w500),
          ),
        ],
      ),
    ),

    //on press on the drawer item
    onTap: onPressed,
  );
}

Drawer sideDrawer() {
  return Drawer(
    elevation: 10,
    child: ListView(
      children: <Widget>[
        // Drawer Header => top container in the drawer
        DrawerHeader(
          child: Center(
            child: Column(
              children: <Widget>[
                // The user profile and the check mark
                Expanded(
                  flex: 50,
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: <Widget>[
                      //The user profile
                      Container(
                        decoration: BoxDecoration(boxShadow: <BoxShadow>[
                          BoxShadow(
                              offset: Offset(0, 5),
                              color: Color.fromRGBO(0, 0, 0, .2),
                              spreadRadius: 1,
                              blurRadius: 10)
                        ]),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(25.0),
                            child:
                                Image.asset("assets/images/profile-photo.png")),
                      ),

                      //The check merk
                      Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                              colors: [Color(0xffFA566A), Color(0xffE3317B)],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                  offset: Offset(0, 5),
                                  color: Color(0x60FA566A),
                                  spreadRadius: .5,
                                  blurRadius: 10)
                            ]),
                        height: 20,
                        width: 20,
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Center(
                              child: Image.asset(
                                  'assets/images/drawer/check-mark.png')),
                        ),
                      )
                    ],
                  ),
                ),
                Spacer(
                  flex: 5,
                ),

                //The user name
                Expanded(
                  flex: 13,
                  child: Text(
                    'Bernard Cerny',
                    style: TextStyle(
                      fontSize: 16,
                      letterSpacing: 1,
                      color: Color(0xff444444),
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),

                //The user sub text (job)
                Expanded(
                    flex: 15,
                    child: Text(
                      'Traveler',
                      style: TextStyle(
                          fontSize: 12,
                          letterSpacing: 3,
                          color: Colors.grey[600],
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600),
                    )),

                //The edit button
                Expanded(
                  flex: 20,
                  child: Container(
                    width: 80,
                    child: RaisedButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      padding: EdgeInsets.all(0.0),
                      child: Ink(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Color(0xffFA566A), Color(0xffE3317B)],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                            borderRadius: BorderRadius.circular(30.0)),
                        child: Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x60FA566A),
                                blurRadius: 10.0,
                                spreadRadius: 0.5,
                                offset: Offset(1.0, 2.0),
                              )
                            ],
                          ),
                          constraints:
                              BoxConstraints(maxWidth: 80.0, minHeight: 50.0),
                          alignment: Alignment.center,
                          child: Text(
                            "Edit",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          decoration: BoxDecoration(
            color: Color(0xffEBEBEB),
          ),
        ),

        // The item
        sideDrawerItem(
            image: Image.asset('assets/images/drawer/discover.png'),
            itemName: 'Discover',
            onPressed: () {}),
        sideDrawerItem(
            image: Image.asset('assets/images/drawer/near-me.png'),
            itemName: 'Near me',
            onPressed: () {}),
        sideDrawerItem(
            image: Image.asset('assets/images/drawer/activities.png'),
            itemName: 'Activities',
            onPressed: () {}),
        sideDrawerItem(
            image: Image.asset('assets/images/drawer/map.png'),
            itemName: 'Map',
            onPressed: () {}),
        sideDrawerItem(
            image: Image.asset('assets/images/drawer/bookings.png'),
            itemName: 'Bookings',
            onPressed: () {}),
        sideDrawerItem(
            image: Image.asset('assets/images/drawer/subscription.png'),
            itemName: 'Subscription',
            onPressed: () {}),
        Divider(
          height: 30,
          thickness: 2,
          endIndent: 55,
          indent: 55,
          color: Colors.grey[300],
        ),
        sideDrawerItem(
            image: Image.asset('assets/images/drawer/settings.png'),
            itemName: 'Settings',
            onPressed: () {}),
        sideDrawerItem(
            image: Image.asset('assets/images/drawer/logout.png'),
            itemName: 'Logout',
            onPressed: () {}),
      ],
    ),
  );
}
