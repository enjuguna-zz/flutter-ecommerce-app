import 'package:flutter/material.dart';
class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_new_price;
  final product_detail_old_price;
  final product_detail_picture;

  ProductDetails({
    this.product_detail_name,
    this.product_detail_new_price,
    this.product_detail_old_price,
    this.product_detail_picture,
});
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  new AppBar(
        elevation: 0.1,
        title: Text('Bubble', style: TextStyle(color: Colors.red),),
        backgroundColor: Colors.black,
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.red,
              ),
              onPressed: () {}),
          new IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.red,
              ),
              onPressed: () {})
        ],
      ),

      body: new ListView(
        children: <Widget>[
          new Container(
            height: 300.0,
            child:  GridTile(
                child: Container(
                  color: Colors.white,
                  child: Image.asset(widget.product_detail_picture),
                ),
              footer: new Container(
                color: Colors.white60,
                child: ListTile(
                  leading: new Text(widget.product_detail_name,
                 style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                  ),
                  title: new Row(
                    children: <Widget>[

                      Expanded(
                        child: new Text("\$${widget.product_detail_old_price}",
                        style: TextStyle(color: Colors.grey, decoration: TextDecoration.lineThrough, fontWeight: FontWeight.bold),
                        ),

                      ),
                      Expanded(
                        child: new Text("\$${widget.product_detail_new_price}",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0, color: Colors.red),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

            ),
          ),


          Row(
            children: <Widget>[

              //==============================The First Buttons========================
              Expanded(
                child: MaterialButton(
                    onPressed: (){},
                color: Colors.white,
                  textColor: Colors.grey,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("Size"),
                      ),
                      Expanded(
                        child: new Icon(Icons.arrow_drop_down),
                      ),
                    ],
                  ),
                ),
              ),

              //The QTY Button
              Expanded(
                child: MaterialButton(
                  onPressed: (){},
                  color: Colors.white,
                  textColor: Colors.grey,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("Qty"),
                      ),
                      Expanded(
                        child: new Icon(Icons.arrow_drop_down),
                      ),
                    ],
                  ),
                ),
              ),
              //The Type Button
              Expanded(
                child: MaterialButton(
                  onPressed: (){},
                  color: Colors.white,
                  textColor: Colors.grey,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("Type"),
                      ),
                      Expanded(
                        child: new Icon(Icons.arrow_drop_down),
                      ),
                    ],
                  ),


                ),
              ),



            ],
          ),
          Row(
            children: <Widget>[

              //==============================The Second Buttons========================
              Expanded(
                child: MaterialButton(

                  onPressed: (){},
                  color: Colors.black,
                  textColor: Colors.red,
                  elevation: 1.6,
                  child: new Text("Buy Now"),
                ),
              ),

              //==============================The Size Buttons========================




            ],
          ),



        ],
      ),
    );
  }
}
