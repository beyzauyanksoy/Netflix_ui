import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailPlayButton extends StatefulWidget {
  const DetailPlayButton({super.key});

  @override
  State<DetailPlayButton> createState() => _DetailPlayButtonState();
}

class _DetailPlayButtonState extends State<DetailPlayButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Image.asset('assets/play_icon.png'),
            ),
            const Center(
              child: Text(
                'Play',
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Color(
                      0xffFFFFFF,
                    ),
                    fontSize: 29.86),
              ),
            ),
          ],
        ),
        width: 380,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Color(0xffe32727),
        ),
      ),
    );
  }
}
