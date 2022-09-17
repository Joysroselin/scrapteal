import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CommonStyles{
  CommonStyles._();

  static loginText(){

  return GoogleFonts.montserrat(textStyle: TextStyle(letterSpacing: 0.3,
  fontSize: 16,color: Color(0xFF122599),
  fontWeight: FontWeight.bold,
  fontFamily: 'Montserrat')
  );
  }
  static profText(){

    return GoogleFonts.montserrat(textStyle: TextStyle(letterSpacing: 0.3,
        fontSize: 14,color:Colors.grey,
        fontWeight: FontWeight.bold,
        fontFamily: 'Montserrat')
    );
  }

  static profTextgreen(){

    return GoogleFonts.montserrat(textStyle: TextStyle(letterSpacing: 0.3,
        fontSize: 14,color:Colors.black,
        fontWeight: FontWeight.bold,
        fontFamily: 'Montserrat')
    );
  }
  static graytext(){

    return GoogleFonts.montserrat(textStyle: TextStyle(letterSpacing: 0.2,
        fontSize: 10,color:Colors.grey,
        // fontWeight: FontWeight.bold,
        fontFamily: 'Montserrat')
    );
  }
  static graydarktext(){

    return GoogleFonts.montserrat(textStyle: TextStyle(letterSpacing: 0.2,
        fontSize: 10,color:Colors.black87,
        // fontWeight: FontWeight.bold,
        fontFamily: 'Montserrat')
    );
  }

  static bigBluetext(){

    return GoogleFonts.montserrat(textStyle: TextStyle(letterSpacing: 0.2,
    fontSize: 20,color:Color(0xFF122599),
    fontWeight: FontWeight.bold,
    fontFamily: 'Montserrat')

    );
  }


  static greentext(){

    return GoogleFonts.montserrat(textStyle: TextStyle(letterSpacing: 0.3,
        fontSize: 12,color: Colors.green,
        fontWeight: FontWeight.bold,
        fontFamily: 'Montserrat')
    );
  }

  static greenlargetext(){

    return GoogleFonts.montserrat(textStyle: TextStyle(letterSpacing: 0.3,
        fontSize: 14,color: Colors.blue.shade900,
        fontWeight: FontWeight.bold,
        fontFamily: 'Montserrat')
    );
  }

}

// static profileTextLight() {
//   return GoogleFonts.montserrat(
//     textStyle: const TextStyle(
//       letterSpacing: 0.3,
//       fontSize: 14,
//       color: Color(0xFF004D40),
//       fontWeight: FontWeight.w400,
//       fontFamily: 'Montserrat',
//     ),
//   );
// }
