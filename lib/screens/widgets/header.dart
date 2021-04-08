import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  Header({Key key}) : super(key: key);

  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
       
      ),
       child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
           Row(
             children: [
               Icon(Icons.location_pin, size: 13),
               SizedBox(width: 5),
               Text('SANTANDER, ESPAÑA', style: TextStyle(
                 fontSize: 13
               ))
             ],
           ),
           ClipRRect(
             borderRadius: BorderRadius.circular(50),
             child: FadeInImage(
               fit: BoxFit.cover,
               height: 50,
               width: 50,
               placeholder: AssetImage('assets/coffeeloading.gif'),
               image: NetworkImage('https://expertphotography.com/wp-content/uploads/2020/08/profile-photos-2.jpg'),
             ),
           )
         ],
       ),
    );
  }
}