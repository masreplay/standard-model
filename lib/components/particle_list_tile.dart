import 'package:flutter/material.dart';
import 'package:standard_model/models/particle.dart';

class ParticleView extends StatelessWidget {
  final Particle item;
  final double borderWidth;

  final List<Color> gradientColor;

  final double borderRadius;

  final VoidCallback? onLongPress;

  final VoidCallback onTap;

  const ParticleView({
    GlobalKey? key,
    required this.item,
    this.onLongPress,
    required this.onTap,
    this.borderWidth = 5,
    this.borderRadius = 5,
    required this.gradientColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onTap,
            borderRadius: BorderRadius.circular(borderRadius),
            splashColor: Colors.white,
            onLongPress: onLongPress,

            /// border
            child: Ink(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: gradientColor,
                ),
                borderRadius: BorderRadius.circular(borderRadius),
              ),
              padding: EdgeInsets.all(borderWidth),

              /// body
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  borderRadius:
                      BorderRadius.circular(borderRadius - borderWidth),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: constraints.maxHeight / 2,
                      width: constraints.maxHeight / 2,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: gradientColor,
                        ),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Text(
                        item.symbols.first,
                        style: TextStyle(
                          fontSize: constraints.maxWidth / 4,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Text(
                      item.name,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: constraints.maxWidth / 8,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
