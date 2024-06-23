import 'package:app1/models/category_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<CategoryModel> categories = [];

  void _getCategories() {
    categories = CategoryModel.getCategories();
  }

  @override
  Widget build(BuildContext context) {
    _getCategories(); //calling the categories model method so that list gets diplayed from the beginning itself.
    return Scaffold(
        //Scaffold is widget, whch has many attributes such as appBar,..etc which are basic stuff we can use to make our apps.
        appBar: appBar(),
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            searchField(),
            const SizedBox(height: 20),
            categoriesSection()
          ],
        ));
  }

  Column categoriesSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            'Categories',
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(height: 10),
        Container(
            height: 150,
            child: ListView.separated(
              //We are using the .seperated with ListView widget so that we can use the speratorBuilder parameter which allows us to seperate the items diplayed by the ListView by making a space or smth.
              itemCount: categories.length,
              // here we are giving the ListView builder widget the lenghth or the number of the items which will be there.
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) => (const SizedBox(width: 20)),
              //used to seperate the items of the ListView widget.
              padding: const EdgeInsets.only(left: 20, right: 20),
              itemBuilder: (context, index) {
                return Container(
                  width: 100,
                  decoration: BoxDecoration(
                    //this is to set the colour of each item displayed in the ListView as per the colour of the items in the categories list.
                    color: categories[index].boxColor.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    //This container is made to display the content inside each of the categories section.
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        //This container is made to display the icon of ewach container.
                        width: 40,
                        height: 40,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: SvgPicture.asset(categories[index].iconPath),
                      ),
                      const SizedBox(
                          height:
                              15), //made to have some space bw the category icon image n name.
                      Text(
                        categories[index].name,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                );
              },
            )),
      ],
    );
  }

  Container searchField() {
    return Container(
      margin: const EdgeInsets.only(top: 40, left: 20, right: 20),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: const Color(0xff1D1617).withOpacity(0.42),
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
            ),
            hintText: 'Search Pancakes',
            hintStyle: const TextStyle(
              color: Colors.grey,
              fontSize: 14,
            ),
            prefixIcon: Container(
              child: Padding(
                padding: const EdgeInsets.all(13),
                child: SvgPicture.asset('assets/icons/Search.svg'),
              ),
            ),
            suffixIcon: Container(
              width: 100,
              child: IntrinsicHeight(
                // To use a VerticalDivider widget in a Row widget wew need to wrap the Row widget inside the IntrisicHieght Widget.
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const VerticalDivider(
                      //VerticalDivider Widget is used to make a vertical line which divides the ares in a Row.
                      color: Color.fromARGB(255, 139, 139, 139),
                      thickness: 0.7,
                      indent:
                          10, // sets the dist of the VerticalDivider from the top.
                      endIndent:
                          10, //sets the dist of the VerticalDivider from the bottom.
                    ),
                    Padding(
                      padding: const EdgeInsets.all(11),
                      child: SvgPicture.asset('assets/icons/Filter.svg'),
                    ),
                  ],
                ),
              ),
            )),
      ),
    );
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
                  color: const Color(0xffF7F8F8),
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
                    color: const Color(0xffF7F8F8),
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
