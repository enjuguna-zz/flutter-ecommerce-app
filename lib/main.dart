import 'package:flutter/material.dart';

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
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        title: Text('Drinks'),
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
              onTap: (){},
            child:ListTile(
              title: Text('Home page'),
              leading: Icon(Icons.home,
              color: Colors.blue,
              ),
            )
            ),
            InkWell(
                onTap: (){},
                child:ListTile(
                  title: Text('My Account'),
                  leading: Icon(Icons.person,
                  color: Colors.red,
                  ),

                )
            ),
            InkWell(
                onTap: (){},
                child:ListTile(
                  title: Text('My Orders'),
                  leading: Icon(Icons.shopping_cart,
                  color: Colors.yellow,
                  ),
                )
            ),
            InkWell(
                onTap: (){},
                child:ListTile(
                  title: Text('Categories'),
                  leading: Icon(Icons.dashboard,
                  color: Colors.indigoAccent,
                  ),
                )
            ),
            InkWell(
                onTap: (){},
                child:ListTile(
                  title: Text('Favorites'),
                  leading: Icon(Icons.favorite,
                  color: Colors.pink,
                  ),
                )
            ),
            Divider(),
            InkWell(
                onTap: (){},
                child:ListTile(
                  title: Text('Settings'),
                  leading: Icon(Icons.settings,
                  color: Colors.blue,
                  ),
                )
            ),
            InkWell(
                onTap: (){},
                child:ListTile(
                  title: Text('About'),
                  leading: Icon(Icons.help,
                  color: Colors.green,
                  ),

                )
            ),
          ],
        ),
      ),
    );
  }
}
