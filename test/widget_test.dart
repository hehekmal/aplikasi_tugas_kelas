import 'dart:io';

void main() {
  List<String> n = ['a1', 'aa2', 'aaa3'];
  List<String> p = ['a', 'aa', 'aaa'];
  stdout.write('nama: ');
  String name = stdin.readLineSync()!;
  stdout.write('password: ');
  String password = stdin.readLineSync()!;
  stdout.write('cpassword: ');
  String cpassword = stdin.readLineSync()!;
  int a = 0;
  for (int i = 0; i < n.length; i++) {
    print('i$i');
    if (name == n[i]) {
      a = a;
    } else {
      a = a + 1;
    }
    print('a$a');

  }if(a==n.length&&password==cpassword){
    p.add(name);
    n.add(password);
  }
  print(n);
  print(p);
  print('nlength${n.length}');
}
