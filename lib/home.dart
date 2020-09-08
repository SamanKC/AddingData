import 'package:flutter/material.dart';
import 'package:flutterdataadd/dish_object.dart';
import 'package:flutterdataadd/list.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var item;
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: 400.0,
                  width: double.infinity,
                  color: Colors.red[800],
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 44.0,
                        ),
                      ),
                      Spacer(),
                      Container(
                        child: Icon(
                          Icons.favorite_border,
                          color: Colors.white,
                          size: 44.0,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(50.0, 100.0, 0, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Brand",
                            style:
                                TextStyle(fontSize: 24.0, color: Colors.white),
                          ),
                          Text(
                            "Code",
                            style: TextStyle(
                                fontSize: 18, color: Colors.grey[800]),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 18.0),
                            child: Text(
                              "Code",
                              style:
                                  TextStyle(fontSize: 24, color: Colors.white),
                            ),
                          ),
                          Text(
                            "V5SP08FH",
                            style: TextStyle(
                                fontSize: 18, color: Colors.grey[800]),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 18.0),
                            child: Text(
                              "Leather",
                              style:
                                  TextStyle(fontSize: 24, color: Colors.white),
                            ),
                          ),
                          Text(
                            "100%",
                            style: TextStyle(
                                fontSize: 18, color: Colors.grey[800]),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 18.0),
                            child: Text(
                              "Color",
                              style:
                                  TextStyle(fontSize: 24, color: Colors.white),
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: CircleAvatar(
                                  radius: 10,
                                  backgroundColor: Color(0xFFF48FB1),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: CircleAvatar(
                                  radius: 10,
                                  backgroundColor: Color(0xDD000000),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: CircleAvatar(
                                  radius: 10,
                                  backgroundColor: Color(0xffFDCF09),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Spacer(),
                    Container(
                      height: 350.0,
                      width: 300.0,
                      child: Image.asset('images/nike.png'),
                    ),
                  ],
                )
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                children: <Widget>[
                  FlatButton(
                    color: Colors.blue,
                    textColor: Colors.white,
                    padding: EdgeInsets.all(8.0),
                    shape: CircleBorder(side: BorderSide(color: Colors.red)),
                    onPressed: () {
                      setState(() {
                        number++;
                        _cart.add(item);
                      });
                    },
                    child: Icon(Icons.add),
                  ),
                  Text(
                    number.toString(),
                  ),
                  FlatButton(
                    color: Colors.blue,
                    textColor: Colors.white,
                    padding: EdgeInsets.all(8.0),
                    shape: CircleBorder(side: BorderSide(color: Colors.red)),
                    onPressed: () {
                      setState(() {
                        if (number != 0) {
                          number--;
                        } else {
                          //do nothing
                        }
                      });
                    },
                    child: Icon(Icons.remove),
                  ),
                  Spacer(),
                  RaisedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Cart(_cart)));
                      },
                      textColor: Colors.white,
                      color: Colors.red[400],
                      elevation: 5,
                      padding: EdgeInsets.all(18.0),
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0)),
                      child: Text(
                        "Add to Cart",
                        style: TextStyle(fontSize: 24),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void _cartList() {
    var list = <Shoes>[
      Shoes(
        name: 'Red Shoes',
        icon: Icons.radio_button_checked,
        price: 11.0,
        rating: 4.8,
      ),
      Shoes(
        name: 'White Shoes',
        icon: Icons.radio_button_checked,
        price: 21.0,
        rating: 4.9,
      ),
    ];
    setState(() {
      _shoeslist = list;
    });
  }
}
