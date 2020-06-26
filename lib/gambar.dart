import 'package:flutter/material.dart';

class GridView extends StatefulWidget {
  @override
  _GridViewState createState() => _GridViewState();

  static count({int crossAxisCount, List<Container> children}) {}


}

class _GridViewState extends State<GridView> {
  List<Container> dragonBall = new List();
  var daftarhero =[
    {'nama' : "beerus", "gambar" :"beerus.jpg" },
    {"nama" : "broly", "gambar" :"broly.jpg" },
    {"nama" : "gogeta", "gambar" :"gogeta.jpg" },
    {"nama" : "ultrainsting", "gambar" :"ultrainsting.jpg" },

  ];
  _buatDataListDragonBall() async{
    for(var i=0; i<daftarhero.length; i++){
      final dataDragonBall= daftarhero[i];

      final String gambarDragonball = dataDragonBall["gambar"];
      dragonBall.add(new Container(
        child: Card(
          child: InkWell(
            onTap: (){},

            child: Column(
              children: [
                Hero(
                  tag: gambarDragonball,
                  child: Image.asset('image/$daftarhero', height: 85,width: 125,fit: BoxFit.contain),
                  
                ), 
                Padding(padding: EdgeInsets.all(10)),
                Text(gambarDragonball, )
              ],
            ),
          ),
        ),
      ));
    }
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _buatDataListDragonBall();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(crossAxisCount: 2, children: dragonBall),
    );
  }
}
