import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod/riverpod.dart';

void main() {
  runApp(
    const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // アプリ名
      title: 'My Todo App',
      theme: ThemeData(
        // テーマカラー
        primarySwatch: Colors.blue,
      ),
      // リスト一覧画面を表示
      home: TodoList(),
    );
  }
}

class TodoList extends ConsumerWidget {
  const TodoList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<Todo>
    return Scaffold(
        appBar: AppBar(
          title: Text("リスト一覧"),
        ),
        body: ListView(
          children: [
            Card(
              child: ListTile(
                title: Text("にんじん"),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) {
                  return TodoAdd();
                })
              );
            },
            child: Icon(Icons.add),
          )
      );
  }
}

class TodoAdd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Container(
      padding: EdgeInsets.all(64),
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(),
          const SizedBox(height: 8),
          Container(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: Text("リスト追加", style: TextStyle(color: Colors.white),),
            ),
          ),
          const SizedBox(height: 8),
          Container(
            width: double.infinity,
            child: TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("キャンセル"),
            ),
          )
        ],
      )
    ),
    );
  }
}