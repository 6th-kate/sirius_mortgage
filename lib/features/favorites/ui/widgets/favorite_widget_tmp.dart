import 'package:flutter/material.dart';
import 'package:sirius_mortgage/features/theme/model/theme_extensions.dart';

class FavoritesButtonTemplate extends StatelessWidget {
  final String title;
  final VoidCallback? onClick;

  const FavoritesButtonTemplate({
    super.key,
    required this.title,
    this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        decoration: BoxDecoration(
          gradient:
              Theme.of(context).extension<ThemeGradients>()!.buttonGradient,
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
                          title,
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
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
                  onTap: onClick ?? () {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
