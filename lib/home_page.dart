import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  List<String> categoria;
  List<String> items;

  HomePage({
    Key key,
  }) : super(key: key) {
    categoria = List.generate(10, (i) => "Categoria $i");
    items = List.generate(5, (i) => "Item $i");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(10),
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: categoria.length,
            itemBuilder: (_, index) {
              return Column(
                children: [
                  Text(
                    categoria[index],
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                      itemCount: items.length,
                      itemBuilder: (_, index) {
                        return ListTile(title: Text(items[index]));
                      })
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
