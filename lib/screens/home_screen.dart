import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
    static const routeName = '/home';


  @override
  Widget build(BuildContext context){
    return Scaffold(appBar: AppBar(centerTitle: true,title: Text('home screen'),),);
  }
}



