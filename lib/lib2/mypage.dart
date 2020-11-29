import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './main_drawer.dart';
import './main.dart';
class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Bahay kubo'),

        backgroundColor: Colors.green[300],
        bottom:
        TabBar(tabs:
        [
          Tab(text: "Modules",),
          Tab(text: "Aking Pahina",)

        ],
        ),
      ),
      drawer: MainDrawer(

      ),
      body:

        Padding(

          padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),

          child: Column(
            children: <Widget>[
              Text(
                'Juan dela cruz', style: TextStyle( color: Colors.black, fontFamily: 'Poppins', fontSize: 20 ),
              ),
              Text('Mag-aaral', style: TextStyle( color: Colors.black, fontFamily: 'Poppins', fontSize: 12),
              ),
           Container(
    width: double.infinity,
    padding: EdgeInsets.all(20),
    color: Theme.of(context).secondaryHeaderColor,
    child: Center(

    child: Column(
    children: <Widget>[

    Container(
    width: 100,
    height: 150,
    decoration: BoxDecoration(
    shape:  BoxShape.circle,
    image: DecorationImage(
    image: AssetImage(
    'pics/bkbuddyyellow.jpg'),
    fit: BoxFit.contain
    ),
    ),


    ),


            ],
          ),
        ),
            ),
              Container(
                width: double.infinity,
                height: 20.0,
                child: RaisedButton(
                  onPressed: () {},
                  color: Colors.white,
                  child: Text(
                    'Ang Aking Progresso',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 20.0,
                child: RaisedButton(
                  onPressed: () {},
                  color: Colors.white,
                  child: Text(
                    'Mga Nagawang Modyul',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 20.0,
                child: RaisedButton(
                  onPressed: () {},
                  color: Colors.white,
                  child: Text(
                    'Aking Mga Badge',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ],
      ),

        ),

    );



  }
}
