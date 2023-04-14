import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  final VoidCallback onSearchPressed;
  final String hintText;

  SearchBar({required this.onSearchPressed, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search events by area',
                border: InputBorder.none,
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.search),
            iconSize: 35,
            onPressed: (){},
          ),
        ],
      ),
    );
  }
}
