import 'package:apod_app/src/screens/apod_screns.dart';
import 'package:apod_app/src/screens/settings_screens.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home),
              title: Text('APOD'), 
              ),
               BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.gear_solid),
              title: Text('Setings'), 
              ),
               
          ],
          
        ),
        tabBuilder: (context, index){
          return CupertinoTabView(

            builder: (context){
              switch(index){
                case 0:
                return ApodScreens();
                case 1:
                return SetingScreen();
         
              }
              return ApodScreens();
            }
          );
        }
      );
  }
  }