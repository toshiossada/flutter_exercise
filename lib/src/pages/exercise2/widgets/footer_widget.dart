import 'package:flutter/material.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(800),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            CircleAvatar(
              radius: 20,
              backgroundColor: Colors.black,
              child: ClipOval(
                child: Image.asset(
                  'assets/images/ff_logo.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),

            const SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Form&Fun',
                  style: TextStyle(
                    fontFamily: 'AktivGrotesk',
                    fontWeight: FontWeight.w800,
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'formandfun.co',
                  style: TextStyle(
                    fontFamily: 'AktivGrotesk',
                    fontWeight: FontWeight.w400,
                    fontSize: 13,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
