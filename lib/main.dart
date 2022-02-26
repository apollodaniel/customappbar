import 'package:flutter/material.dart';

void main(){

  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: Home(),));

}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // app bar
          SliverAppBar(
            //pinned: true,
            //floating: true,
            //snap: true,
            expandedHeight: 250,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network("https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fs2.glbimg.com%2FFcs2gZsF90sPyGn9G8pGFMuGbrk%3D%2Fe.glbimg.com%2Fog%2Fed%2Ff%2Foriginal%2F2014%2F07%2F09%2Fsucesso.jpg&f=1&nofb=1", fit: BoxFit.cover,),
              title: Text("App bar grande"),

            ),
          ),
          SliverList(delegate: SliverChildBuilderDelegate(
            (context, index) {
              return Container(
                height: 70,
                child: Center(
                  child: Text(index.toString()),
                ),
              );
            },
            childCount: 24
          ))
        ],
      ),
    );
  }
}
