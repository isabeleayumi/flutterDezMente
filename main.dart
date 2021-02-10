import 'package:dezmenteflutter/widgets/avancar.widget.dart';
import 'package:dezmenteflutter/widgets/logo.widget.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Dez Mente",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.cyan),
        home: HomePage(),
        routes: <String, WidgetBuilder>{
          "/Cadastro": (BuildContext context) => Cadastro1(),
        });
  }
}

class HomePage extends StatelessWidget {
  final player = AudioCache();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: ListView(
          children: <Widget>[
            Logo(),
            Container(
              margin: EdgeInsets.all(30),
              height: 80,
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(
                    60,
                  )),
              child: FlatButton(
                child: Text("ENTRAR",
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 30,
                        fontWeight: FontWeight.bold)),
                onPressed: () {},
              ),
            ),
            Container(
                margin: EdgeInsets.all(30),
                height: 80,
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(
                      60,
                    )),
                child: FlatButton(
                  child: Text(
                    "CRIAR NOVA CONTA",
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Cadastro()),
                    );
                    player.play('audio/zuno1.mp3');
                  },
                ))
          ],
        ));
  }
}

class Cadastro extends StatefulWidget {
  @override
  _CadastroState createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  final player = AudioCache();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: ListView(
          children: <Widget>[
            SizedBox(
              height: 5,
            ),
            Image.asset("assets/images/introducao.png", height: 350),
            Image.asset("assets/images/zunokansei.png", height: 200),
            Avancar(
              labelPage: '/Cadastro',
            ),
            Container(
              child: FloatingActionButton(
                onPressed: () {
                  player.play('audio/zuno1.mp3');
                },
                child: Icon(Icons.play_arrow),
              ),
            ),
          ],
        ));
  }
}

class Cadastro1 extends StatefulWidget {
  @override
  _Cadastro1State createState() => _Cadastro1State();
}

class _Cadastro1State extends State<Cadastro1> {
  final player = AudioCache();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          Image.asset("assets/images/monitor.png", height: 300),
          Image.asset("assets/images/zunokansei.png", height: 150),
          Container(
            margin: EdgeInsets.all(30),
            height: 40,
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.8),
                borderRadius: BorderRadius.circular(
                  60,
                )),
            child: FlatButton(
              child: Text("SIM",
                  style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 30,
                      fontWeight: FontWeight.bold)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Cmonitor()),
                );
              },
            ),
          ),
          Container(
              margin: EdgeInsets.all(30),
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(
                    60,
                  )),
              child: FlatButton(
                child: Text("NÃO",
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 30,
                        fontWeight: FontWeight.bold)),
                onPressed: () {},
              )),
          Container(
            child: FloatingActionButton(
              onPressed: () {
                player.play('audio/zuno-2.mp3');
              },
              child: Icon(Icons.play_arrow),
            ),
          ),
        ],
      ),
    );
  }
}

class Cmonitor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: EdgeInsets.only(
              top: 5,
              left: 20,
              right: 20,
            ),
            color: Colors.white,
            child: ListView(
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      labelText: "Nome do monitor",
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                      )),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      labelText: "Contato do monitor",
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                      )),
                ),
                SizedBox(
                  height: 50,
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      labelText: "Nome do usuário",
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                      )),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      labelText: "Contato do usuário",
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                      )),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  keyboardType: TextInputType.datetime,
                  decoration: InputDecoration(
                      labelText: "Data de nascimento",
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                      )),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      labelText: "Gênero",
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                      )),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      labelText: "Estado",
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                      )),
                ),
                Container(
                    margin: EdgeInsets.all(30),
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.cyan.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(
                          60,
                        )),
                    child: FlatButton(
                      child: Text("AVANÇAR",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Cadastro2()),
                        );
                      },
                    )),
              ],
            )));
  }
}

class Cadastro2 extends StatefulWidget {
  @override
  _Cadastro2State createState() => _Cadastro2State();
}

class _Cadastro2State extends State<Cadastro2> {
  final player = AudioCache();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: EdgeInsets.only(
              top: 5,
              left: 20,
              right: 20,
            ),
            color: Colors.white,
            child: ListView(
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      labelText: "Cidade",
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                      )),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      labelText: "Escolaridade",
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                      )),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      labelText: "Profissão",
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                      )),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      labelText: "Status de atividade",
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                      )),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      labelText: "Possui alguma doença?",
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                      )),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      labelText: "Utiliza alguma medicação?",
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                      )),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: "Horas de exercício físico por semana",
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                      )),
                ),
                Container(
                    margin: EdgeInsets.all(30),
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.cyan.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(
                          60,
                        )),
                    child: FlatButton(
                      child: Text("AVANÇAR",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Instrucoes()),
                        );
                        player.play('audio/zuno-3.mp3');
                      },
                    )),
              ],
            )));
  }
}

class Instrucoes extends StatefulWidget {
  @override
  _InstrucoesState createState() => _InstrucoesState();
}

class _InstrucoesState extends State<Instrucoes> {
  final player = AudioCache();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.cyan,
        body: ListView(
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Image.asset("assets/images/instrucoesteste.png", height: 300),
            Image.asset("assets/images/zunokansei.png", height: 150),
            Container(
                margin: EdgeInsets.all(30),
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(
                      60,
                    )),
                child: FlatButton(
                  child: Text("AVANÇAR",
                      style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Instrucoes2()),
                    );
                    player.play('audio/zuno-4.mp3');
                  },
                )),
            Container(
              child: FloatingActionButton(
                onPressed: () {
                  player.play('audio/zuno-3.mp3');
                },
                child: Icon(Icons.play_arrow),
              ),
            ),
          ],
        ));
  }
}

class Instrucoes2 extends StatefulWidget {
  @override
  _Instrucoes2State createState() => _Instrucoes2State();
}

class _Instrucoes2State extends State<Instrucoes2> {
  final player = AudioCache();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.cyan,
        body: ListView(
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Image.asset("assets/images/instrucoesteste2.png", height: 300),
            Image.asset("assets/images/zunokansei.png", height: 150),
            Container(
                margin: EdgeInsets.all(30),
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(
                      60,
                    )),
                child: FlatButton(
                  child: Text("AVANÇAR",
                      style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Teste1()),
                    );
                    player.play('audio/zuno-5.mp3');
                  },
                )),
            Container(
              child: FloatingActionButton(
                onPressed: () {
                  player.play('audio/zuno-4.mp3');
                },
                child: Icon(Icons.play_arrow),
              ),
            ),
          ],
        ));
  }
}

class Teste1 extends StatefulWidget {
  @override
  _Teste1State createState() => _Teste1State();
}

class _Teste1State extends State<Teste1> {
  final player = AudioCache();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: <Widget>[
            SizedBox(
              height: 0,
            ),
            Image.asset("assets/images/teste1mold.png", height: 200),
            SizedBox(
              height: 10,
            ),
            Image.asset("assets/images/teste1inst.png", height: 200),
            SizedBox(
              height: 10,
            ),
            Image.asset("assets/images/zunokansei.png", height: 100),
            Container(
              child: FloatingActionButton(
                onPressed: () {
                  player.play('audio/zuno-5.mp3');
                },
                child: Icon(Icons.play_arrow),
              ),
            ),
            Container(
                margin: EdgeInsets.all(30),
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.pink[400].withOpacity(0.7),
                    borderRadius: BorderRadius.circular(
                      60,
                    )),
                child: FlatButton(
                  child: Text("AVANÇAR",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Teste1i()),
                    );
                  },
                )),
          ],
        ));
  }
}

class Teste1i extends StatefulWidget {
  @override
  _Teste1iState createState() => _Teste1iState();
}

class _Teste1iState extends State<Teste1i> {
  final player = AudioCache();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 260,
            left: 90,
            height: 75,
            child: Image.asset("assets/images/1ver.png"),
          ),
          Positioned(
            top: 160,
            right: 20,
            height: 75,
            child: Image.asset("assets/images/2ver.png"),
          ),
          Positioned(
            right: 45,
            bottom: 270,
            height: 75,
            child: Image.asset("assets/images/3ver.png"),
          ),
          Positioned(
            right: 180,
            bottom: 250,
            height: 75,
            child: Image.asset("assets/images/4ver.png"),
          ),
          Positioned(
            left: 20,
            top: 160,
            height: 75,
            child: Image.asset("assets/images/5ver.png"),
          ),
          Positioned(
            right: 100,
            top: 40,
            height: 75,
            child: Image.asset("assets/images/Aver.png"),
          ),
          Positioned(
            right: 120,
            top: 230,
            height: 75,
            child: Image.asset("assets/images/Bver.png"),
          ),
          Positioned(
            left: 45,
            bottom: 120,
            height: 75,
            child: Image.asset("assets/images/Cver.png"),
          ),
          Positioned(
            left: 20,
            bottom: 280,
            height: 75,
            child: Image.asset("assets/images/Dver.png"),
          ),
          Positioned(
            left: 60,
            top: 30,
            height: 75,
            child: Image.asset("assets/images/Ever.png"),
          ),
          // Container(
          //   child: FlatButton(
          //     child: Text("AVANÇAR",
          //         style: TextStyle(
          //             color: Colors.white,
          //             fontSize: 30,
          //             height: 100,
          //             fontWeight: FontWeight.bold)),
          //     onPressed: () {
          //       Navigator.push(
          //         context,
          //         MaterialPageRoute(builder: (context) => Teste2()),
          //       );
          //       player.play('audio/zuno-6.mp3');
          //     },
          //   ),
          // ),
        ],
      ),
    );
  }
}

class Teste2 extends StatefulWidget {
  @override
  _Teste2State createState() => _Teste2State();
}

class _Teste2State extends State<Teste2> {
  final player = AudioCache();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: <Widget>[
            SizedBox(
              height: 0,
            ),
            Image.asset("assets/images/teste2mold.png", height: 200),
            SizedBox(
              height: 10,
            ),
            Image.asset("assets/images/teste2inst.png", height: 200),
            SizedBox(
              height: 10,
            ),
            Image.asset("assets/images/zunokansei.png", height: 100),
            Container(
              child: FloatingActionButton(
                onPressed: () {
                  player.play('audio/zuno-6.mp3');
                },
                child: Icon(Icons.play_arrow),
              ),
            ),
            Container(
                margin: EdgeInsets.all(30),
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.pink[400].withOpacity(0.7),
                    borderRadius: BorderRadius.circular(
                      60,
                    )),
                child: FlatButton(
                  child: Text("AVANÇAR",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Teste2i()),
                    );
                  },
                )),
          ],
        ));
  }
}

class Teste2i extends StatefulWidget {
  @override
  _Teste2iState createState() => _Teste2iState();
}

class _Teste2iState extends State<Teste2i> {
  final player = AudioCache();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: <Widget>[
            SizedBox(
              height: 0,
            ),
            Image.asset("assets/images/cubobarra.png", height: 300),
            SizedBox(
              height: 10,
            ),
            Image.asset("assets/images/cubo.png", height: 200),
            Container(
                margin: EdgeInsets.all(30),
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.pink[400].withOpacity(0.7),
                    borderRadius: BorderRadius.circular(
                      60,
                    )),
                child: FlatButton(
                  child: Text("AVANÇAR",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Teste3()),
                    );
                    player.play('audio/zuno-7.mp3');
                  },
                )),
          ],
        ));
  }
}

class Teste3 extends StatefulWidget {
  @override
  _Teste3State createState() => _Teste3State();
}

class _Teste3State extends State<Teste3> {
  final player = AudioCache();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: <Widget>[
            SizedBox(
              height: 0,
            ),
            Image.asset("assets/images/teste3mold.png", height: 200),
            SizedBox(
              height: 10,
            ),
            Image.asset("assets/images/teste3inst.png", height: 200),
            SizedBox(
              height: 10,
            ),
            Image.asset("assets/images/zunokansei.png", height: 100),
            Container(
              child: FloatingActionButton(
                onPressed: () {
                  player.play('audio/zuno-7.mp3');
                },
                child: Icon(Icons.play_arrow),
              ),
            ),
            Container(
                margin: EdgeInsets.all(30),
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.pink[400].withOpacity(0.7),
                    borderRadius: BorderRadius.circular(
                      60,
                    )),
                child: FlatButton(
                  child: Text("AVANÇAR",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Teste3i()),
                    );
                  },
                )),
          ],
        ));
  }
}

class Teste3i extends StatefulWidget {
  @override
  _Teste3iState createState() => _Teste3iState();
}

class _Teste3iState extends State<Teste3i> {
  final player = AudioCache();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: <Widget>[
            SizedBox(
              height: 0,
            ),
            Image.asset("assets/images/barrarelogio.png", height: 200),
            SizedBox(
              height: 10,
            ),
            Image.asset("assets/images/relogio.png", height: 300),
            Container(
                margin: EdgeInsets.all(30),
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.pink[400].withOpacity(0.7),
                    borderRadius: BorderRadius.circular(
                      60,
                    )),
                child: FlatButton(
                  child: Text("AVANÇAR",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Teste4()),
                    );
                    player.play('audio/zuno-8.mp3');
                  },
                )),
          ],
        ));
  }
}

class Teste4 extends StatefulWidget {
  @override
  _Teste4State createState() => _Teste4State();
}

class _Teste4State extends State<Teste4> {
  final player = AudioCache();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: <Widget>[
            SizedBox(
              height: 0,
            ),
            Image.asset("assets/images/teste4mold.png", height: 200),
            SizedBox(
              height: 10,
            ),
            Image.asset("assets/images/teste4inst.png", height: 200),
            SizedBox(
              height: 10,
            ),
            Image.asset("assets/images/zunokansei.png", height: 100),
            Container(
              child: FloatingActionButton(
                onPressed: () {
                  player.play('audio/zuno-8.mp3');
                },
                child: Icon(Icons.play_arrow),
              ),
            ),
            Container(
                margin: EdgeInsets.all(30),
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.pink[400].withOpacity(0.7),
                    borderRadius: BorderRadius.circular(
                      60,
                    )),
                child: FlatButton(
                  child: Text("AVANÇAR",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Teste4i()),
                    );
                  },
                )),
          ],
        ));
  }
}

class Teste4i extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: <Widget>[
            SizedBox(
              height: 0,
            ),
            Image.asset("assets/images/mariposa.png", height: 500),
            TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  labelText: "Nome:",
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  )),
            ),
            Container(
                margin: EdgeInsets.all(30),
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.pink[400].withOpacity(0.7),
                    borderRadius: BorderRadius.circular(
                      60,
                    )),
                child: FlatButton(
                  child: Text("AVANÇAR",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Teste4i2()),
                    );
                  },
                )),
          ],
        ));
  }
}

class Teste4i2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: <Widget>[
            SizedBox(
              height: 0,
            ),
            Image.asset("assets/images/oncapintada.png", height: 500),
            TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  labelText: "Nome:",
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  )),
            ),
            Container(
                margin: EdgeInsets.all(30),
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.pink[400].withOpacity(0.7),
                    borderRadius: BorderRadius.circular(
                      60,
                    )),
                child: FlatButton(
                  child: Text("AVANÇAR",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Teste4i3()),
                    );
                  },
                )),
          ],
        ));
  }
}

class Teste4i3 extends StatefulWidget {
  @override
  _Teste4i3State createState() => _Teste4i3State();
}

class _Teste4i3State extends State<Teste4i3> {
  final player = AudioCache();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: <Widget>[
            SizedBox(
              height: 0,
            ),
            Image.asset("assets/images/zebra.png", height: 500),
            TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  labelText: "Nome:",
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  )),
            ),
            Container(
                margin: EdgeInsets.all(30),
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.pink[400].withOpacity(0.7),
                    borderRadius: BorderRadius.circular(
                      60,
                    )),
                child: FlatButton(
                  child: Text("AVANÇAR",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Teste5()),
                    );
                    player.play('audio/zuno-9.mp3');
                  },
                )),
          ],
        ));
  }
}

class Teste5 extends StatefulWidget {
  @override
  _Teste5State createState() => _Teste5State();
}

class _Teste5State extends State<Teste5> {
  final player = AudioCache();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: <Widget>[
            SizedBox(
              height: 0,
            ),
            Image.asset("assets/images/teste5mold.png", height: 200),
            SizedBox(
              height: 10,
            ),
            Image.asset("assets/images/teste5inst.png", height: 200),
            SizedBox(
              height: 10,
            ),
            Image.asset("assets/images/zunokansei.png", height: 100),
            Container(
              child: FloatingActionButton(
                onPressed: () {
                  player.play('audio/zuno-9.mp3');
                },
                child: Icon(Icons.play_arrow),
              ),
            ),
            Container(
                margin: EdgeInsets.all(30),
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.pink[400].withOpacity(0.7),
                    borderRadius: BorderRadius.circular(
                      60,
                    )),
                child: FlatButton(
                  child: Text("AVANÇAR",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Teste5i()),
                    );
                    player.play('audio/zuno-10.mp3');
                  },
                )),
          ],
        ));
  }
}

class Teste5i extends StatefulWidget {
  @override
  _Teste5iState createState() => _Teste5iState();
}

class _Teste5iState extends State<Teste5i> {
  final player = AudioCache();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: <Widget>[
            SizedBox(
              height: 0,
            ),
            Image.asset("assets/images/hist1.png", height: 300),
            SizedBox(
              height: 10,
            ),
            Image.asset("assets/images/histperg.png", height: 150),
            SizedBox(
              height: 10,
            ),
            Image.asset("assets/images/zunokansei.png", height: 100),
            Container(
              child: FloatingActionButton(
                onPressed: () {
                  player.play('audio/zuno-10.mp3');
                },
                child: Icon(Icons.play_arrow),
              ),
            ),
            Container(
                margin: EdgeInsets.all(30),
                height: 35,
                decoration: BoxDecoration(
                    color: Colors.pink[400].withOpacity(0.7),
                    borderRadius: BorderRadius.circular(
                      60,
                    )),
                child: FlatButton(
                  child: Text("AVANÇAR",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Teste5i1()),
                    );
                    player.play('audio/zuno-11.mp3');
                  },
                )),
          ],
        ));
  }
}

class Teste5i1 extends StatefulWidget {
  @override
  _Teste5i1State createState() => _Teste5i1State();
}

class _Teste5i1State extends State<Teste5i1> {
  final player = AudioCache();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: <Widget>[
            SizedBox(
              height: 0,
            ),
            Image.asset("assets/images/hist2.png", height: 500),
            Container(
              child: FloatingActionButton(
                onPressed: () {
                  player.play('audio/zuno-11.mp3');
                },
                child: Icon(Icons.play_arrow),
              ),
            ),
            Container(
                margin: EdgeInsets.all(30),
                height: 35,
                decoration: BoxDecoration(
                    color: Colors.pink[400].withOpacity(0.7),
                    borderRadius: BorderRadius.circular(
                      60,
                    )),
                child: FlatButton(
                  child: Text("AVANÇAR",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Teste5i2()),
                    );
                    player.play('audio/zuno-12.mp3');
                  },
                )),
          ],
        ));
  }
}

class Teste5i2 extends StatefulWidget {
  @override
  _Teste5i2State createState() => _Teste5i2State();
}

class _Teste5i2State extends State<Teste5i2> {
  final player = AudioCache();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: <Widget>[
            SizedBox(
              height: 0,
            ),
            Image.asset("assets/images/hist3.png", height: 500),
            Container(
              child: FloatingActionButton(
                onPressed: () {
                  player.play('audio/zuno-12.mp3');
                },
                child: Icon(Icons.play_arrow),
              ),
            ),
            Container(
                margin: EdgeInsets.all(30),
                height: 35,
                decoration: BoxDecoration(
                    color: Colors.pink[400].withOpacity(0.7),
                    borderRadius: BorderRadius.circular(
                      60,
                    )),
                child: FlatButton(
                  child: Text("AVANÇAR",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Teste6()),
                    );
                    player.play('audio/zuno-13.mp3');
                  },
                )),
          ],
        ));
  }
}

class Teste6 extends StatefulWidget {
  @override
  _Teste6State createState() => _Teste6State();
}

class _Teste6State extends State<Teste6> {
  final player = AudioCache();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: <Widget>[
            SizedBox(
              height: 0,
            ),
            Image.asset("assets/images/teste6mold.png", height: 200),
            SizedBox(
              height: 10,
            ),
            Image.asset("assets/images/teste6inst.png", height: 200),
            SizedBox(
              height: 10,
            ),
            Image.asset("assets/images/zunokansei.png", height: 100),
            Container(
              child: FloatingActionButton(
                onPressed: () {
                  player.play('audio/zuno-13.mp3');
                },
                child: Icon(Icons.play_arrow),
              ),
            ),
            Container(
                margin: EdgeInsets.all(30),
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.pink[400].withOpacity(0.7),
                    borderRadius: BorderRadius.circular(
                      60,
                    )),
                child: FlatButton(
                  child: Text("AVANÇAR",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Teste6i()),
                    );
                  },
                )),
          ],
        ));
  }
}

class Teste6i extends StatefulWidget {
  @override
  _Teste6iState createState() => _Teste6iState();
}

class _Teste6iState extends State<Teste6i> {
  final player = AudioCache();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            Image.asset("assets/images/teste6A.png", height: 300),
            SizedBox(
              height: 10,
            ),
            Image.asset("assets/images/teste6clique.png", height: 200),
            Container(
                margin: EdgeInsets.all(30),
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.pink[400].withOpacity(0.7),
                    borderRadius: BorderRadius.circular(
                      60,
                    )),
                child: FlatButton(
                  child: Text("AVANÇAR",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Teste7()),
                    );
                    player.play('audio/zuno-14.mp3');
                  },
                )),
          ],
        ));
  }
}

class Teste7 extends StatefulWidget {
  @override
  _Teste7State createState() => _Teste7State();
}

class _Teste7State extends State<Teste7> {
  final player = AudioCache();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: <Widget>[
            SizedBox(
              height: 0,
            ),
            Image.asset("assets/images/teste7mold.png", height: 200),
            SizedBox(
              height: 10,
            ),
            Image.asset("assets/images/teste7inst.png", height: 200),
            SizedBox(
              height: 10,
            ),
            Image.asset("assets/images/zunokansei.png", height: 100),
            Container(
              child: FloatingActionButton(
                onPressed: () {
                  player.play('audio/zuno-14.mp3');
                },
                child: Icon(Icons.play_arrow),
              ),
            ),
            Container(
                margin: EdgeInsets.all(30),
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.pink[400].withOpacity(0.7),
                    borderRadius: BorderRadius.circular(
                      60,
                    )),
                child: FlatButton(
                  child: Text("AVANÇAR",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Teste7i()),
                    );
                  },
                )),
          ],
        ));
  }
}

class Teste7i extends StatefulWidget {
  @override
  _Teste7iState createState() => _Teste7iState();
}

class _Teste7iState extends State<Teste7i> {
  final player = AudioCache();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: <Widget>[
            SizedBox(
              height: 0,
            ),
            Image.asset("assets/images/apple.jpg", height: 150),
            SizedBox(
              height: 10,
            ),
            Image.asset("assets/images/banana.jpg", height: 200),
            SizedBox(
              height: 10,
            ),
            Image.asset("assets/images/coffee.jpg", height: 200),
            Container(
                margin: EdgeInsets.all(30),
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.pink[400].withOpacity(0.7),
                    borderRadius: BorderRadius.circular(
                      60,
                    )),
                child: FlatButton(
                  child: Text("AVANÇAR",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Teste8()),
                    );
                    player.play('audio/zuno-15.mp3');
                  },
                )),
          ],
        ));
  }
}

class Teste8 extends StatefulWidget {
  @override
  _Teste8State createState() => _Teste8State();
}

class _Teste8State extends State<Teste8> {
  final player = AudioCache();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: <Widget>[
            SizedBox(
              height: 0,
            ),
            Image.asset("assets/images/teste8mold.png", height: 200),
            SizedBox(
              height: 10,
            ),
            Image.asset("assets/images/teste8inst.png", height: 200),
            SizedBox(
              height: 10,
            ),
            Image.asset("assets/images/zunokansei.png", height: 100),
            Container(
              child: FloatingActionButton(
                onPressed: () {
                  player.play('audio/zuno-15.mp3');
                },
                child: Icon(Icons.play_arrow),
              ),
            ),
            Container(
                margin: EdgeInsets.all(30),
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.pink[400].withOpacity(0.7),
                    borderRadius: BorderRadius.circular(
                      60,
                    )),
                child: FlatButton(
                  child: Text("AVANÇAR",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Teste8i()),
                    );
                  },
                )),
          ],
        ));
  }
}

class Teste8i extends StatefulWidget {
  @override
  _Teste8iState createState() => _Teste8iState();
}

class _Teste8iState extends State<Teste8i> {
  final player = AudioCache();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: <Widget>[
            SizedBox(
              height: 0,
            ),
            Image.asset("assets/images/teste8um.png", height: 200),
            SizedBox(
              height: 10,
            ),
            Image.asset("assets/images/teste8dois.png", height: 200),
            SizedBox(
              height: 0,
            ),
            Image.asset("assets/images/teste8tres.png", height: 200),
            SizedBox(
              height: 10,
            ),
            Image.asset("assets/images/teste8quatro.png", height: 200),
            SizedBox(
              height: 10,
            ),
            Image.asset("assets/images/teste8cinco.png", height: 200),
            SizedBox(
              height: 10,
            ),
            Image.asset("assets/images/teste8seis.png", height: 200),
            SizedBox(
              height: 10,
            ),
            Image.asset("assets/images/teste8sete.png", height: 200),
            SizedBox(
              height: 10,
            ),
            Image.asset("assets/images/teste8oito.png", height: 200),
            Container(
                margin: EdgeInsets.all(30),
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.pink[400].withOpacity(0.7),
                    borderRadius: BorderRadius.circular(
                      60,
                    )),
                child: FlatButton(
                  child: Text("AVANÇAR",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Teste9()),
                    );
                    player.play('audio/zuno-25.mp3');
                  },
                )),
          ],
        ));
  }
}

class Teste9 extends StatefulWidget {
  @override
  _Teste9State createState() => _Teste9State();
}

class _Teste9State extends State<Teste9> {
  final player = AudioCache();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: <Widget>[
            SizedBox(
              height: 0,
            ),
            Image.asset("assets/images/teste9mold.png", height: 200),
            SizedBox(
              height: 10,
            ),
            Image.asset("assets/images/teste9inst.png", height: 200),
            SizedBox(
              height: 10,
            ),
            Image.asset("assets/images/zunokansei.png", height: 100),
            Container(
              child: FloatingActionButton(
                onPressed: () {
                  player.play('audio/zuno-25.mp3');
                },
                child: Icon(Icons.play_arrow),
              ),
            ),
            Container(
                margin: EdgeInsets.all(30),
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.pink[400].withOpacity(0.7),
                    borderRadius: BorderRadius.circular(
                      60,
                    )),
                child: FlatButton(
                  child: Text("AVANÇAR",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Teste9i()),
                    );
                  },
                )),
          ],
        ));
  }
}

class Teste9i extends StatefulWidget {
  @override
  _Teste9iState createState() => _Teste9iState();
}

class _Teste9iState extends State<Teste9i> {
  final player = AudioCache();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: <Widget>[
            SizedBox(
              height: 0,
            ),
            Image.asset("assets/images/teste9um.png", height: 200),
            SizedBox(
              height: 10,
            ),
            Image.asset("assets/images/teste9dois.png", height: 200),
            SizedBox(
              height: 0,
            ),
            Image.asset("assets/images/teste9tres.png", height: 200),
            SizedBox(
              height: 10,
            ),
            Image.asset("assets/images/teste9quarta.png", height: 200),
            SizedBox(
              height: 10,
            ),
            Image.asset("assets/images/teste9cinco.png", height: 200),
            SizedBox(
              height: 10,
            ),
            Image.asset("assets/images/teste9seis.png", height: 200),
            SizedBox(
              height: 10,
            ),
            Image.asset("assets/images/teste9sete.png", height: 200),
            SizedBox(
              height: 10,
            ),
            Image.asset("assets/images/teste9oito.png", height: 200),
            SizedBox(
              height: 10,
            ),
            Image.asset("assets/images/teste9nove.png", height: 200),
            Container(
                margin: EdgeInsets.all(30),
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.pink[400].withOpacity(0.7),
                    borderRadius: BorderRadius.circular(
                      60,
                    )),
                child: FlatButton(
                  child: Text("AVANÇAR",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Teste10()),
                    );
                    player.play('audio/zuno-16.mp3');
                  },
                )),
          ],
        ));
  }
}

class Teste10 extends StatefulWidget {
  @override
  _Teste10State createState() => _Teste10State();
}

class _Teste10State extends State<Teste10> {
  final player = AudioCache();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: <Widget>[
            SizedBox(
              height: 0,
            ),
            Image.asset("assets/images/teste10mold.png", height: 200),
            SizedBox(
              height: 10,
            ),
            Image.asset("assets/images/teste10inst.png", height: 200),
            SizedBox(
              height: 10,
            ),
            Image.asset("assets/images/zunokansei.png", height: 100),
            Container(
              child: FloatingActionButton(
                onPressed: () {
                  player.play('audio/zuno-16.mp3');
                },
                child: Icon(Icons.play_arrow),
              ),
            ),
            Container(
                margin: EdgeInsets.all(30),
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.pink[400].withOpacity(0.7),
                    borderRadius: BorderRadius.circular(
                      60,
                    )),
                child: FlatButton(
                  child: Text("AVANÇAR",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Teste10i()),
                    );
                    player.play('audio/zuno-17.mp3');
                  },
                )),
          ],
        ));
  }
}

class Teste10i extends StatefulWidget {
  @override
  _Teste10iState createState() => _Teste10iState();
}

class _Teste10iState extends State<Teste10i> {
  final player = AudioCache();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: EdgeInsets.only(
              top: 5,
              left: 20,
              right: 20,
            ),
            color: Colors.white,
            child: ListView(
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      labelText: "Em que cidade você está?",
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                      )),
                ),
                Container(
                    margin: EdgeInsets.all(30),
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.cyan.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(
                          60,
                        )),
                    child: FlatButton(
                      child: Text("AVANÇAR",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Teste10i1()),
                        );
                        player.play('audio/zuno-18.mp3');
                      },
                    )),
              ],
            )));
  }
}

class Teste10i1 extends StatefulWidget {
  @override
  _Teste10i1State createState() => _Teste10i1State();
}

class _Teste10i1State extends State<Teste10i1> {
  final player = AudioCache();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: EdgeInsets.only(
              top: 5,
              left: 20,
              right: 20,
            ),
            color: Colors.white,
            child: ListView(
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      labelText: "Em qual período do dia você está?",
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                      )),
                ),
                Container(
                    margin: EdgeInsets.all(30),
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.cyan.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(
                          60,
                        )),
                    child: FlatButton(
                      child: Text("AVANÇAR",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Teste10i2()),
                        );
                        player.play('audio/zuno-19.mp3');
                      },
                    )),
              ],
            )));
  }
}

class Teste10i2 extends StatefulWidget {
  @override
  _Teste10i2State createState() => _Teste10i2State();
}

class _Teste10i2State extends State<Teste10i2> {
  final player = AudioCache();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: EdgeInsets.only(
              top: 5,
              left: 20,
              right: 20,
            ),
            color: Colors.white,
            child: ListView(
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  keyboardType: TextInputType.datetime,
                  decoration: InputDecoration(
                      labelText: "Que dia do mês é hoje?",
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                      )),
                ),
                Container(
                    margin: EdgeInsets.all(30),
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.cyan.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(
                          60,
                        )),
                    child: FlatButton(
                      child: Text("AVANÇAR",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Teste10i3()),
                        );
                        player.play('audio/zuno-20.mp3');
                      },
                    )),
              ],
            )));
  }
}

class Teste10i3 extends StatefulWidget {
  @override
  _Teste10i3State createState() => _Teste10i3State();
}

class _Teste10i3State extends State<Teste10i3> {
  final player = AudioCache();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: EdgeInsets.only(
              top: 5,
              left: 20,
              right: 20,
            ),
            color: Colors.white,
            child: ListView(
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      labelText: "Em que mês estamos?",
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                      )),
                ),
                Container(
                    margin: EdgeInsets.all(30),
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.cyan.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(
                          60,
                        )),
                    child: FlatButton(
                      child: Text("AVANÇAR",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Teste10i4()),
                        );
                        player.play('audio/zuno-21.mp3');
                      },
                    )),
              ],
            )));
  }
}

class Teste10i4 extends StatefulWidget {
  @override
  _Teste10i4State createState() => _Teste10i4State();
}

class _Teste10i4State extends State<Teste10i4> {
  final player = AudioCache();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: EdgeInsets.only(
              top: 5,
              left: 20,
              right: 20,
            ),
            color: Colors.white,
            child: ListView(
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  keyboardType: TextInputType.datetime,
                  decoration: InputDecoration(
                      labelText: "Em que ano estamos?",
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                      )),
                ),
                Container(
                    margin: EdgeInsets.all(30),
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.cyan.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(
                          60,
                        )),
                    child: FlatButton(
                      child: Text("AVANÇAR",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Teste10i5()),
                        );
                        player.play('audio/zuno-22.mp3');
                      },
                    )),
              ],
            )));
  }
}

class Teste10i5 extends StatefulWidget {
  @override
  _Teste10i5State createState() => _Teste10i5State();
}

class _Teste10i5State extends State<Teste10i5> {
  final player = AudioCache();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: EdgeInsets.only(
              top: 5,
              left: 20,
              right: 20,
            ),
            color: Colors.white,
            child: ListView(
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      labelText: "Que dia da semana é hoje?",
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                      )),
                ),
                Container(
                    margin: EdgeInsets.all(30),
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.cyan.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(
                          60,
                        )),
                    child: FlatButton(
                      child: Text("AVANÇAR",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Teste11()),
                        );
                        player.play('audio/zuno-23.mp3');
                      },
                    )),
              ],
            )));
  }
}

class Teste11 extends StatefulWidget {
  @override
  _Teste11State createState() => _Teste11State();
}

class _Teste11State extends State<Teste11> {
  final player = AudioCache();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: <Widget>[
            SizedBox(
              height: 0,
            ),
            Image.asset("assets/images/teste11mold.png", height: 200),
            SizedBox(
              height: 10,
            ),
            Image.asset("assets/images/teste11inst.png", height: 200),
            SizedBox(
              height: 10,
            ),
            Image.asset("assets/images/zunokansei.png", height: 100),
            Container(
              child: FloatingActionButton(
                onPressed: () {
                  player.play('audio/zuno-23.mp3');
                },
                child: Icon(Icons.play_arrow),
              ),
            ),
            Container(
                margin: EdgeInsets.all(30),
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.pink[400].withOpacity(0.7),
                    borderRadius: BorderRadius.circular(
                      60,
                    )),
                child: FlatButton(
                  child: Text("AVANÇAR",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Teste11i()),
                    );
                    player.play('audio/zuno-24.mp3');
                  },
                )),
          ],
        ));
  }
}

class Teste11i extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: <Widget>[
            SizedBox(
              height: 0,
            ),
            Image.asset("assets/images/teste11hist.png", height: 500),
            Container(
                margin: EdgeInsets.all(30),
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.pink[400].withOpacity(0.7),
                    borderRadius: BorderRadius.circular(
                      60,
                    )),
                child: FlatButton(
                  child: Text("AVANÇAR",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Teste10i()),
                    );
                  },
                )),
          ],
        ));
  }
}
