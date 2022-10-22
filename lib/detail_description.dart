import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailDescription extends StatefulWidget {
  const DetailDescription({super.key});

  @override
  State<DetailDescription> createState() => _DetailDescriptionState();
}

class _DetailDescriptionState extends State<DetailDescription> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Container(
          width: 308,
          height: 90.11,
          child: Text(
            "Transformers is a series of American science fiction action films based on the Transformers franchise, which began in the 1980s. \n",
            style: GoogleFonts.roboto(
              textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 18.99,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
        ));
  }
}
