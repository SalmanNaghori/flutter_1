import 'package:flutter/cupertino.dart';
import 'package:velocity_x/velocity_x.dart';

import '../themes.dart';

class CatalogImage extends StatelessWidget {
  final String image;
  const CatalogImage({
    Key? key,
    required this.image,
  })  : assert(image != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      image,
    ).box.roundedLg.p8.color(MyTheme.creamcolor).make().p16().w40(context);
  }
}
