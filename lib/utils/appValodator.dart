class AppValidator {
  String? validateUserName(value) {
    if (value!.isEmpty) {
      return "Please Enter an user name";
    }
    return null;
  }

  String? validateEmail(value) {
    if (value!.isEmpty) {
      return "Please Enter an email";
    }
    RegExp emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegExp.hasMatch(value)) {
      return "Please enter a valid email";
    }
    return null;
  }

  String? validatePhoneNumber(value) {
    if (value!.isEmpty) {
      return "Please Enter a phone number";
    }
    if (value.length != 11) {
      return "Enter 11 digits";
    }
    return null;
  }

  String? validatePassword(value) {
    if (value!.isEmpty) {
      return "Please Enter a password";
    }
    return null;
  }
}
