class TaskModel {
  final String judul;
  final bool selesai;
  final String isiTugas;
  final String tanggal;

  TaskModel({
    required this.judul,
    required this.selesai,
    required this.isiTugas,
    required this.tanggal,
  });
}

List<TaskModel> informatika = [
  TaskModel(
    judul: 'Tugas Flowchart',
    selesai: false,
    isiTugas:
        '1.    Buatlah flowchart untuk menyimpan nama, umur, dan tinggi badan seseorang, lalu tampilkan nilai-nilai tersebut. 2.    Buatlah flowchart untuk untuk menyimpan nilai PI (3.14) dan jari-jari lingkaran, lalu hitung dan tampilkan luas lingkaran.         Jika diketahui rumus Luas lingkaran = Pi * jari-jari * jari-jari. 3.    Buatlah flowchart untuk mengonversi suhu dari Celsius ke Fahrenheit dan Kelvin.         Program harus meminta input dari pengguna untuk suhu dalam Celsius.         Jika diketahui formula sbb:        fahrenheit = (celsius * 9/5) + 32        kelvin = celsius + 273.15 4.    Buatlah flowchart untuk mengetahui suatu bilangan bulat adalah genap. 5.    Buatlah flowchart untuk mengetahui suatu bilangan bulat adalah ganjil.',
    tanggal: '27/04/2026',
  ),
  TaskModel(
    judul: 'Keamanan Digital',
    selesai: false,
    isiTugas: 'Kerjakan tugas pada file dibawah ini',
    tanggal: '27/04/2026',
  ),
];
