import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black54,
          title: Text("Top Designers",style: TextStyle(
              color: Colors.white
          ),),
          actions: <Widget>[
            Container(
                padding: EdgeInsets.all(10.0),
                child: IconButton(icon: Icon(Icons.add,color: Colors.red,),onPressed: (){},))
          ],
        ),
         body: GridView.count(crossAxisCount: 2,
         children: <Widget>[
           MyCard(Colors.blueAccent),
           MyCard(Colors.redAccent),
           MyCard(Colors.orangeAccent),
           MyCard(Colors.greenAccent),
           MyCard(Colors.yellowAccent),
           MyCard(Colors.lightGreen),
         ],),
      ),
    );
  }
}
class MyCard extends StatelessWidget {
  Color c;
  MyCard(this.c);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left:20.0,right: 20.0,bottom: 10.0,top: 10.0),
      width: 130,
      height: 180,
      decoration: BoxDecoration(
          color: c,
          borderRadius: BorderRadius.circular(8.0)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          CircleAvatar(
            backgroundImage: NetworkImage("https://e3.365dm.com/20/05/768x432/skynews-matt-hancock-coronavirus-uk_4981419.jpg"),
          ),
          Text("John Smith",style: TextStyle(
              color: Colors.white,
              fontSize: 15.0
          ),),
          Text("UI/UX designer",style: TextStyle(
              color: Colors.white,
              fontSize: 12.0
          ),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              CircleAvatar(
                radius: 15.0,
                backgroundColor: Colors.white.withOpacity(.5),
                child: Icon(Icons.person_outline,size: 15.0,),
              ),
              CircleAvatar(
                radius: 15.0,
                backgroundColor: Colors.white.withOpacity(.5),
                child: Icon(Icons.mail_outline,size: 15.0,),
              )],
          )
        ],
      ),
    );
  }
}


