import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputssScreen extends StatelessWidget {
  const InputssScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Bastian',
      'last_name' : 'Dev',
      'email'     : 'bastndev@gmail.com',
      'password'  : '123456',
      'role'      : 'Admin',
    };

    return Scaffold(
        appBar: AppBar(
          title: const Text('Inputs and Forms'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Form(
              key: myFormKey,
              child: Column(children: [

                CustomInputField(labelText: 'Name',hintText: 'User Name', formProperty: 'first_name', formaValues: formValues,),
                const SizedBox(height: 30,),

                CustomInputField(labelText: 'Last Name',hintText: 'Last Name', formProperty: 'last_name', formaValues: formValues,),
                const SizedBox(height: 30,),

                CustomInputField(labelText: 'Email',hintText: 'Email User',keyboardType: TextInputType.emailAddress, formProperty: 'email', formaValues: formValues,),
                const SizedBox(height: 30,),
                
                CustomInputField(labelText: 'Pasword',hintText: 'User Pasword',obscureText: true, formProperty: 'password', formaValues: formValues,),
                const SizedBox(height: 30,),

                /* --- --- --- --- --- --- --- NO se que sea */
                DropdownButtonFormField<String>(
                  value: 'Admin',
                  items:const [
                    DropdownMenuItem(value: 'Admin', child: Text('Admin')),
                    DropdownMenuItem(value: 'SuperUser', child: Text('SuperUser')),
                    DropdownMenuItem(value: 'Developer', child: Text('Developer')),
                    DropdownMenuItem(value: 'Jr.Developer', child: Text('Jr.Developer')),
                  ],   
                  onChanged: (value) {
                    print(value);
                    formValues['role'] = value ?? 'Admin';

                    }, 
                ),



                /* --- --- --- --- --- --- ---Elevate Button */
                ElevatedButton(
                  child: const SizedBox(
                      width: double.infinity,
                      child: Center(child: const Text('Guardar'))),
                  onPressed: () {

                    FocusScope.of(context).requestFocus(FocusNode());

                    if( !myFormKey.currentState!.validate()){
                      print('Formulario No Valido');
                      return;
                    }

                    //* Imprimir Valores del Formulario
                    print(formValues);
                  },
                )
              ]),
            ),
          ),
        ));
  }
}
