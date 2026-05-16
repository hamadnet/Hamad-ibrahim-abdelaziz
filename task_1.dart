# section2.dart
import 'dart:io';

void main() {
  print("Enter degree:");

  int degree = int.parse(stdin.readLineSync()!);


    switch (degree) {
      case >= 95 && <= 100:
        print("+A");
        break;

      case >= 90 && < 95:
        print("-A");
        break;

      case >= 85 && < 90:
        print("+B");
        break;

      case >= 80 && < 85:
        print("-B");
        break;

      case >= 75 && < 80:
        print("+C");
        break;

      case >= 70 && < 75:
        print("-C");
        break;

      case >= 65 && < 70:
        print("+D");
        break;

      case >= 60 && < 65:
        print("-D");
        break;

      default:
        print("F");
    }
   

  
  }
