import 'package:flutter/material.dart';

class RicoOuPobreWidget extends StatefulWidget {
  @override
  _RicoOuPobreWidgetState createState() => _RicoOuPobreWidgetState();
}

class _RicoOuPobreWidgetState extends State<RicoOuPobreWidget> {
  int valor = 1000;
  String situacao = "Normal";

  @override
  Widget build(BuildContext context) {
    if (valor < 0 ){
      situacao = "Usuário Pobre";
    }else if (valor > 1000){
      situacao = "Usuário Rico";
    }else{
      situacao = "Usuário Normal";
    }
    return Material(
        child: Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Text(
            "RS: $valor",
            style: TextStyle(
              color: Colors.black,
              fontStyle: FontStyle.italic,
              fontSize: 25,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RaisedButton(
                onPressed: () {
                  setState(() {
                    valor += 100;
                  });
                },
                child: Text("+100"),
              ),
              RaisedButton(
                onPressed: () {
                  setState(() {
                    valor -= 100;
                  });
                },
                child: Text("-100"),
              )
            ],
          ),
          Text( "Situação: $situacao",
            style: TextStyle(
              fontSize: 25
            ),

          )

        ],
      ),
    ));
  }
}
