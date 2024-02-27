import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: NewWidget());
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      bottomNavigationBar: CurvedNavigationBar(
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
      ),
    );
  }
}

/////////////////////////////////////////////////////////////////////
class ClassicBottomNavigationBar extends StatefulWidget {
  const ClassicBottomNavigationBar({
    super.key,
  });

  @override
  State<ClassicBottomNavigationBar> createState() =>
      _ClassicBottomNavigationBarState();
}

class _ClassicBottomNavigationBarState
    extends State<ClassicBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    int currentIndex = 0;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        //ontap fonksiyonun value değişkeni çalıştırılan navigationbar iteminin index numarasını ifade eder
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
          if (value == 0) {
            //Add iconu ile beraber çalışacak fonksiyonlar
            print("Ekleme İşlemi Yapılıyor");
          } else {
            //person iconu ile  beraber çalışacak fonksiyonlar
            print("Profile Gidiliyor");
          }
        },
        //seçili olan indexi belirleyen özelliktir. ontap ile değiştirilebilir.
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: "Add",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],

        /*Bu özellik, alt gezinme çubuğunun türünü belirlemek için kullanılır.
      fixed türü ise, seçili öğenin simgesi
      ve etiketinin büyüdüğü ve diğer öğelerin küçüldüğü bir alt
      gezinme çubuğu oluşturur.*/
        type: BottomNavigationBarType.fixed,
        //backgroundColor: Bu özellik, alt gezinme çubuğunun arka plan rengini ayarlamak için kullanılır.
        //selectedItemColor: Bu özellik, seçili öğenin rengini ayarlamak için kullanılır.
        //unselectedItemColor: Bu özellik, seçili olmayan öğelerin rengini ayarlamak için kullanılır.
        //elevation: Bu özellik, alt gezinme çubuğunun gölgelendirme miktarını ayarlamak için kullanılır.
        //iconSize: Bu özellik, alt gezinme çubuğundaki simgelerin boyutunu ayarlamak için kullanılır.
        //selectedLabelStyle: Bu özellik, seçili öğenin etiketinin stilini ayarlamak için kullanılır.
        //unselectedLabelStyle: Bu özellik, seçili olmayan öğelerin etiketlerinin stilini ayarlamak için kullanılır.
      ),
    );
  }
}
