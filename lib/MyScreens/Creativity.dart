import 'package:flutter/material.dart';
import 'package:flutter_projects/MyScreens/Inspiration.dart';

class Creativity extends StatelessWidget {
  const Creativity();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: CreativityPage(),
    );
  }
}

class CreativityPage extends StatefulWidget {
  const CreativityPage();
  @override
  State<CreativityPage> createState() => _CreativityPageState();
}

class _CreativityPageState extends State<CreativityPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         // Отступ сверху для всех элементов
          body: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 10, right: 10, top: 50, bottom: 10), // Отступ сверху для Row
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text(
                      'Творчество',
                      style: TextStyle(fontSize: 20.0, color: Colors.indigo),
                    ),
                    Icon(Icons.cancel, color: Colors.grey),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0), // Отступ сверху для Card с изображением
                child: Card(
                  child: Image.asset('assets/img.png'),
                  clipBehavior: Clip.hardEdge,
                ),
              ),
              CustomButton(),
              Padding(
                padding: const EdgeInsets.only(top: 100, left: 10, right: 10), // Отступ сверху для Card с ListTile
                child: InfoBox(),
                ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0), // Отступ сверху для Card с ListTile
                child: SendButton(),
              ),
            ],
          ),
        );
  }
}


class CustomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton(
        child: Text('Поменять картинку'),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.grey),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
      ),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(
            builder: (context) => Inspiration()));
      }
    );
  }
}


class InfoBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.info),
              title: Text('Дополнительная информация'),
              subtitle:
              Text(
                  'Промокод можно передвинуть куда пожелаете и поделиться своим творением.'),
            ),
          ],
        )
    );
  }
}

class SendButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
          foregroundColor: Colors.white
      ),
      onPressed: () {
        // Действия по нажатию кнопки
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Отправить творение'),
          Icon(Icons.share),
        ],
      ),
    );
  }
}