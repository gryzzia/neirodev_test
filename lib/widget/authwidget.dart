// ignore_for_file: prefer_const_constructors, use_build_context_synchronously

import 'package:flutter/material.dart';
import '../api.dart';
import '../constant.dart';
import '../page/user.dart';


class AuthWidgets extends StatefulWidget {
  const AuthWidgets({Key? key}) : super(key: key);

  @override
  State<AuthWidgets> createState() => _AuthWidgetsState();
}



class _AuthWidgetsState extends State<AuthWidgets> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 100,
            ),
            Center(
                child: Text(
                  'Neirodev',
                  style: TextStyle(
                    fontSize: 24,
                  ),
                )),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: EdgeInsets.only(left: 15.0, right: 15),
              child: Container(
                height: 60,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(color: Colors.black),
                      right: BorderSide(color: Colors.black),
                      left: BorderSide(color: Colors.black),
                      bottom: BorderSide(color: Colors.black)),

                  borderRadius: BorderRadius.all(
                      Radius.circular(15.0)), // set rounded corner radius
                ),
                child: TextField(
                  controller: name,
                  decoration: InputDecoration(
                      labelStyle: TextStyle(fontSize: 16),
                      hintText: 'Имя',
                      hintStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                      border: InputBorder.none),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),

            //Кнопка войти

            Padding(
              padding: EdgeInsets.only(left: 15.0, right: 15),
              child: SizedBox(
                height: 60,
                child: Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 15,
                      minimumSize: Size.fromHeight(
                        MediaQuery.of(context).size.height * 0.75,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                    onPressed: () async {
                         await getAge();
                         await getGender();
                         await getNationalize();

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const UserPage()),
                      );
                    },
                    child: Text(
                      'Узнать информацию',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
