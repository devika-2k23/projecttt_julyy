import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  await Hive.initFlutter;
  await Hive.openBox('todo_box');
  runApp(MaterialApp(
    home: HiveTodo(),
  ));
}

class HiveTodo extends StatefulWidget {
  const HiveTodo({super.key});

  @override
  State<HiveTodo> createState() => _HiveTodoState();
}

class _HiveTodoState extends State<HiveTodo> {
  List<Map<String, dynamic>> task = [];
  final my_box = Hive.box('todo_box');
  void initState() {
    readTask_refreshUi();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Task'),
      ),
      body: task.isEmpty
          ? Center(child: CircularProgressIndicator())
          : GridView.builder(
          itemCount: task.length,
          gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) {
            return Card(
              color: Colors.primaries[index % Colors.primaries.length],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(task[index]['taskname'],style: GoogleFonts.aBeeZee(fontSize:20,fontWeight: FontWeight.bold),),
                  SizedBox(
                    height: 10,
                  ),
                  Text(task[index]['taskdesc'],style: GoogleFonts.aBeeZee(fontSize:20,fontWeight: FontWeight.bold)),
                  Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
                          SizedBox(width: 30,),
                          IconButton(onPressed: () {}, icon: Icon(Icons.delete))
                        ],
                      ))
                ],
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showAlertbox(null),
        child: Icon(Icons.task),
      ),
    );
  }

  final title_cntrl = TextEditingController();
  final descr_cntrl = TextEditingController();
  void showAlertbox(int? key) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Colors.tealAccent,
            content: Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), hintText: "Title"),
                    controller: title_cntrl,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), hintText: "Content"),
                    controller: descr_cntrl,
                  )
                ],
              ),
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    if (title_cntrl.text != "" && descr_cntrl.text != "") {
                      createTask({
                        'tname': title_cntrl.text.trim(),
                        'tcontent': descr_cntrl.text.trim()
                      });
                    }
                    title_cntrl.text = "";
                    descr_cntrl.text = "";
                    Navigator.pop(context);
                  },
                  child: Text('Create Task')),

              TextButton(onPressed: () {}, child: Text('Update Task')),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Cancel')),
            ],
          );
        });
  }

  Future<void> createTask(Map<String, dynamic> mytask) async { ///replaced map with my task and string with dynamic
    await my_box.add(mytask);
    readTask_refreshUi();
  }

  void readTask_refreshUi() {
    final task_from_hive=my_box.keys.map((key) { ///fetch all the keys from hive box
      final value=my_box.get(key); ///single map curresponding to the key
      return{
        'id':key,
        'taskname':value['tname'] ,  ///tname is key from hive
        'taskdesc':value['tcontent']
      };
    }).toList();

    setState(() {
      task=task_from_hive.reversed.toList();
    });
  }



}