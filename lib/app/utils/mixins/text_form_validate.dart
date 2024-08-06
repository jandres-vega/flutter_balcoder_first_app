mixin TextFormValidate {

  String? validateRequired(String? value) {
    if(value == null || value.isEmpty){
      return 'Este campo es requerido';
    }
    return null;
  }

  String? validateNumber(String? value){
    final numberRegex = RegExp(r'^[0-9]+$');
    if(value == null || value.isEmpty){
      return 'Este campo es requerido';
    }
    if(!numberRegex.hasMatch(value)){
      return 'Solo se permiten números';
    }
    return null;
  }

  String? validateEmail(String? value){
    final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
    if(value == null || value.isEmpty){
      return 'Este campo es requerido';
    }
    if(!emailRegex.hasMatch(value)){
      return 'Correo inválido';
    }
    return null;
  }

  String? validatePassword(String? value){
    if(value == null || value.isEmpty){
      return 'Este campo es requerido';
    }
    if(value.length < 6){
      return 'La contraseña debe tener al menos 6 caracteres';
    }
    return null;
  }

  String? validatePasswordConfirmation(String? value, String password){
    if(value == null || value.isEmpty){
      return 'Este campo es requerido';
    }
    if(value != password){
      return 'Las contraseñas no coinciden';
    }
    return null;
  }

}