class HikmalAccountModel {
  late String nama;
  final String email;
  late String password;
  final String kelas;
  final int kelasId;
  final bool ketuaKelas;

  HikmalAccountModel({
    required this.nama,
    required this.email,
    required this.password,
    required this.kelas,
    required this.kelasId,
    required this.ketuaKelas,
  });
}
