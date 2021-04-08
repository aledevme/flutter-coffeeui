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
        child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 20
            ),
            child: CustomScrollView(
            slivers: [
              SliverList(
                
                delegate: SliverChildListDelegate(
                  [
                    Header(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Hey vamonos', style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500
                        )),
                        Text('a tomar un cafe!', style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w800
                        ))
                      ],
                    ),
                    SizedBox(height: 20),
                    TextField(
                      decoration: InputDecoration(
                        
                        filled: true,
                        border: new OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius:  BorderRadius.all(
                             Radius.circular(10.0),
                          ),
                        ),
                        prefixIcon: Icon(Icons.search),
                        hintText: 'Busca una cafeteria...',
                        suffixIcon:Icon(Icons.filter_alt_outlined, color: Colors.brown[400],)
                      ),
                    ),
                    SizedBox(height: 20),
                    Text('Tendencias', style: TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold
                    )),
                    SizedBox(height: 20),
                    trendPlaces(),
                    SizedBox(height: 20),
                     Text('Sugerencias', style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    )),
                    SizedBox(height: 20),
                    suggestions()
                  ]
                ),
              ),
            ],
          ),
        )
      )
    );
  }

  Widget trendPlaces(){
    return Container(
      height: 500,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            width: 300,
            margin: EdgeInsets.only(
              right:10 
            ),
            child: Stack(
              fit: StackFit.expand,
              children: [
                FadeInImage(
                  placeholder: AssetImage('assets/coffeeloading.gif'),
                  fit: BoxFit.cover,
                  image: NetworkImage('https://media-cdn.tripadvisor.com/media/photo-s/16/58/4b/d8/front-entrance.jpg'),
                ),
                Positioned(
                  right: 0,
                  left: 0,
                  bottom: 0,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 20
                    ),
                    color: Colors.black.withOpacity(0.7),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Cafeteria Valnera', style: TextStyle(
                          fontSize: 20, 
                          color: Colors.white
                        ))
                      ],
                    ),
                  ),
                )
              ],
            )
          ),
          Container(
            width: 300,
            margin: EdgeInsets.only(
              right:10
            ),
            child: Stack(
              fit: StackFit.expand,
              children: [
                FadeInImage(
                  placeholder: AssetImage('assets/coffeeloading.gif'),
                  fit: BoxFit.cover,
                  image: NetworkImage('https://i.pinimg.com/originals/ff/89/44/ff8944705e715b7507dfbeab2617f028.jpg'),
                ),
                Positioned(
                  right: 0,
                  left: 0,
                  bottom: 0,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 20
                    ),
                    color: Colors.black.withOpacity(0.7),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Cafeteria TATEN', style: TextStyle(
                          fontSize: 20, 
                          color: Colors.white
                        ))
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            width: 300,
            margin: EdgeInsets.only(
              right:10 
            ),
            child: Stack(
              fit: StackFit.expand,
              children: [
                FadeInImage(
                  placeholder: AssetImage('assets/coffeeloading.gif'),
                  fit: BoxFit.cover,
                  image: NetworkImage('https://cdn.vox-cdn.com/thumbor/jMIMrPGOFgMkEMRnZC-Zvh8MGok=/0x0:2016x1512/1200x900/filters:focal(847x595:1169x917):no_upscale()/cdn.vox-cdn.com/uploads/chorus_image/image/66351265/littleskipseast.0.jpg'),
                ),
                Positioned(
                  right: 0,
                  left: 0,
                  bottom: 0,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 20
                    ),
                    color: Colors.black.withOpacity(0.7),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Cafeteria Aldano', style: TextStyle(
                          fontSize: 20, 
                          color: Colors.white
                        ))
                      ],
                    ),
                  ),
                )
              ],
            )
          )
        ],
      ),
    );
  }

  Widget suggestions(){
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            child: Image(
              image: AssetImage('assets/locations.png'),
            )
          ),
          SizedBox(height: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(
                  bottom:20
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    content(title: 'Cafe Bar New Mountain'),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.brown[700]
                      ),
                      child: Icon(Icons.navigate_next, size: 25, color: Colors.white),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  bottom:20
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    content(title: 'Athenas'),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.brown[700]
                      ),
                      child: Icon(Icons.navigate_next, size: 25, color: Colors.white),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  bottom:20
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    content(title: 'Café & Té'),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.brown[700]
                      ),
                      child: Icon(Icons.navigate_next, size: 25, color: Colors.white),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget content({String title}){
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: Image(
            fit: BoxFit.cover,
            height: 50,
            width: 50,
            image: AssetImage('assets/coffeelogo.png'),
          ),
        ),
        SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold
            )),
            SizedBox(height: 8),
            Row(
              children: [
                Container(
                  child: Text('Disponible', style: TextStyle(
                    fontSize: 13,
                  )),
                ), 
                Container( decoration: BoxDecoration( borderRadius: BorderRadius.circular(50), color: Colors.grey[400] ) ,margin: EdgeInsets.symmetric(horizontal:8), height: 8, width: 8),
                Container(
                  child: Text('Comer allí', style: TextStyle(
                    fontSize: 13,
                  )),
                ), 
                Container( decoration: BoxDecoration( borderRadius: BorderRadius.circular(50), color: Colors.grey[400] ) ,margin: EdgeInsets.symmetric(horizontal:8), height: 8, width: 8),
                Container(
                  child: Text('Domicilio', style: TextStyle(
                    fontSize: 13,
                  )),
                ), 
              ],
            )
          ],
        )
      ],
    );
  }

}