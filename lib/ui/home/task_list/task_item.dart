import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TaskItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(18),

      ),
      child: Slidable(
        startActionPane: ActionPane(
          extentRatio: .3,
          motion: BehindMotion(),
          children: [
            SlidableAction(onPressed: (buildContext){

            },
            backgroundColor: Colors.red,
            label: "Delet",
            icon: Icons.delete_forever,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(18),
                bottomLeft: Radius.circular(18)),)
          ],
        ),

        child: Container(
          padding: EdgeInsets.all(8),

          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18), color: Colors.white),
          child: Row(
            children: [
              Container(
                  height: 120,
                  width: 8,
                  decoration: BoxDecoration(

                    color: Theme.of(context).primaryColor,
                  )),
              SizedBox(width: 8,),
              Expanded(child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                Text("Title",style: Theme.of(context).textTheme.headline5?.
                  copyWith(color: Theme.of(context).primaryColor)),
                SizedBox(height: 8,),
                  Text("Description" ,
                    style: Theme.of(context).textTheme.headline6?.
                    copyWith(color: Theme.of(context).primaryColor))
              ],)),
              Container(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: Theme.of(context).primaryColor,
                  ),
                child: Icon(Icons.check,color: Colors.white,size: 40,),
              )

            ],
          ),
        ),
      ),
    );
  }
}
