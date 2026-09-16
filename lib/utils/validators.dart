class Validators {
  static final RegExp _emailRegex = RegExp(r'^[\w.+-]+@[\w-]+\.[a-zA-Z]{2,}$');

  //Name required.
  static String? validateName(String value) {
    if (value.trim().isEmpty) {
      return 'Please enter your name';
    }
    return null;
  }

  //Email — required + valid format.
  static String? validateEmail(String value) {
    if (value.trim().isEmpty || !_emailRegex.hasMatch(value.trim())) {
      return 'Please enter a valid email';
    }
    return null;
  }

  //Password — required + minimum 8 characters.
  static String? validatePassword(String value) {
    if (value.isEmpty || value.length < 8) {
      return 'Password must be at least 8 characters';
    }
    return null;
  }

  //Confirm Password — required + must match Password.
  static String? validateConfirmPassword(
    String confirmValue,
    String passwordValue,
  ) {
    if (confirmValue.isEmpty || confirmValue != passwordValue) {
      return 'Passwords do not match';
    }
    return null;
  }
}