import 'package:flutter/material.dart';
import 'package:responsible/main_page.dart';
import 'package:responsible/widgets/menu.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context,contrains) {
        final bool isMobile=contrains.maxWidth<600 || contrains.maxHeight<600;
        return Scaffold(
          extendBodyBehindAppBar: true,
          drawer:isMobile?Menu():null,
          appBar: AppBar(
            iconTheme: IconThemeData(color: Colors.white),
            backgroundColor: Colors.transparent,
            centerTitle: true,
          ),
          body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.orangeAccent,Colors.deepOrange],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                )
            
            ),
            child:isMobile
            ?MainPage()
            :Row(
                  children: [
                    const Menu(),
                    Expanded(
                      flex:8,
                      child: MainPage(),
                    )
                  ],
                ),
          ),
        );
      }
    );
  }
}