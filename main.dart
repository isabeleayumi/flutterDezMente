import 'package:flutter/material.dart';
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
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: ListView(
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            Image.asset("assets/images/logo.png", height: 310),
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
                  },
                ))
          ],
        ));
  }
}

class Cadastro extends StatelessWidget {
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
            Container(
                margin: EdgeInsets.all(30),
                height: 50,
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
                      MaterialPageRoute(builder: (context) => Cadastro1()),
                    );
                  },
                )),
          ],
        ));
  }
}

class Cadastro1 extends StatelessWidget {
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
                    onPressed: () {}))
          ],
        ));
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

class Cadastro2 extends StatelessWidget {
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
                      },
                    )),
              ],
            )));
  }
}

class Instrucoes extends StatelessWidget {
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
                  },
                )),
          ],
        ));
  }
}

class Instrucoes2 extends StatelessWidget {
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
                  },
                )),
          ],
        ));
  }
}

class Teste1 extends StatelessWidget {
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

class Teste1i extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: <Widget>[
            SizedBox(
              height: 5,
            ),
            Image.asset("assets/images/1ver.png", height: 70),
            SizedBox(
              height: 5,
            ),
            Image.asset("assets/images/2ver.png", height: 70),
            SizedBox(
              height: 5,
            ),
            Image.asset("assets/images/3ver.png", height: 70),
            SizedBox(
              height: 5,
            ),
            Image.asset("assets/images/4ver.png", height: 70),
            SizedBox(
              height: 5,
            ),
            Image.asset("assets/images/5ver.png", height: 70),
            SizedBox(
              height: 5,
            ),
            Image.asset("assets/images/Aver.png", height: 70),
            SizedBox(
              height: 5,
            ),
            Image.asset("assets/images/Bver.png", height: 70),
            SizedBox(
              height: 5,
            ),
            Image.asset("assets/images/Cver.png", height: 70),
            SizedBox(
              height: 5,
            ),
            Image.asset("assets/images/Dver.png", height: 70),
            SizedBox(
              height: 5,
            ),
            Image.asset("assets/images/Ever.png", height: 70),
            SizedBox(
              height: 5,
            ),
            Image.asset("assets/images/barratestes.png", height: 70),
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
                      MaterialPageRoute(builder: (context) => Teste2()),
                    );
                  },
                )),
          ],
        ));
  }
}

class Teste2 extends StatelessWidget {
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

class Teste2i extends StatelessWidget {
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
                  },
                )),
          ],
        ));
  }
}

class Teste3 extends StatelessWidget {
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

class Teste3i extends StatelessWidget {
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
                  },
                )),
          ],
        ));
  }
}

class Teste4 extends StatelessWidget {
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

class Teste4i3 extends StatelessWidget {
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
                  },
                )),
          ],
        ));
  }
}

class Teste5 extends StatelessWidget {
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
                  },
                )),
          ],
        ));
  }
}

class Teste5i extends StatelessWidget {
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
                  },
                )),
          ],
        ));
  }
}

class Teste5i1 extends StatelessWidget {
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
                  },
                )),
          ],
        ));
  }
}

class Teste5i2 extends StatelessWidget {
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
                  },
                )),
          ],
        ));
  }
}

class Teste6 extends StatelessWidget {
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

class Teste6i extends StatelessWidget {
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
                  },
                )),
          ],
        ));
  }
}

class Teste7 extends StatelessWidget {
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

class Teste7i extends StatelessWidget {
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
                  },
                )),
          ],
        ));
  }
}

class Teste8 extends StatelessWidget {
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

class Teste8i extends StatelessWidget {
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
                  },
                )),
          ],
        ));
  }
}

class Teste9 extends StatelessWidget {
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

class Teste9i extends StatelessWidget {
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
                  },
                )),
          ],
        ));
  }
}

class Teste10 extends StatelessWidget {
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

class Teste10i extends StatelessWidget {
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
                      },
                    )),
              ],
            )));
  }
}

class Teste10i1 extends StatelessWidget {
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
                      },
                    )),
              ],
            )));
  }
}

class Teste10i2 extends StatelessWidget {
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
                      },
                    )),
              ],
            )));
  }
}

class Teste10i3 extends StatelessWidget {
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
                      },
                    )),
              ],
            )));
  }
}

class Teste10i4 extends StatelessWidget {
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
                      },
                    )),
              ],
            )));
  }
}

class Teste10i5 extends StatelessWidget {
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
                      },
                    )),
              ],
            )));
  }
}

class Teste11 extends StatelessWidget {
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
