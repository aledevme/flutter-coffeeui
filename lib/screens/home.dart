import 'package:coffeeui/screens/widgets/header.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverList(
              
              delegate: SliverChildListDelegate(
                [
                  Header(),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal:20 
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Discover', style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500
                        )),
                        Text('Coffee Stations', style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w800
                        ))
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  trendPlaces()
                ]
              ),
            ),
          ],
        )
      )
    );
  }

  Widget trendPlaces(){
    return Container(
      height: 500,
      child: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 20
        ),
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            width: 300,
            margin: EdgeInsets.all(5),
            child: FadeInImage(
              placeholder: AssetImage('assets/coffeeloading.gif'),
              fit: BoxFit.cover,
              image: NetworkImage('https://media-cdn.tripadvisor.com/media/photo-s/16/58/4b/d8/front-entrance.jpg'),
            ),
          ),
          Container(
            width: 300,
            margin: EdgeInsets.all(5),
            child: FadeInImage(
              placeholder: AssetImage('assets/coffeeloading.gif'),
              fit: BoxFit.cover,
              image: NetworkImage('https://i.pinimg.com/originals/ff/89/44/ff8944705e715b7507dfbeab2617f028.jpg'),
            ),
          ),
          Container(
            width: 300,
            margin: EdgeInsets.all(5),
            child: FadeInImage(
              placeholder: AssetImage('assets/coffeeloading.gif'),
              fit: BoxFit.cover,
              image: NetworkImage('https://cdn.vox-cdn.com/thumbor/jMIMrPGOFgMkEMRnZC-Zvh8MGok=/0x0:2016x1512/1200x900/filters:focal(847x595:1169x917):no_upscale()/cdn.vox-cdn.com/uploads/chorus_image/image/66351265/littleskipseast.0.jpg'),
            ),
          )
        ],
      ),
    );
  }

}