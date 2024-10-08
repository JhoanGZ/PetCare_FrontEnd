import 'package:flutter/material.dart';
import 'package:petcare_app/design/colors.dart';

class PetCareThemes {
  //Esta clase nos permite dar estilo a todos los textos de la app
  PetCareThemes._();
  //Estan todos modularizados
  static const TextStyle nameProfileTextStyle = TextStyle(
    //esta atributo es usado para los enunciados
    fontFamily: 'Inter', //esto se utiliza para recoger los fonts importados
    fontWeight: FontWeight.bold, // esto es el ancho de la linea
    fontSize: 15, //tamaño de la fuente
    color: PetCareColors.brandShadowColor,
  );
  static const TextStyle descriptionPetTextStyle = TextStyle(
    //esta atributo es usado para los enunciados
    fontFamily: 'Inter', //esto se utiliza para recoger los fonts importados
    fontWeight: FontWeight.w200, // esto es el ancho de la linea
    fontSize: 12, //tamaño de la fuente
    color: PetCareColors.brandShadowColor,
  );
  static const TextStyle statementTextStyle = TextStyle(
    //esta atributo es usado para los enunciados
    fontFamily: 'Inter', //esto se utiliza para recoger los fonts importados
    fontWeight: FontWeight.w200, // esto es el ancho de la linea
    fontSize: 15, //tamaño de la fuente
    color: PetCareColors.brandShadowColor,
  );
  static const TextStyle statementItalicTextStyle = TextStyle(
    //esta atributo es usado para los enunciados en itálico
    fontFamily: 'Inter', //esto se utiliza para recoger los fonts importados
    fontWeight: FontWeight.w500, // esto es el ancho de la linea
    fontSize: 20, //tamaño de la fuente
    fontStyle: FontStyle.italic, //tipo estilo
    color: PetCareColors.blackClassicColor, // color negro clásico
  );
  static const TextStyle linkTextStyle = TextStyle(
    //esta atributo es usado para los enunciados
    fontFamily: 'Inter', //esto se utiliza para recoger los fonts importados
    fontWeight: FontWeight.w200, // esto es el ancho de la linea
    fontSize: 15, //tamaño de la fuente
    color: PetCareColors.brandLinkColor,
  );
  static const TextStyle linkTextStyleBold = TextStyle(
    //esta atributo es usado para los enunciados
    fontFamily: 'Inter', //esto se utiliza para recoger los fonts importados
    fontWeight: FontWeight.bold, // esto es el ancho de la linea
    fontSize: 15, //tamaño de la fuente
    color: PetCareColors.brandLinkColor,
  );
  static const TextStyle titleTextStyle = TextStyle(
    //esta atributo es usado para los titulos escritos en naranjo
    fontFamily: 'Inter',
    fontWeight: FontWeight.w600, // FontWeight para inter-semibold
    fontSize: 30,
    color: PetCareColors.brandPrimaryColor,
  );
  static const TextStyle blackRegularTextStyle = TextStyle(
    //esta atributo es usado para los textos en negrita
    fontFamily: 'Inter',
    fontWeight: FontWeight.w400, // FontWeight para inter-regular
    fontSize: 24,
    color: PetCareColors.brandShadowColor,
  );
  static const TextStyle whiteRegularTextStyle = TextStyle(
    //esta atributo es usado para los textos en blanco
    fontFamily: 'Inter',
    fontWeight: FontWeight.w400, // FontWeight para inter-regular
    fontSize: 24,
    color: PetCareColors.brandSecundaryLightColor,
  );
  static const TextStyle buttonTextStyle = TextStyle(
    //esta atributo es usado para los titulos escritos en naranjo
    fontFamily: 'Inter',
    fontWeight: FontWeight.w600, // FontWeight para inter-semibold
    fontSize: 15,
    color: PetCareColors.brandSecondaryColor,
  );
  static const TextStyle textStylePopUp = TextStyle(
    // este atributo se utiliza en el texto de los popups
    //
    fontFamily: 'Inter',
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: PetCareColors.brandPrimaryColor,
  );
  static const TextStyle textStyleSubtitle = TextStyle(
    //este atributo se utiliza en el subtitulo de los popups
    fontSize: 18,
    color: PetCareColors.brandPrimaryColor,
  );
}

// =====================================================iNPUTS===========================================================
class PetCareInputStyle {
  final String labelText;

  PetCareInputStyle({required this.labelText});

  InputDecoration get regularInput {
    return InputDecoration(
      floatingLabelBehavior: FloatingLabelBehavior.auto, //para la animacion
      filled: true,
      fillColor: PetCareColors.brandSecondaryColor,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: const BorderSide(
            color: PetCareColors
                .brandSecondaryColor), // Cambio en el color del borde cuando no está enfocado
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: const BorderSide(
            color: PetCareColors
                .brandPrimaryColor), // Color del borde al estar enfocado
      ),
      labelText: labelText,
      labelStyle: const TextStyle(
          fontSize: 12.0,
          color: PetCareColors.brandShadowColor,
          fontFamily: 'Inter'),
      contentPadding: const EdgeInsets.symmetric(
          vertical: 10.0,
          horizontal:
              16), // Ajusta la altura del espacio interno, tanto horizontal y vertical.
    );
  }
}

//=====================================================BUTTONS===========================================================
class PetCareButtonStyles {
  static ButtonStyle elevatedButtonStyle = ElevatedButton.styleFrom(
      minimumSize: const Size(328, 53), //alto y ancho del boton
      backgroundColor:
          PetCareColors.brandPrimaryColor, // Color de fondo del botón
      foregroundColor: Colors.white, // Color del texto del botón
      padding: const EdgeInsets.symmetric(
          vertical: 15, horizontal: 20), // Padding del botón
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(7), // Bordes redondeados del botón
      ),
      textStyle: PetCareThemes.buttonTextStyle);
}

class PetCareLittleButtonStyles {
  static ButtonStyle elevatedButtonStyle = ElevatedButton.styleFrom(
      //alto y ancho del boton
      backgroundColor:
          PetCareColors.brandPrimaryColor, // Color de fondo del botón
      foregroundColor: Colors.white, // Color del texto del botón
      padding: const EdgeInsets.symmetric(
          vertical: 15, horizontal: 20), // Padding del botón
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(7), // Bordes redondeados del botón
      ),
      textStyle: PetCareThemes.buttonTextStyle);
}
//=====================================================APPBAR USER=======================================================
//===================================================== COLOR ANIMATION CHECKBOX ========================================

class PetCareAnimationColor {
  static dynamic customAnimationColor = Colors.orange;

  static ThemeData get customAnimationColorTheme {
    return ThemeData(
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled)) {
              return null;
            }
            if (states.contains(MaterialState.selected)) {
              return PetCareColors.brandPrimaryColor;
            }
            return null;
          },
        ),
      ),
      radioTheme: RadioThemeData(
        fillColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled)) {
              return null;
            }
            if (states.contains(MaterialState.selected)) {
              return PetCareColors.brandPrimaryColor;
            }
            return null;
          },
        ),
      ),
      switchTheme: SwitchThemeData(
        thumbColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled)) {
              return null;
            }
            if (states.contains(MaterialState.selected)) {
              return PetCareColors.brandPrimaryColor;
            }
            return null;
          },
        ),
        trackColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled)) {
              return null;
            }
            if (states.contains(MaterialState.selected)) {
              return PetCareColors.brandPrimaryColor;
            }
            return null;
          },
        ),
      ),
    );
  }
}
