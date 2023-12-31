import 'package:flutter/material.dart';
import 'package:master_brain/classes/driver.dart';
import 'package:master_brain/enums/swap_item_name.dart';
import 'package:master_brain/ui/widgets/book.dart';
import 'package:master_brain/utils/breakpoints.dart';

class BooksContainer extends StatelessWidget {
  const BooksContainer({
    Key? key,
    required this.width,
    required this.stateKeysMap,
  }) : super(key: key);
  final double width;
  final Map<Enum, GlobalKey<State<StatefulWidget>>> stateKeysMap;

  @override
  Widget build(BuildContext context) {
    Driver().setContext = context;
    return Positioned(
      bottom: (width >= Preakpoints.md) ? width * 0.24 : width * 0.30,
      child: SizedBox(
        width: (width >= Preakpoints.md) ? width * 0.4 : width * 0.5,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.min,
            children: [
              Book(
                key: stateKeysMap[SwapItemName.firstSwapItem],
                width: width,
                swapItem: SwapItemName.firstSwapItem,
              ),
              Book(
                key: stateKeysMap[SwapItemName.secondSwapItem],
                width: width,
                swapItem: SwapItemName.secondSwapItem,
              ),
              Book(
                key: stateKeysMap[SwapItemName.thirdSwapItem],
                width: width,
                swapItem: SwapItemName.thirdSwapItem,
              ),
            ]),
      ),
    );
  }
}
