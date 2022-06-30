import 'package:flutter/material.dart';

typedef SearchCallback = Function(String word);

class ButtonBarWidget extends StatelessWidget {
  TextEditingController? searchController;
  final SearchCallback searchCallback;

  ButtonBarWidget(String defaultValue, this.searchCallback, {Key? key})
      : super(key: key) {
    searchController = TextEditingController(text: defaultValue);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextField(
              controller: searchController,
              style: const TextStyle(color: Colors.white),
              decoration: const InputDecoration(
                  hintText: "Search your recipe",
                  hintStyle: TextStyle(color: Colors.white70)),
            ),
          ),
          IconButton(
            onPressed: onSearchPressed,
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }

  void onSearchPressed() {
    searchCallback(searchController!.text);
  }
}
