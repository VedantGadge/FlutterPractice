import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //Scaffold is widget, whch has many attributes such as appBar,..etc which are basic stuff we can use to make our apps.
        appBar: appBar(),
        backgroundColor: Color.fromARGB(242, 229, 227, 227),
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 40, left: 20, right: 20),
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: Color(0xff1D1617).withOpacity(0.11),
                    blurRadius: 40,
                    spreadRadius: 0.5)
              ]),
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: const EdgeInsets.all(15),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none,
                    )),
              ),
            )
          ],
        ));
  }

  AppBar appBar() {
    return AppBar(
      //appBar: is a parameter where we can have AppBar() widget, which essebtially makes an appbar for our app at the top.

      shadowColor: Colors.black,
      elevation: 4.0,
      title: const Text(
        'Breakfast',
        style: TextStyle(
            //we can change the style aspect of a widget by the style parameter, fo instance here we wanna change the text style so we use the TextStyle() class in the style parameter.

            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold),
      ),
      centerTitle: true,
      leading: GestureDetector(
          onTap: () {},
          child: Container(
              //The Container widget is a versatile widget used to contain and style other widgets.//the leading property in an AppBar widget allows you to specify a widget that should be displayed at the leading edge (typically the left side) of the AppBar.
              margin: const EdgeInsets.all(10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Color(0xffF7F8F8),
                  borderRadius: BorderRadius.circular(10)),
              child: SvgPicture.asset(
                'assets/icons/Arrow - Left 2.svg',
                height: 20,
                width: 20,
              ))),
      actions: [
        GestureDetector(
            onTap: () {},
            //he actions property allows you to specify a list of widgets that should be displayed on the opposite end (typically the right side) of the AppBar from the leading widget.
            child: Container(
                //The Container widget is a versatile widget used to contain and style other widgets.//the leading property in an AppBar widget allows you to specify a widget that should be displayed at the leading edge (typically the left side) of the AppBar.
                margin: const EdgeInsets.all(10),
                alignment: Alignment.center,
                width: 35, //sets the width of the container widget
                decoration: BoxDecoration(
                    //BoxDecoration() is a class which is used to describe the appearance of a Container or a DecoratedBox.
                    color: Color(0xffF7F8F8),
                    borderRadius: BorderRadius.circular(10)),
                child: SvgPicture.asset(
                  'assets/icons/dots.svg',
                  height: 5,
                  width: 5,
                )))
      ],
    );
  }
}

/*
Container widget is used to wrap it around other widgets which we wanna customize as it provides us with its properties such as decoration, padding,color,margin,.etc.
For instance, container can be used when we wanna make customized buttons, cards, etc. 
Whereas Scaffold is used as a widget to get basic elements of an App such as appbar, drawer, floating button, etc.
*/
