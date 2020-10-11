import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0XFF757575),
      child: Container(
        padding: EdgeInsets.all(24.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24.0),
            topRight: Radius.circular(24.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add New Task',
              style: TextStyle(
                color: Colors.teal,
                fontSize: 28.0,
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.center,
            ),
            TextField(
              textAlign: TextAlign.center,
              autofocus: true,
            ),
            FlatButton(
              child: Text('Add',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w300,
                fontSize: 18.0
              ),),
              color: Colors.teal,
              onPressed: (){

              },
            ),
          ],
        ),
      ),
    );
  }
}
