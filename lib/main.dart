import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Covid Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black87,
            title: Text("COVID-19 World Stats"),
          ),
          body: MyHomePage(title: 'Covid Flutter Demo Home Page'),
        ));
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return _buildViewPager();
  }

  Widget _buildViewPager() {
    final controller = PageController(initialPage: 0);

    return Container(
      color: Colors.black54,
      child: PageView(
        controller: controller,
        children: [_buildSummaryPage(), _buildMapPage(), _buildAboutPage()],
      ),
    );
  }

  Widget _buildSummaryPage() {
    // return Center(child: Text("Summary Page"));
    return Column(
      children: [
        _buildTotalsCard(),
        _buildCountriesCard(),
      ],
    );
  }

  Widget _buildTotalsCard() {
    return Container(
      height: 150,
      margin: EdgeInsets.all(15.0),
      // color: Colors.black54,
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black87,
          ),
          color: Colors.black54,
          borderRadius: BorderRadius.all(Radius.circular(5))),
      child: Column(
        children: [
          Container(
              padding: EdgeInsets.all(15.0),
              child: Row(children: [
                Expanded(
                  flex: 1,
                  child: Center(
                    child: Text(
                      "Worldwide Totals",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20),
                    ),
                  ),
                )
              ])),
          Container(
              padding: EdgeInsets.all(5.0),
              child: Row(
                children: [
                  Expanded(
                      flex: 6,
                      child: Text("Total Confirmed",
                          style: TextStyle(color: Colors.white54))),
                  Expanded(
                      flex: 4,
                      child: Text("000",
                          textAlign: TextAlign.right,
                          style: TextStyle(color: Colors.red))),
                ],
              )),
          Container(
              padding: EdgeInsets.all(5.0),
              child: Row(
                children: [
                  Expanded(
                      flex: 6,
                      child: Text("Total Deaths",
                          style: TextStyle(color: Colors.white54))),
                  Expanded(
                      flex: 4,
                      child: Text("000",
                          textAlign: TextAlign.right,
                          style: TextStyle(color: Colors.white54)))
                ],
              )),
          Container(
              padding: EdgeInsets.all(5.0),
              child: Row(
                children: [
                  Expanded(
                      flex: 6,
                      child: Text("Total Recovered",
                          style: TextStyle(color: Colors.white54))),
                  Expanded(
                      flex: 4,
                      child: Text("000",
                          textAlign: TextAlign.right,
                          style: TextStyle(color: Colors.green)))
                ],
              )),
        ],
      ),
    );
  }

  Widget _buildCountriesCard() {
    return Container(
      child: Text("Countries"),
    );
  }

  Widget _buildMapPage() {
    return Center(child: Text("Map Page"));
  }

  Widget _buildAboutPage() {
    return Center(child: Text("About Page"));
  }
}
