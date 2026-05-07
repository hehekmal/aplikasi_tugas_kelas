class AccountModel {
  final String name;
  final String email;
  final String password;
  final String kelas;

  AccountModel({
    required this.name,
    required this.email,
    required this.password,
    required this.kelas,
  });
}

List<AccountModel> accounts = [
  AccountModel(
    name: 'hehekmal',
    email: 'nd@gmail.com',
    password: 'chlo',
    kelas: '10 rpl 1',
  ),
];
