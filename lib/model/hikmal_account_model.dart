class HikmalAccountModel {
  late String nama;
  final String email;
  late String password;
  final String kelas;
  final bool ketuaKelas;

  HikmalAccountModel({
    required this.nama,
    required this.email,
    required this.password,
    required this.kelas,
    required this.ketuaKelas,
  });
}

List<HikmalAccountModel> accounts = [
  HikmalAccountModel(
    nama: 'hikmal',
    email: 'hek@gmail.com',
    password: 'h',
    kelas: 'X RPL 1',
    ketuaKelas: true,
  ),
  HikmalAccountModel(
    nama: 'chladiola',
    email: 'chla@gmail.com',
    password: 'c',
    kelas: 'X RPL 1',
    ketuaKelas: false,
  ),
];
