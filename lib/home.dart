import 'package:flutter/material.dart';
import 'package:flutter_week17/card_demo.dart';
import 'package:flutter_week17/colum_page.dart';
import 'package:flutter_week17/list_view_menu.dart';
import 'package:flutter_week17/my_card.dart';
import 'package:flutter_week17/row-page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter App"),
        backgroundColor: Colors.lightBlue,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text("Mr.Jhon Doe"),
              accountEmail: Text("Jhon@gmail.com"),
              currentAccountPicture: CircleAvatar(
                child: Icon(Icons.android),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.apps),
              title: const Text('Row and Column'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RowPage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.abc),
              title: const Text('Column widget'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ColumnPage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('List View Menu'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ListViewMenu(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.card_travel),
              title: const Text('Inkwell'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CardDemo(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.credit_card),
              title: const Text('My Card'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyCard(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text("MyApp"),
      ),
    );
  }
}
