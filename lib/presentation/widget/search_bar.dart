import 'package:flutter/material.dart';
import 'package:trading/presentation/screen/search_page.dart';
import 'package:trading/utils/constant.dart';

class SearchAndAddScriptsBar extends StatelessWidget {
  const SearchAndAddScriptsBar({super.key});

  @override
  Widget build(BuildContext context) {
    
    return GestureDetector(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> SearchPage())),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Icon(Icons.search, color: grey),
            const SizedBox(width: 8),
             Expanded(
              child: TextField(
                enabled: false,
                decoration: InputDecoration(
                  hintText: 'Search and Add Scrips',
                  border: InputBorder.none,
                  hintStyle: TextStyle(
                    color: grey,
                    fontWeight: FontWeight.w500,
                    fontSize: 14
                  ),
                ),
                style: TextStyle(color: grey),
              ),
            ),
            Container(width: 1,height: 25,color: grey,),
            IconButton(
              icon:  Icon(Icons.grid_view_rounded, color: secondaryColor),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.tune_rounded, color: secondaryColor),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
