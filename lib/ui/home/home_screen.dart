import 'package:flutter/material.dart';
import 'package:todo_mn/ui/home/add_task.dart';
import 'package:todo_mn/ui/home/settings/setting_tab.dart';
import 'package:todo_mn/ui/home/task_list/task_list_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "HomeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndexTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ToDo"),
        centerTitle: true,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: StadiumBorder(
          side: BorderSide(color: Colors.white, width: 3)
        ),
        onPressed: (){
          showAddTaskBottomSheet();
        },
        child: Icon(Icons.add),
    ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 8,
        child: BottomNavigationBar(
          currentIndex: selectedIndexTab,
          onTap: (index){
            setState(() {
              selectedIndexTab =  index;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.list_outlined),
        label: "List"),
            BottomNavigationBarItem(icon: Icon(Icons.settings),
                label: "Settings"),
          ],
        ),
      ),
    body: tabs[selectedIndexTab],

    );
  }
  var tabs =[
    Task_List_tab(),
    SettingsTab()
  ];
  void showAddTaskBottomSheet(){
    showModalBottomSheet(context: context, builder: (buildContext){
      return AddTask();
    });
  }
}
