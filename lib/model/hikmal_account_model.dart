class HikmalAccountModel {
  late  String nama;
  final String email;
  late String password;

  HikmalAccountModel({required this.nama, required this.email, required this.password});
}

List<HikmalAccountModel> akun = [
  HikmalAccountModel(nama: 'hikmal', email: 'email@gmail.com', password: 'h'),
  HikmalAccountModel(nama: 'chladiola', email: 'email@gmail.com', password: 'c'),
];
