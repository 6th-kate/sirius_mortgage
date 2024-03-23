import 'package:flutter/material.dart';

class MainButtonTemplate extends StatefulWidget {
  final String title;
  final String subtitle;
  final String? image;

  const MainButtonTemplate({
    super.key,
    required this.title,
    required this.subtitle,
    this.image,
  });

  @override
  State<MainButtonTemplate> createState() => _MainButtonTemplateState();
}

class _MainButtonTemplateState extends State<MainButtonTemplate> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(140, 231, 186, 1),
              Color.fromRGBO(238, 244, 220, 1),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Stack(
          children: [
            Row(
              children: <Widget>[
                Expanded(
                  flex: 8,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25, top: 20),
                        child: Text(
                          widget.title,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25, bottom: 20),
                        child: Text(
                          widget.subtitle,
                          style: const TextStyle(color: Colors.black54),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: 90,
                        width: 90,
                        child: Image.asset(widget.image!),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: 0,
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  splashColor: Colors.white24,
                  onTap: () {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
