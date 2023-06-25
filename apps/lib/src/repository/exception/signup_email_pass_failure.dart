class SignUpEmailPassFailure {
  final String msg;

  const SignUpEmailPassFailure([this.msg = "An Unkown error occured "]);

  factory SignUpEmailPassFailure.code(String code) {
    switch (code) {
      case 'weak Password ':
        return SignUpEmailPassFailure('Please Enter a stronger password ');

              case 'invalid-email':
        return SignUpEmailPassFailure('Email is not vaid or baldy formatted ');

              case 'email-already -in use ':
        return SignUpEmailPassFailure('An account already exists for that email.');

              case 'user-disabled':
        return SignUpEmailPassFailure('This user has been disabled .Please contact suuport for help');
        
      default:
        return SignUpEmailPassFailure();
    }
  }
}
