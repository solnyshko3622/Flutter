import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

class Inspiration extends StatelessWidget {
  const Inspiration();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: InspirationPage(),
    );
  }
}


class InspirationPage extends StatefulWidget {
  const InspirationPage();

  @override
  State<InspirationPage> createState() => _InspirationPageState();
}

class _InspirationPageState extends State<InspirationPage> {
  late List<CameraDescription> cameras;
  late CameraController controller;

  void initCamera() async {
    WidgetsFlutterBinding.ensureInitialized();
    cameras = await availableCameras();
  }

  @override
  void initState() {
    super.initState();
    initCamera();
  }

  @override
  Widget build(BuildContext context) {
    if (cameras.isEmpty) {
      return Container(); // Пока камеры не загружены, просто вернем пустой контейнер
    }

    controller = CameraController(cameras[0], ResolutionPreset.medium);
    controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    });

    if (!controller.value.isInitialized) {
      return Container();
    }

    return Column(
      children: [
        AspectRatio(
          aspectRatio: controller.value.aspectRatio,
          child: CameraPreview(controller),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Действие для первой кнопки
              },
              child: Text('Button 1'),
            ),
            ElevatedButton(
              onPressed: () {
                // Действие для второй кнопки
              },
              child: Text('Button 2'),
            ),
            ElevatedButton(
              onPressed: () {
                // Действие для третьей кнопки
              },
              child: Text('Button 3'),
            ),
          ],
        ),
      ],
    );
  }
}
