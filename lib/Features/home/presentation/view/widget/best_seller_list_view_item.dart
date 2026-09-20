import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Row(
        children: [
          Card(
            elevation: 6,
            shadowColor: const Color.fromARGB(255, 232, 230, 230),

            child: AspectRatio(
              aspectRatio: 2.7 / 4,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: Colors.red,
                  image: DecorationImage(
                    image: AssetImage(AssetsData.KImages2),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(width: 30),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .5,
                child: Text(
                  "Harry Potter and The Goblet Of Fire ",
                  style: Styles.textstyle20.copyWith(fontFamily: KGtSectrafine),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ),
              const SizedBox(height: 3),
              Text("J.K.Rowling", style: Styles.textstyle14),
              const SizedBox(height: 3),
              Row(children: [Text(r"19.99$", style: Styles.textstyle20)]),
            ],
          ),
        ],
      ),
    );
  }
}
