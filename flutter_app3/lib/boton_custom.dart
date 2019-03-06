import 'package:flutter/material.dart';


class ButtonCustom extends StatelessWidget{

  String textoBoton = "Navegar";

  ButtonCustom(this.textoBoton);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      onTap: () {
        Scaffold.of(context).showSnackBar(SnackBar(
            content: Text("Navegando")
         )
        );
      },
      child: Container(
        margin: EdgeInsets.only(
          top: 30.0,
          left: 20.0,
          right: 20.0
        ),
        height: 50.0,
        width: 180.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          gradient: LinearGradient(
              colors: [
                Color(0xFF000000),
                Color(0xFFFF0000)
              ],
            begin:  FractionalOffset(0.2, 0.0),
            end: FractionalOffset(1.0, 0.6),
            stops: [0.0,0.6],
            tileMode: TileMode.clamp
          )
        ),
        child: Center(
          child: Text(textoBoton,
          style: TextStyle(
            fontSize: 18.0,
            fontFamily: "Lato",
            color: Colors.white
          )
          ),
        ),
      ),
    );
  }
}