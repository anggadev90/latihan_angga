import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/todo_list_controller.dart';

class TodoListView extends StatefulWidget {
  TodoListView({Key? key}) : super(key: key);

  Widget build(context, TodoListController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Text("TodoList"),
        actions: [],
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(20.0),
        itemCount: controller.todos.length,
        physics: ScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          var item = controller.todos[index];
          return Card(
            child: ListTile(
              onTap: () async {
                await Get.to(TodoFormView(
                  item: item,
                ));
                await controller.getTodos();
              },
              leading: CircleAvatar(
                backgroundColor: Colors.grey[200],
                backgroundImage: NetworkImage(
                  item["attachment"].toString(),
                ),
              ),
              title: Text(item["tittle"].toString()),
              subtitle: Text(item["status"].toString()),
              trailing: IconButton(
                onPressed: () => controller.deleteTodos(item["id"]),
                icon: const Icon(
                  Icons.delete,
                  size: 24.0,
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () async {
          await Get.to(TodoFormView());
          await controller.getTodos();
          //
        },
      ),
    );
  }

  @override
  State<TodoListView> createState() => TodoListController();
}
