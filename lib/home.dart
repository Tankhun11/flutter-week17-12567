import 'package:flutter/material.dart';
import 'package:flutter_week17/pages/contact.dart';
import 'package:flutter_week17/widgets/card_demo.dart';
import 'package:flutter_week17/widgets/colum_page.dart';
import 'package:flutter_week17/widgets/list_view_menu.dart';
import 'package:flutter_week17/widgets/my_card.dart';
import 'package:flutter_week17/widgets/row-page.dart';

class HomePage extends StatelessWidget {
  final String name; //หน้าแรก2x
  static String id = "/home";
  const HomePage({super.key, required this.name});

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
                //child: Icon(Icons.android),
                backgroundImage: NetworkImage("https://static.wikia.nocookie.net/houkai-star-rail/images/9/92/Character_Robin_Splash_Art.png/revision/latest/scale-to-width-down/1000?cb=20240508021256"),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: Text(name),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ContactPage(name: 'หน้าแรกxx'),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.apps),
              title: const Text('Column Widget'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ColumnPage(name: 'หน้าคอลลัมน์',),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.abc),
              title: const Text('Row widget'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RowPage(name: 'หน้าแถว',),
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
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyCard(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.contact_page),
              title: const Text('Contact Me'),
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const ContactPage(name: 'Contact')));
                debugPrint("Contact Me");
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
