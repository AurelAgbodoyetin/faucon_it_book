import 'package:faucon_it_book/app_color.dart';
import 'package:flutter/material.dart';

class BookInfo extends StatelessWidget {
  final String tag;
  final String value;
  const BookInfo({
    Key? key,
    required this.tag,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Text(
            tag,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 18.0,
              color: AppColors.kTextColor.withOpacity(.6),
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            value,
            textAlign: TextAlign.center,
            maxLines: 1,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
            ),
          ),
        ],
      ),
    );
  }
}
