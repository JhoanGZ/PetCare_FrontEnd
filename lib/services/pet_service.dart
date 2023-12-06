import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:petcare_app/config/app_routes.dart';

// Define una función para manejar la lógica de autenticación
Future<void> petRegistration(
  GlobalKey<FormState> formKey,
  TextEditingController nameController,
  TextEditingController vaccineController,
  TextEditingController raceController,
  TextEditingController weightController,
  TextEditingController genderController,
  TextEditingController ageController,
  TextEditingController descriptionController,
  BuildContext context,
) async {
  if (formKey.currentState!.validate()) {
    // Datos del usuario del formulario usando controladores
    String name = nameController.text; 
    String vaccine = vaccineController.text;  
    String race = raceController.text;  
    String weight = weightController.text;  
    String gender = genderController.text;  
    String age = ageController.text;  
    String description = descriptionController.text; 
    try {
      // Realizar el envío a la API
      final response = await http.post(
        Uri.parse('http://127.0.0.1:8000/api/login'), //BUG: Asignar Endpoint
        body: {
          'name' : name, 
          'vaccine' : vaccine,  
          'race' : race,  
          'weight' : weight,  
          'gender' : gender,  
          'age' : age,  
          'description' : description, 
        },
      );

      // Verificar la respuesta de la API y manejarla según sea necesario
      if (response.statusCode >= 200 && response.statusCode < 300) {
        // La autenticación fue exitosa
        var responseData = jsonDecode(response.body);

        // Puedes hacer algo con la respuesta, por ejemplo, almacenar un token
        print('Respuesta de la API: $responseData');

        // Guarda los datos que necesitas o realiza otras acciones
        String userData = responseData['user'];
        bool userAuth = responseData['auth'] == true;

        // Navega a la pantalla de inicio y pasa los datos necesarios
        if (userAuth) {
          print('LOGIN EXITOSO!');
          // ignore: use_build_context_synchronously
          Navigator.of(context).pushNamed(
            AppRoutes.home,
            arguments: {userData},
          );
        }
      } else {
        // La autenticación falló, puedes mostrar un mensaje de error al usuario
        print('Error en la autenticación: ${response.body}');
        // Puedes mostrar un mensaje de error al usuario
        // ignore: use_build_context_synchronously
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content:
                Text('Error en la autenticación. Verifica tus credenciales.'),
            duration: Duration(seconds: 3),
          ),
        );
      }
    } catch (e) {
      // Manejar errores de conexión o de la API
      print('Error al conectar con la API: $e');
      // Puedes mostrar un mensaje de error al usuario
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
              'Error al conectar con la API. Por favor, inténtalo de nuevo.'),
          duration: Duration(seconds: 3),
        ),
      );
    }
  }
}