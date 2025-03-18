import 'package:flutter/material.dart';
import 'package:responsible/widgets/glass_container.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.extent(
              maxCrossAxisExtent:250,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              children: List.generate(8, 
              (int index)=>GlassContainer(
                width: 50,
                height: 50,
                child: Text('${index+1}°',
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.white,fontFamily: "Arial",fontSize: 40),
                ),
                ),),
        
              
                );
  }
}