import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../mq.dart';
import 'item_details_screen.dart';
import 'models.dart';

class GroceryItem extends StatelessWidget {
  final MGrocery item;
  const GroceryItem({Key? key, required this.item,}) : super(key: key);

  void onTap(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) => ItemDetailsSreen(item: item)));
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(context),
      child: Card(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          width: MQuery.width * 0.4,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          child: LayoutBuilder(
            builder: (_, constraints) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Hero(
                    tag: item.hashCode,
                    child: Image.asset(
                      item.url,
                      height: constraints.maxHeight * 0.4,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(item.name, style: kTitleStyle),
                  Text(item.description, style: kDescriptionStyle),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\₹${item.price}',
                        style: kTitleStyle.copyWith(fontWeight: FontWeight.w700),
                      ),
                      Container(

                        child: Icon(
                          Icons.add,
                          size: 20,
                          color: Colors.purpleAccent,
                        ),
                      ),
                    ],
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
