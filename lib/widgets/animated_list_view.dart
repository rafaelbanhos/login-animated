import 'package:flutter/material.dart';
import 'package:loginanimated/widgets/list_data.dart';

class AnimatedListView extends StatelessWidget {
  final Animation<EdgeInsets> listSlidePosition;

  AnimatedListView({@required this.listSlidePosition});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        ListData(
          title: "Teste 1",
          subtitle: "teste 1 aaaa",
          image: AssetImage("images/perfil.png"),
          margin: listSlidePosition.value * 3,
        ),
        ListData(
          title: "Teste 2",
          subtitle: "teste 2 aaaa",
          image: AssetImage("images/perfil.png"),
          margin: listSlidePosition.value * 2,
        ),
        ListData(
          title: "Teste 3",
          subtitle: "teste 3 aaaa",
          image: AssetImage("images/perfil.png"),
          margin: listSlidePosition.value * 1,
        ),
        ListData(
          title: "Teste 4",
          subtitle: "teste 4 aaaa",
          image: AssetImage("images/perfil.png"),
          margin: listSlidePosition.value * 0,
        ),
      ],
    );
  }
}
