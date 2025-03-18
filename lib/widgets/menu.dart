import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});
  Text _text({required String text,required double? fontSize,TextAlign? textAlign}){
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        fontSize: fontSize,
        color: Colors.white,
        fontWeight:FontWeight.bold 

      ),
    );
  }
  ListTile _tile({required IconData icon,required String text}){
    return ListTile(
      leading: Icon(icon,color: Colors.white,size: 30,),
      title: _text(text: text, fontSize: 15),
      
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      
      backgroundColor: Colors.deepOrangeAccent,
      elevation: 5,
      child: Column(
        children: [
          Flexible(
            flex: 2,
            child: AspectRatio(
              aspectRatio: 16/9,
              child: Container(
                width: double.infinity,
                color: Colors.deepOrangeAccent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.account_circle,size: 80,color: Colors.white,),
                    _text(text: "Guilherme", fontSize: 25,textAlign: TextAlign.center),
                    _text(text: "cavazzani.projetos@gmail.com", fontSize: 15,textAlign: TextAlign.center)
                  ],
                ),
              ),
            ),
          ),
          Flexible(
            flex: 6,
            child: ListView(
              children: [
                _tile(icon: Icons.accessibility_outlined, text: "Opção 1 "),
                Divider(color: Colors.white,),
                _tile(icon: Icons.dark_mode, text: "Opção 2 "),
                Divider(color: Colors.white,),
                _tile(icon: Icons.thirteen_mp, text: "Opção 3 "),
                Divider(color: Colors.white,),
                _tile(icon: Icons.girl_outlined, text: "Opção 4 "),
                Divider(color: Colors.white,),
                _tile(icon: Icons.savings, text: "Opção 5 "),
                Divider(color: Colors.white,),
                _tile(icon: Icons.laptop_mac_outlined, text: "Opção 6 ")

              ],
            ))
        ],
      ),
    );
  }
}