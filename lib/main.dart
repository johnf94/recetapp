import 'package:flutter/material.dart';
import 'Animation/FadeAnimation.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/bg.jpg'),
                    fit: BoxFit.cover
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        colors: [
                          Colors.black.withOpacity(.8),
                          Colors.black.withOpacity(.2),
                        ]
                    )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    FadeAnimation(1, Text("¿Qué te gustaria Preparar Hoy?", textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),)),
                    SizedBox(height: 30,),
                    FadeAnimation(1.3, Container(
                      padding: EdgeInsets.symmetric(vertical: 3),
                      margin: EdgeInsets.symmetric(horizontal: 40),
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.search, color: Colors.grey,),
                            hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                            hintText: "Busca entre miles de recetas..."
                        ),
                      ),
                    )),
                    SizedBox(height: 30,)
                  ],
                ),
              ),
            ),
            SizedBox(height: 30,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  FadeAnimation(1, Text("Postres", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey[800], fontSize: 20),)),
                  SizedBox(height: 20,),
                  FadeAnimation(1.4, Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        makeItem(image: 'assets/images/postre1.jpg', title: 'Cheesecake'),
                        makeItem(image: 'assets/images/postre2.jpg', title: 'Tarta'),
                        makeItem(image: 'assets/images/postre3.jpg', title: 'Cheesecake de Café'),
                      ],
                    ),
                  )),

                  SizedBox(height: 20,),
                  FadeAnimation(1, Text("Platos Principales", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey[800], fontSize: 20),)),
                  SizedBox(height: 20,),
                  FadeAnimation(1.4, Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        makeItem(image: 'assets/images/principal1.jpg', title: 'Steak  en Mantequilla'),
                        makeItem(image: 'assets/images/principal2.jpg', title: 'Cerdo en Salsa'),
                        makeItem(image: 'assets/images/principal3.jpg', title: 'Pollo al Horno'),

                      ],
                    ),
                  )),
                  SizedBox(height: 20,),
                  FadeAnimation(1, Text("Ensaladas", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey[800], fontSize: 20),)),
                  SizedBox(height: 20,),
                  FadeAnimation(1.4, Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        makeItem(image: 'assets/images/salad1.jpg', title: 'Francesa'),
                        makeItem(image: 'assets/images/salad2.jpg', title: 'Con Garbanzos'),
                        makeItem(image: 'assets/images/salad3.jpg', title: 'Italiana'),

                      ],
                    ),
                  )),
                  SizedBox(height: 80,),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget makeItem({image, title}) {
    return AspectRatio(
      aspectRatio: 1 / 1,
      child: Container(
        margin: EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover
            )
        ),
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  colors: [
                    Colors.black.withOpacity(.8),
                    Colors.black.withOpacity(.2),
                  ]
              )
          ),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Text(title, style: TextStyle(color: Colors.white, fontSize: 20),),
          ),
        ),
      ),
    );
  }
}
