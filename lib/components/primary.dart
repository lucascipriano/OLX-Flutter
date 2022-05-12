import 'package:flutter/material.dart';

class Primary extends StatelessWidget {
  Widget _buttom(context, text) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: MediaQuery.of(context).size.width / 3,
        height: 60,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            right: BorderSide(
              color: Colors.grey,
              width: 0.5,
            ),
          ),
        ),
        child: Center(
            child: Text(
          text,
          style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.w500),
        )),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 50,
      child: Row(
        children: <Widget>[
          _buttom(context, "DDD 44.."),
          _buttom(context, "Categoria"),
          _buttom(context, "Filtros"),
        ],
      ),
    );
  }
}
