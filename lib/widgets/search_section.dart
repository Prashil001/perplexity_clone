import 'package:flutter/material.dart';
import 'package:perplexity_clone/Theme/colors.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "perplexity",
          style: TextStyle(
            color: AppColors.textGrey,
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 18),
        Container(
          padding: EdgeInsets.all(12),
          width: 700,
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.searchBarBorder, width: 1.5),
            borderRadius: BorderRadius.circular(18),
            color: AppColors.searchBar,
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Ask Anything...",
                    hintStyle: TextStyle(color: AppColors.iconGrey),
                    border: InputBorder.none,
                    isDense: true,
                    contentPadding: EdgeInsets.zero,
                  ),
                  style: TextStyle(color: AppColors.whiteColor),
                ),
              ),
              SizedBox(height: 12),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(93, 25, 26, 26),
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(color: AppColors.searchBarBorder)
                    ),
                    child: Icon(
                      Icons.add,
                      color: AppColors.iconGrey,
                      size: 20,
                    ),
                  ),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.all(9),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: const Icon(
                      Icons.arrow_forward,
                      color: AppColors.background,
                      size: 16,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
