import 'package:flutter/material.dart';


class PageDecoration extends StatelessWidget {

  final Widget _child;
  PageDecoration(this._child);
  @override
  Widget build(BuildContext context) {
    return Container(
         margin: const EdgeInsets.all(1.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.pinkAccent)
                  ),
          child:_child);
  }
}