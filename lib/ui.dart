import 'package:flutter/material.dart';

class Project extends StatelessWidget {
  TextEditingController _searchcontroller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.grey.shade200,
        bottomNavigationBar: new BottomNavigationBar(
          backgroundColor: Colors.grey.shade200,
          type: BottomNavigationBarType.shifting,
          unselectedItemColor: Colors.indigo,
          selectedItemColor: Colors.purple.shade900,
          items: [
            new BottomNavigationBarItem(
                icon: new Icon(Icons.home),
                title: new Text(
                  "home",
                  style: new TextStyle(fontFamily: "Poppins"),
                )),
            new BottomNavigationBarItem(
                icon: new Icon(Icons.image),
                title: new Text(
                  "Gallery",
                  style: new TextStyle(fontFamily: "Poppins"),
                )),
            new BottomNavigationBarItem(
                icon: new Icon(Icons.phone),
                title: new Text(
                  "Call",
                  style: new TextStyle(fontFamily: "Poppins"),
                )),
            new BottomNavigationBarItem(
                icon: new Icon(Icons.arrow_downward),
                title: new Text(
                  "Down",
                  style: new TextStyle(fontFamily: "Poppins"),
                )),
            new BottomNavigationBarItem(
                icon: new Icon(Icons.blur_linear),
                title: new Text(
                  "Graphs",
                  style: new TextStyle(fontFamily: "Poppins"),
                )),
          ],
        ),
        body: new Stack(children:<Widget> [
           new Image.asset("images/flower.jpg",
           height: height,
           width: width,
           fit: BoxFit.fill,
           ),
            new Container(
            child: new ListView(children: <Widget>[
          new Container(
            margin: new EdgeInsets.fromLTRB(20.0, 40.0, 0.0, 0.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                new Container(
                  height: height / 16,
                  width: width * 0.825,
                  decoration: new BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade400,
                            blurRadius: 25.0,
                            spreadRadius: 2.5,
                            offset: Offset(
                              10.0,
                              10.0,
                            ))
                      ],
                      shape: BoxShape.rectangle,
                      color: Colors.white,
                      border: Border.all(color: Colors.black12, width: 1.5)),
                  child: new TextField(
                      controller: _searchcontroller,
                      decoration: new InputDecoration(
                          border: InputBorder.none,
                          fillColor: Colors.white,
                          labelText: "                       Search Here",
                          labelStyle: new TextStyle(
                              fontFamily: "Poppins", fontSize: 18),
                          suffixIcon: new Icon(Icons.search))),
                ),
                new IconButton(icon: new Icon(Icons.menu), onPressed: null)
              ],
            ), //Search BOX ends here
          ),
          new Container(
            margin: new EdgeInsets.fromLTRB(12.0, 50.0, 10.0, 0.0),
            child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Row(
                    children: <Widget>[
                      new Text("Featured Jobs", style: heading()),
                      new Padding(
                          padding: new EdgeInsets.fromLTRB(
                              width * 0.29, 0.0, 0.0, 0.0)),
                      new Text("See All",
                          style: new TextStyle(
                              color: Colors.blue,
                              fontFamily: "Poppins",
                              fontSize: 20,
                              fontWeight: FontWeight.bold))
                    ],
                  ),
                  new Container(
                    margin: new EdgeInsets.symmetric(vertical: 20.0),
                    height: height / 4,
                    child: new ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          horiView(
                              "Mobile Application Designer",
                              "Lorem Ipsum dolor sit amet, consectetur adipiscing edit, sed do eiusmod tempor incididunt",
                              "Microsoft",
                              Colors.purple.shade900,
                              width),
                          new Padding(
                              padding: new EdgeInsets.fromLTRB(
                                  20.0, 20.0, 20.0, 20.0)),
                          horiView(
                              "Mobile Application Designer",
                              "Lorem Ipsum dolor sit amet, consectetur adipiscing edit, sed do eiusmod tempor incididunt",
                              "Microsoft",
                              Colors.cyan,
                              width),
                          new Padding(
                              padding: new EdgeInsets.fromLTRB(
                                  20.0, 20.0, 20.0, 20.0)),
                          horiView(
                              "Mobile Application Designer",
                              "Lorem Ipsum dolor sit amet, consectetur adipiscing edit, sed do eiusmod tempor incididunt",
                              "Microsoft",
                              Colors.red,
                              width),
                        ]),
                  ),
                  new Center(
                      child: new Text(
                          "_____________________________________________________________________________",
                          style: new TextStyle(
                              fontWeight: FontWeight.w200,
                              fontSize: 12,
                              color: Colors.grey.shade500))),
                  new Padding(padding: new EdgeInsets.all(10.0)),
                new Container(
                  color: Colors.blue.shade100,
                  width: width,
                child : new Container(
                      height: height,
                      child: new ListView(
                          scrollDirection: Axis.vertical,
                          children: <Widget>[
                            new Row(
                              children: <Widget>[
                                new Text("Top Features", style: heading()),
                                new Padding(
                                    padding: new EdgeInsets.fromLTRB(
                                        width * 0.31, 20.0, 0.0, 10.0)),
                                new Text("See All",
                                    style: new TextStyle(
                                        color: Colors.blue,
                                        fontFamily: "Poppins",
                                        fontSize: 20))
                              ],
                            ),
                            new Padding(padding: new EdgeInsets.all(10.0)),
                            new Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                new CircleAvatar(
                                  backgroundColor: Colors.grey.shade300,
                                  child: new Icon(Icons.airplanemode_active),
                                  radius: width / 8,
                                ),
                                new CircleAvatar(
                                  backgroundColor: Colors.grey.shade300,
                                  child: new Icon(Icons.airplanemode_active),
                                  radius: width / 8,
                                ),
                                new CircleAvatar(
                                  backgroundColor: Colors.grey.shade300,
                                  child: new Icon(Icons.airplanemode_active),
                                  radius: width / 8,
                                ),
                              ],
                            ),
                            new Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  hey("Facebook", "USA", width),
                                  new Padding(
                                      padding: new EdgeInsets.fromLTRB(
                                          20.0, 0.0, 0.0, 20.0)),
                                  hey("Oyo", "India", width),
                                  new Padding(
                                      padding: new EdgeInsets.fromLTRB(
                                          10.0, 0.0, 0.0, 20.0)),
                                  hey("Covid-19", "China", width)
                                ]),
                            new Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                new CircleAvatar(
                                  backgroundColor: Colors.grey.shade300,
                                  
                             
                                  child: new Icon(Icons.airplanemode_active),
                                 
                                  radius: width / 8,
                                ),
                                new CircleAvatar(
                                  backgroundColor: Colors.grey.shade300,
                                  child: new Icon(Icons.airplanemode_active),

                                  radius: width / 8,
                                ),
                                new CircleAvatar(
                                  backgroundColor: Colors.grey.shade300,
                                  child: new Icon(Icons.airplanemode_active),
                                  radius: width / 8,
                                ),
                              ],
                            ),
                            new Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  hey("Facebook", "USA", width),
                                  new Padding(
                                      padding: new EdgeInsets.fromLTRB(
                                          20.0, 0.0, 0.0, 20.0)),
                                  hey("Oyo", "India", width),
                                  new Padding(
                                      padding: new EdgeInsets.fromLTRB(
                                          10.0, 0.0, 0.0, 20.0)),
                                  hey("Covid-19", "China", width)
                                ]),
                            new Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                new CircleAvatar(
                                  backgroundColor: Colors.grey.shade300,
                                  child: new Icon(Icons.airplanemode_active),
                                  radius: width / 8,
                                ),
                                new CircleAvatar(
                                  backgroundColor: Colors.grey.shade300,
                                  child: new Icon(Icons.airplanemode_active),
                                  radius: width / 8,
                                ),
                                new CircleAvatar(
                                  backgroundColor: Colors.grey.shade300,
                                  child: new Icon(Icons.airplanemode_active),
                                  radius: width / 8,
                                ),
                              ],
                            ),
                            new Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  hey("Facebook", "USA", width),
                                  new Padding(
                                      padding: new EdgeInsets.fromLTRB(
                                          20.0, 0.0, 0.0, 20.0)),
                                  hey("Oyo", "India", width),
                                  new Padding(
                                      padding: new EdgeInsets.fromLTRB(
                                          10.0, 0.0, 0.0, 20.0)),
                                  hey("Covid-19", "China", width)
                                ]),
                            new Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                new CircleAvatar(
                                  backgroundColor: Colors.grey.shade300,
                                  child: new Icon(Icons.airplanemode_active),
                                  radius: width / 8,
                                ),
                                new CircleAvatar(
                                  backgroundColor: Colors.grey.shade300,
                                  child: new Icon(Icons.airplanemode_active),
                                  radius: width / 8,
                                ),
                                new CircleAvatar(
                                  backgroundColor: Colors.grey.shade300,
                                  child: new Icon(Icons.airplanemode_active),
                                  radius: width / 8,
                                ),
                              ],
                            ),
                            new Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  hey("Facebook", "USA", width),
                                  new Padding(
                                      padding: new EdgeInsets.fromLTRB(
                                          20.0, 0.0, 0.0, 20.0)),
                                  hey("Oyo", "India", width),
                                  new Padding(
                                      padding: new EdgeInsets.fromLTRB(
                                          10.0, 0.0, 0.0, 20.0)),
                                  hey("Covid-19", "China", width)
                                ])
                          ]))
                ),
                ])
            )]))
        ],)
      );
  }
}

TextStyle heading() {
  return TextStyle(
      fontSize: 30.0,
      fontFamily: "Poppins",
      fontWeight: FontWeight.bold,
      color: Colors.black);
}

Container horiView(
    String head, String content, String cname, Color col, double width) {
  return Container(
    width: width * 0.65,
    decoration: new BoxDecoration(
      color: col,
      borderRadius: BorderRadius.circular(20.0),
      border: Border.all(color: Colors.grey.shade300, width: 1.5),
      boxShadow: [
        BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 25.0,
            spreadRadius: 5.0,
            offset: Offset(
              15.0,
              15.0,
            ))
      ],
    ),
    child: Wrap(
      children: <Widget>[
        new ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
          leading: new Text(cname,
              style: new TextStyle(color: Colors.black, fontFamily: "Poppins")),
          title: new Text(
            head,
            style: new TextStyle(
                fontSize: 24.0,
                fontFamily: "Poppins",
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          subtitle: new Text(content,
              style: new TextStyle(
                  fontFamily: "Poppins",
                  color: Colors.grey.shade300,
                  fontStyle: FontStyle.italic,
                  fontSize: 12)),
        ),
        new Container(
          margin: new EdgeInsets.fromLTRB(180, 10.0, 10.0, 10.0),
          height: 20.0,
          width: 50.0,
          decoration: new BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5.0),
              border: Border.all(color: Colors.black12)),
          child: new Text("Apply!!",
              style: new TextStyle(
                  fontSize: 14,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w400)),
        )
      ],
    ),
  );
}

Container hey(String head, String content, double width) {
  return Container(
    width: width * 0.26,
    child: new ListTile(
        title: new Text(
          head,
          style: new TextStyle(
              color: Colors.black,
              fontFamily: "Poppins",
              fontWeight: FontWeight.bold),
        ),
        subtitle: new Text(content,
            style: new TextStyle(
                color: Colors.grey,
                fontFamily: "Poppins",
                fontStyle: FontStyle.italic,
                fontSize: 12))),
  );
}
