// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/flaotbutton.dart';
import 'package:flutter_application_1/components/intemlist.dart';
import 'package:flutter_application_1/components/primary.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.favorite_border),
              onPressed: () {},
            )
          ],
        ),
        backgroundColor: Colors.grey[200],
        body: Column(
          children: <Widget>[
            Primary(),
            Expanded(
              child: ListView.separated(
                itemCount: 9,
                itemBuilder: (BuildContext context, int index) {
                  return ItemList();
                },
                separatorBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 7,
                  );
                },
              ),
            ),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatButton());
  }
}
