import 'package:flutter/cupertino.dart';

class CupertinoCard extends StatelessWidget {
  const CupertinoCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _card =
  
  Stack(
    alignment: Alignment.bottomCenter,
    children: <Widget>[
FadeInImage(
  placeholder: AssetImage('assets/cupertino_activity_indicator.gif'),
  image:NetworkImage('https://images.unsplash.com/photo-1500382017468-9049fed747ef?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80') ,
  fadeInDuration: Duration(milliseconds: 200),
  fit: BoxFit.cover,
),

Opacity(
  opacity: 0.7,
  child:   Container(
    width: double.infinity,
    height: 80.0,
    color: CupertinoColors.black,
    padding: EdgeInsets.symmetric(horizontal:10.0, vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('2020-07-04' , style: TextStyle(color: CupertinoColors.white),),
          Text('Descripcion de la imagen', style: TextStyle(color: CupertinoColors.white, fontSize: 25.0),),
        ],
        ),
    ),
),

  ],
  
  );
   


return Container(

  margin: EdgeInsets.all(10.0),
  decoration: BoxDecoration(
    color: CupertinoColors.white,
    borderRadius: BorderRadius.circular(10.0),
    boxShadow: [
      BoxShadow(
        color: CupertinoColors.darkBackgroundGray.withOpacity(.8),
        blurRadius: 8.0,
        offset: Offset(0.0, 5.0)
      ),
    ],
  ),
  child: ClipRRect(
    borderRadius: BorderRadius.circular(10.0),
    child: _card,
    
    ),
);
  }
}


Widget _cardTipo2 (BuildContext context){

 
}