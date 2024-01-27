import 'package:app_dev_client_project_1/widgets/shop_widgets/book_test_card.dart';
import 'package:flutter/material.dart';

class BookTestDisplay extends StatelessWidget {
  const BookTestDisplay({super.key, this.ScrollController});

  final ScrollController;

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      controller: ScrollController,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        controller: ScrollController,
        itemBuilder: (_, index) {
          return const BookTestCard();
        },
      ),
    );
  }
}
