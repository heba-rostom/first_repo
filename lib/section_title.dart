import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  final String title;      
  final String actionText;  

  const SectionTitle({
    Key? key,
    required this.title,
    required this.actionText, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 20,
              color: Color(0xFF181725),
            ),
          ),
          
          Text(
            actionText,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,
              color: Color(0xFF53B175),
            ),
          ),
        ],
      ),
    );
  }
}