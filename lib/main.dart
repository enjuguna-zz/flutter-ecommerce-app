import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/services.dart';

//My Own Imports
import 'package:delivery_app/components/horizontal_listview.dart';
import 'package:delivery_app/components/products.dart';

void main() {

  runApp(MaterialApp(
    home: Homepage(),
    debugShowCheckedModeBanner: false,
  ));
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 180.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/img1.jpg'),
          AssetImage('images/img2.jpg'),
          AssetImage('images/img3.jpg'),
          AssetImage('images/img4.jpg'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        dotColor: Colors.red,
        indicatorBgPadding: 5.0,
      ),
    );
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        title: Text('Bubble'),
        backgroundColor: Colors.red,
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          new IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {})
        ],
      ),
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            //header
            new UserAccountsDrawerHeader(
              accountName: Text('Eric Njuguna'),
              accountEmail: Text('eric7njuguna@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: new BoxDecoration(color: Colors.red),
            ),

            //body
            InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('Home page'),
                  leading: Icon(
                    Icons.home,
                    color: Colors.blue,
                  ),
                )),
            InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('My Account'),
                  leading: Icon(
                    Icons.person,
                    color: Colors.red,
                  ),
                )),
            InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('My Orders'),
                  leading: Icon(
                    Icons.shopping_cart,
                    color: Colors.yellow,
                  ),
                )),
            InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('Categories'),
                  leading: Icon(
                    Icons.dashboard,
                    color: Colors.indigoAccent,
                  ),
                )),
            InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('Favorites'),
                  leading: Icon(
                    Icons.favorite,
                    color: Colors.pink,
                  ),
                )),
            Divider(),
            InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('Settings'),
                  leading: Icon(
                    Icons.settings,
                    color: Colors.blue,
                  ),
                )),
            InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('About'),
                  leading: Icon(
                    Icons.help,
                    color: Colors.green,
                  ),
                )),
          ],
        ),
      ),
      body: new ListView(
        //Image Carousel
        children: <Widget>[
          image_carousel,
          //Padding
          new Padding(
            padding: const EdgeInsets.all(16.0),
            child: new Text('Categories'),
          ),
          //Horizontal List view Begins Here
          HorizontaList(),

          //Padding
          new Padding(padding: const EdgeInsets.all(20.0),
          child: new Text('Recent Products',),
          ),
          Container(
            height: 320.0,
            child: Products(),
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({
    this.image_location,
    this.image_caption,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 100.0,
        child: InkWell(
          onTap: () {},
          child: ListTile(
            title: Image.asset(
              image_location,
              width: 100.0,
              height: 80.0,
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(image_caption),
            ),
          ),
        ),
      ),
    );
  }
}
