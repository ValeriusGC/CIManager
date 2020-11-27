import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
//      title: 'Flutter Demo',
      title: 'title'.tr(),
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: new Scaffold(
        body: new MainHorizontalLayout(),
      ),
//      home: MyHomePage(title: 'title'.tr()),
    );
  }
}

class MainHorizontalLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /*return Row(crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Expanded(child: new MainViewLeftList(), flex: 1),
      ],
    );*/
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
            child: Container(
              color: Colors.black,
              child: new MainViewLeftList(),
            ),
            flex: 1)
      ],
    );
  }
}

class MainViewLeftList extends StatefulWidget {
  @override
  createState() => new _MainViewLeftListState();
}

class _MainViewLeftListState extends State<MainViewLeftList> {
  Key _selectedKey;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTileTheme(
          selectedColor: Colors.black,
          selectedTileColor: Colors.white,
          child: Material(
            color: Colors.black,
            textStyle: TextStyle(color: Colors.white),
            child: ListTile(
              key: new Key("MainViewLeftList_Item1"),
              title: Text(
                "Item 1",
                style: TextStyle(color: Colors.white),
              ),
              hoverColor: Colors.blue,
              onTap: () {},
            ),
          ),
        ),
        ListTileTheme(
            textColor: Colors.white,
            selectedColor: Colors.black,
            selectedTileColor: Colors.white,
            tileColor: Colors.black,
            child: Material(
                child: ListTile(
              title: Text("Item 2"),
              hoverColor: Colors.blue,
            ))),
        ListTileTheme(
            textColor: Colors.white,
            selectedColor: Colors.black,
            selectedTileColor: Colors.white,
            tileColor: Colors.black,
            child: ListTile(
              title: Text("Item 3"),
              hoverColor: Colors.blue,
            )),
        Material(
          child: ListTile(
            hoverColor: Colors.amber,
            onTap: () {},
            title: Text("item4"),
          ),
        )
      ],
    );
  }

  @override
  void setState(VoidCallback fn) {}
}

class MainViewLeftListItem extends StatefulWidget {
  @override
  createState() => new _MainViewLeftListItemState();
}

class _MainViewLeftListItemState extends State<MainViewLeftListItem> {
  @override
  Widget build(BuildContext context) {
    return Text(
      "Item", /*style: new TextStyle(color: Colors.white),*/
    );
  }
}
/*class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}*/