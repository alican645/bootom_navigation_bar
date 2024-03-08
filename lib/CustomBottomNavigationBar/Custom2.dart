import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';


class MyCurvedNavigationBar extends StatelessWidget {
  const MyCurvedNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      //Geçiş Animasyonunu belirleyen özellik
      //animationCurve: Curves.elasticIn,
      //Animasyon geçiş hızını ayarlayan özellik
      //animationDuration: Duration(milliseconds: 300),
      //Enbaştaki seçili sayfa(icon) durumunu belirleyen özelliktir.
      index: 1,
      //Seçme butonunun rengini değiştiren özellik
      //buttonBackgroundColor: Colors.blue,
      //appbar yüküseliğini belirleyen özellik
      //height: 20,
      onTap: (value) {
        print(value);
      },
      color: Colors.deepPurpleAccent,
      backgroundColor: Colors.deepPurple,
      items: <Widget>[
        Icon(Icons.add),
        Icon(Icons.person),
        Icon(Icons.settings)
      ],
    );
  }
}
