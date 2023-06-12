import 'dart:math' as math show pi;

import 'package:collapsible_sidebar/collapsible_sidebar.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sidebar ui',
      home: Scaffold(
        body: SidebarPage(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: const Text('Yay! Button Pressed!')));
          },
          backgroundColor: Colors.green,
          child: const Icon(Icons.navigation),
        ),
      ),
    );
  }
}

class SidebarPage extends StatefulWidget {
  @override
  _SidebarPageState createState() => _SidebarPageState();
}

class _SidebarPageState extends State<SidebarPage> {
  List<CollapsibleItem> _items = [];
  String _headline = "";
  AssetImage _avatarImg = AssetImage('assets/man.png');

  @override
  void initState() {
    super.initState();
    _items = _generateItems;
    _headline = _items.firstWhere((item) => item.isSelected).text;
  }

  List<CollapsibleItem> get _generateItems {
    return [
      CollapsibleItem(
          text: 'Dashboard',
          icon: Icons.assessment,
          onPressed: () => setState(() => _headline = 'DashBoard'),
          onHold: () => ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: const Text("Dashboard"))),
          isSelected: true,
          route: "Dashboard",
          subItems: [
            CollapsibleItem(
              route: "Dashboard/Menu",
              text: 'Menu',
              icon: Icons.menu_book,
              onPressed: () => setState(() => _headline = 'Menu'),
              onHold: () => ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: const Text("Menu"))),
              isSelected: true,
            ),
            CollapsibleItem(
                route: "Dashboard/Shop",
                text: 'Shop',
                iconImage: AssetImage("assets/shop_icon.png"),
                icon: Icons.ac_unit,
                onPressed: () => setState(() => _headline = 'Shop'),
                onHold: () => ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: const Text("Shop"))),
                isSelected: true,
                subItems: [
                  CollapsibleItem(
                    route: "Dashboard/Shop/Chart",
                    text: 'Cart',
                    icon: Icons.shopping_cart,
                    onPressed: () => setState(() => _headline = 'Cart'),
                    onHold: () => ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: const Text("Cart"))),
                    isSelected: true,
                  )
                ]),
          ]),
      CollapsibleItem(
        text: 'Search',
        route: "Search",
        icon: Icons.search,
        onPressed: () => setState(() => _headline = 'Search'),
        onHold: () => ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: const Text("Search"))),
      ),
      CollapsibleItem(
        text: 'Notifications',
        route: "Notifications",
        icon: Icons.notifications,
        onPressed: () => setState(() => _headline = 'Notifications'),
        onHold: () => ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: const Text("Notifications"))),
      ),
      CollapsibleItem(
        text: 'Settings',
        route: "Settings",
        icon: Icons.settings,
        onPressed: () => setState(() => _headline = 'Settings'),
        onHold: () => ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: const Text("Settings"))),
      ),
      CollapsibleItem(
        route: "Alarm",
        text: 'Alarm',
        icon: Icons.access_alarm,
        onPressed: () => setState(() => _headline = 'Alarm'),
        onHold: () => ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: const Text("Alarm"))),
      ),
      CollapsibleItem(
        route: "Eco",
        text: 'Eco',
        icon: Icons.eco,
        onPressed: () => setState(() => _headline = 'Eco'),
        onHold: () => ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: const Text("Eco"))),
      ),
      CollapsibleItem(
        route: "Event",
        text: 'Event',
        icon: Icons.event,
        onPressed: () => setState(() => _headline = 'Event'),
        onHold: () => ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: const Text("Event"))),
      ),
      CollapsibleItem(
        route: "No Icon",
        text: 'No Icon',
        onPressed: () => setState(() => _headline = 'No Icon'),
        onHold: () => ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: const Text("No Icon"))),
      ),
      CollapsibleItem(
        route: "Email",
        text: 'Email',
        icon: Icons.email,
        onPressed: () => setState(() => _headline = 'Email'),
        onHold: () => ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: const Text("Email"))),
      ),
      CollapsibleItem(
          route: "News",
          text: 'News',
          iconImage: NetworkImage(
              "https://cdn-icons-png.flaticon.com/512/330/330703.png"),
          onPressed: () => setState(() => _headline = 'News'),
          onHold: () => ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: const Text("News"))),
          subItems: [
            CollapsibleItem(
              route: "News/Old News",
              text: 'Old News',
              icon: Icons.elderly,
              onPressed: () => setState(() => _headline = 'Old News'),
              onHold: () => ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: const Text("Old News"))),
            ),
            CollapsibleItem(
                route: "News/Current News",
                text: 'Current News',
                icon: Icons.yard_outlined,
                onPressed: () => setState(() => _headline = 'Current News'),
                onHold: () => ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: const Text("Current News"))),
                subItems: [
                  CollapsibleItem(
                    route: "News/Current News/News 1",
                    text: 'News 1',
                    icon: Icons.one_k,
                    onPressed: () => setState(() => _headline = 'News 1'),
                    onHold: () => ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: const Text("News 1"))),
                  ),
                  CollapsibleItem(
                      route: "News/Current News/News 2",
                      text: 'News 2',
                      icon: Icons.two_k,
                      onPressed: () => setState(() => _headline = 'News 2'),
                      onHold: () => ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: const Text("News 2"))),
                      subItems: [
                        CollapsibleItem(
                          route: "News/Current News/News 2/News 2 Detail",
                          text: 'News 2 Detail',
                          icon: Icons.two_k_outlined,
                          onPressed: () =>
                              setState(() => _headline = 'News 2 Detail'),
                          onHold: () => ScaffoldMessenger.of(context)
                              .showSnackBar(SnackBar(
                                  content: const Text("News 2 Detail"))),
                        )
                      ]),
                  CollapsibleItem(
                    route: "News/Current News/News 3",
                    text: 'News 3',
                    icon: Icons.three_k,
                    onPressed: () => setState(() => _headline = 'News 3'),
                    onHold: () => ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: const Text("News 3"))),
                  )
                ]),
            CollapsibleItem(
              route: "News/New News",
              text: 'New News',
              icon: Icons.account_balance,
              onPressed: () => setState(() => _headline = 'New News'),
              onHold: () => ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: const Text("New News"))),
            ),
          ]),
      CollapsibleItem(
        text: 'Face',
        route: "Face",
        icon: Icons.face,
        onPressed: () => setState(() => _headline = 'Face'),
        onHold: () => ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: const Text("Face"))),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: CollapsibleSidebar(
        isCollapsed: MediaQuery.of(context).size.width <= 800,
        items: _items,
        collapseOnBodyTap: false,
        avatarImg: _avatarImg,
        title: 'John Smith',
        onTitleTap: () {
          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Yay! Flutter Collapsible Sidebar!')));
        },
        body: _body(size, context),
        backgroundColor: Colors.black,
        selectedTextColor: Colors.limeAccent,
        textStyle: TextStyle(fontSize: 15, fontStyle: FontStyle.italic),
        titleStyle: TextStyle(
            fontSize: 20,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold),
        toggleTitleStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        sidebarBoxShadow: [
          BoxShadow(
            color: Colors.indigo,
            blurRadius: 20,
            spreadRadius: 0.01,
            offset: Offset(3, 3),
          ),
          BoxShadow(
            color: Colors.green,
            blurRadius: 50,
            spreadRadius: 0.01,
            offset: Offset(3, 3),
          ),
        ],
      ),
    );
  }

  Widget _body(Size size, BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.blueGrey[50],
      child: Center(
        child: Transform.rotate(
          angle: math.pi / 2,
          child: Transform.translate(
            offset: Offset(-size.height * 0.3, -size.width * 0.23),
            child: Text(
              _headline,
              style: Theme.of(context).textTheme.headlineMedium,
              overflow: TextOverflow.visible,
              softWrap: false,
            ),
          ),
        ),
      ),
    );
  }
}
