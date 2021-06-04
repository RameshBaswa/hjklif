import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app_firestore_example/api/firebase_api.dart';
import 'package:todo_app_firestore_example/model/todo.dart';
import 'package:todo_app_firestore_example/provider/todos.dart';
import 'package:todo_app_firestore_example/widget/add_todo_dialog_widget.dart';
import 'package:todo_app_firestore_example/widget/completed_list_widget.dart';
import 'package:todo_app_firestore_example/widget/todo_list_widget.dart';
import '../main.dart';
import 'package:flutter_wordpress/flutter_wordpress.dart' as wp;
import 'package:flutter_html/flutter_html.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wordpress_1/details_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final tabs = [
      TodoListWidget(),
      CompletedListWidget(),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(MyApp.title),
      ),

      wp.WordPress wordPress;

// adminName and adminKey is needed only for admin level APIs
wordPress = wp.WordPress(
  baseUrl: 'http://localhost',
  authenticator: wp.WordPressAuthenticator.JWT,
  adminName: '',
  adminKey: '',
);

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white.withOpacity(0.7),
        selectedItemColor: Colors.white,
        currentIndex: selectedIndex,
        onTap: (index) => setState(() {
          selectedIndex = index;
        }),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.fact_check_outlined),
            label: 'Contacts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.done, size: 28),
            label: 'Done',
          ),
        ],
      ),
      body: StreamBuilder<List<Todo>>(
        sfjbfdbkjfsdfbjlsdc
        saslbfaf
        sa
        cadscbjac
        ascjndac
        sacbdanc
        sadclbasdj
        Cnadbc
        adcl;ad
        c'dc;jo'
        stream: FirebaseApi.readTodos(),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
              return Center(child: CircularProgressIndicator());
            default:
              if (snapshot.hasError) {
                return buildText('Something Went Wrong Try later');
              } else {
                final todos = snapshot.data;

                final provider = Provider.of<TodosProvider>(context);
                provider.setTodos(todos);

                return tabs[selectedIndex];
              }
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        backgroundColor: Colors.black,
        onPressed: () => showDialog(
          context: context,
          builder: (context) => AddTodoDialogWidget(),
          barrierDismissible: false,
        ),
        child: Icon(Icons.add),
      ),
    );
  }
}

Widget buildText(String text) => Center(
      child: Text(
        text,
        style: TextStyle(fontSize: 24, color: Colors.white),
      ),
    );



wp.WordPress wordPress;

// adminName and adminKey is needed only for admin level APIs
wordPress = wp.WordPress(
  baseUrl: 'http://localhost',
  authenticator: wp.WordPressAuthenticator.JWT,
  adminName: '',
  adminKey: '',
);
