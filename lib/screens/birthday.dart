import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class Birthday extends StatelessWidget {
  const Birthday({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.green,
      child: Slidable(
        endActionPane: const ActionPane(
          motion: ScrollMotion(),
          children: [
            SlidableAction(
              // An action can be bigger than the others.
              flex: 2,
              onPressed: null,
              backgroundColor: Color(0xFF7BC043),
              foregroundColor: Colors.white,
              icon: Icons.archive,
              label: 'Archive',
            ),
            SlidableAction(
              onPressed: null,
              backgroundColor: Color(0xFF0392CF),
              foregroundColor: Colors.white,
              icon: Icons.save,
              label: 'Save',
            ),
          ],
        ),
        child: ListTile(
          tileColor: Colors.amber,
          focusColor: Colors.red,
          hoverColor: Colors.blue,
          leading: CircleAvatar(
            backgroundColor: Colors.red,
          ),
          title: Text("Peter Pan"),
          subtitle: Text("Hat in 5 Tagen Geburstag"),
        ),
      ),
    );
  }
}
