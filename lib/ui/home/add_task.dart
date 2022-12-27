import 'package:flutter/material.dart';
import 'package:todo_mn/ui/my_theme.dart';

class AddTask extends StatefulWidget {


  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Add New Task', textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline5,),
            TextFormField(
              decoration: InputDecoration(
                  labelText: 'Title'
              ),
            ),
            TextFormField(
              minLines: 4,
              maxLines: 4,
              decoration: InputDecoration(
                  labelText: 'Description'
              ),
            ),
            SizedBox(height: 12,),
            Text('Select Date'
                ,style: Theme.of(context).textTheme.headline6?.
              copyWith(color:Theme.of(context).primaryColor ),),
            SizedBox(height: 8,),
            InkWell(
              onTap: (){
                showTaskDatePicker();
              },
              child: Text("${DateTime.now()}" ,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline4?.
              copyWith(color:Theme.of(context).primaryColor ),),
            ),
            ElevatedButton(onPressed: (){}, child: Text("Submit"))

          ],
        ),
      ),
    );
  }

  void showTaskDatePicker() {
    showDatePicker(context: context,
        initialDate:DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime.now().add(Duration(days: 365)));

  }
}
