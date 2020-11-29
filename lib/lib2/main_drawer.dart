import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './main.dart';
class MainDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Drawer(

      child: Column(
        children: <Widget> [
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

                Text('Juan de la Cruz', style: TextStyle(fontSize: 22, color: Colors.black),),
                Text('juan.delacruz@gmail.com', style: TextStyle(fontSize: 15, color: Colors.black),),

              ],
              ),

      ),
          ),


              ListTile(


                title: Text(
                    '                  Home',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                ),
                onTap: null
    ),




          ListTile(
            title: Text(
              '                 Settings',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: null,


            ),


          ListTile(
            title: Text(
              '                  Logout',
              style: TextStyle(
                fontSize: 18,

              ),

            ),
            onTap: null,
          ),
        ],
      ),

    );

  }
}
