import 'package:flutter/material.dart';

import 'widgets/footer_widget.dart';
import 'widgets/header_widget.dart';

class Exercise2Page extends StatelessWidget {
  const Exercise2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Here's your landing page:",
          style: TextStyle(
            fontFamily: 'AktivGrotesk',
            package: 'assets',
            fontSize: 24,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          Flexible(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 16),
                    const HeaderWidget(),
                    const SizedBox(height: 24),
                    const Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras at odio quam. Etiam sed lorem id ligula egestas ornare non ac mauris. Proin non sagittis justo. Sed id viverra est. Integer enim sem, scelerisque vitae tristique sit amet, ullamcorper vel arcu. Nullam mollis posuere turpis, ac dignissim quam sodales eget. Aenean congue fringilla pretium. Morbi volutpat fringilla luctus. Donec et ligula sit amet mauris sodales tristique a ac quam. Donec vel libero a libero laoreet eleifend a ut nisi. Donec ut sem in orci gravida mattis eget ut nibh. Ut faucibus sollicitudin magna, ac sollicitudin ex tristique at.Pellentesque vehicula nisl et augue commodo, id bibendum urna tristique. Morbi in malesuada libero. Nullam rhoncus ex quis urna fringilla euismod vel imperdiet justo. Quisque condimentum cursus facilisis. Donec ex sem, efficitur sed sagittis ac, accumsan mattis libero. Pellentesque vulputate eget odio vel convallis. Proin malesuada pulvinar felis, sed lobortis sem porttitor ac. Vivamus molestie vehicula orci, efficitur rutrum nulla semper ac. Phasellus ut ligula tortor. In augue est, elementum a sodales eu, sodales id lectus. Sed ac luctus leo. Nullam a nulla pellentesque, scelerisque dolor in, mattis turpis.',
                      style: TextStyle(
                        fontFamily: 'AktivGrotesk',
                        package: 'assets',
                        fontSize: 20,
                        color: Color(0xFF1A1A1A),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15.0,
            ),
            child: FooterWidget(),
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}
