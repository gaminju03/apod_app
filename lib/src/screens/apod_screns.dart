import 'package:apod_app/views/card_widget.dart';
import 'package:flutter/cupertino.dart';

class ApodScreens extends StatefulWidget {
  ApodScreens({Key key}) : super(key: key);

  @override
  _ApodeScreensState createState() => _ApodeScreensState();
}

class _ApodeScreensState extends State<ApodScreens> {
//Segmented control 
int _selectedIndex= 0;
List<Widget> _childrens = new List();

@override
void initState() { 
  super.initState();
  _apodRecedList
  _childrens.add(Text('Contenido Recent'));
  _childrens.add(Text('Contenido Random'));
  _childrens.add(Text('Contenido Save'));
  
}

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
       child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
           children: <Widget>[
             Text('Julio 25, 2020'),
             Row(
               children: <Widget>[
               Expanded(child: Text('APOD')),
               CupertinoButton(
                   child: Icon(CupertinoIcons.add_circled), 
                   onPressed: () => print ('Refres')
                   )
             ],),
             Container(
               height: 1.0,
               color: CupertinoColors.systemGrey5,
             ),
             SizedBox(height: 20.0,),
             Center(
               child: CupertinoSlidingSegmentedControl<int>(
                 children: {
                   0: Text('Recent'),
                   1: Text('Random'),
                   2: Text('Saved'),
                 },

                 onValueChanged: _onValueChange,
                 groupValue: _selectedIndex,
                              ),
             ),
               SizedBox(height: 20.0,),
               Expanded(
                 child: _childrens[_selectedIndex],
               ),
                          ],
                        ),
                               ),
                      ),
                   );
                 }
               
                 void _onValueChange(int value) {
                   setState(() {
                     _selectedIndex = value ;
                   });
  }


Widget _apodRecedList(){
  return ListView(
    children:<Widget>[
CupertinoCard(),
    ],
    );
}


}