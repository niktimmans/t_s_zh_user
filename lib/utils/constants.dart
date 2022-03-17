class Constants {
  Constants._();

  static const Duration buttonDuration = Duration(milliseconds: 300);
  static const Duration likeEventLoop = Duration(milliseconds: 17);
  static const Duration requestDuration = Duration(seconds: 3);

  static String passwordRegex =
      r"(?=.*[0-9])(?=.*[a-z]).{8,}$"; //(?=.*[A-Z])(?=.*[!@#$%^&()?,./\|*№;:])
  static String emailRegex = r"^[a-zA-Z0-9._-]+@[a-zA-Z0-9._-]+\.[a-zA-Z]+";

  static const String signIn = 'SIGN_IN';

  static const String signInWithNewRole = 'SIGN_IN_WITH_NEW_ROLE';

  static const String signUp = 'SIGN_UP';

  static const String closed = 'CLOSED';

  static const String active = 'ACTIVE';
}

