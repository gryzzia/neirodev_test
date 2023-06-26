// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../constant.dart';


class UserWidgets extends StatefulWidget {
  const UserWidgets({Key? key}) : super(key: key);

  @override
  State<UserWidgets> createState() => _UserWidgetsState();
}

class _UserWidgetsState extends State<UserWidgets> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
              name.text,
              style: TextStyle(color: Colors.black, fontSize: 20),
            )),
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
      ),
      body:SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              Text('Возраст'),
              SizedBox(height: 10,),
              Text('${age as dynamic}'),
              SizedBox(height: 20,),
              Text('Пол'),
              SizedBox(height: 10,),
              Text('$gender'),
              SizedBox(height: 20,),
              Text('Национальность'),
              SizedBox(height: 10,),
              Text('$nationalize'),
              SizedBox(height: 20,)
            ],
          ),
        ),
      ),
    );
  }
}
