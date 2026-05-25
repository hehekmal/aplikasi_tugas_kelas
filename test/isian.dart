Column(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: [
Column(
children: [
Text(
'Daftar',
style: TextStyle(
color: Colors.white,
fontSize: 50,
fontWeight: FontWeight.bold,
),
),
Row(
children: [
SizedBox(width: 25),
Text('Nama:', style: TextStyle(color: Colors.white)),
],
),
TextField(
controller: nama,
decoration: InputDecoration(
filled: true,
fillColor: Colors.grey.shade200,
border: OutlineInputBorder(
borderRadius: BorderRadius.only(
bottomLeft: Radius.circular(10),
topRight: Radius.circular(10),
bottomRight: Radius.circular(10),
),
),
),
),
Row(
children: [
SizedBox(width: 25),
Text('Email:', style: TextStyle(color: Colors.white)),
],
),
TextField(
controller: email,
decoration: InputDecoration(
filled: true,
fillColor: Colors.grey.shade200,
border: OutlineInputBorder(
borderRadius: BorderRadius.only(
bottomLeft: Radius.circular(10),
topRight: Radius.circular(10),
bottomRight: Radius.circular(10),
),
),
),
),
Row(
children: [
SizedBox(width: 25),
Text(
'Password:',
style: TextStyle(color: Colors.white),
),
],
),
TextField(
controller: password,
obscureText: pw,
decoration: InputDecoration(
suffix: IconButton(
onPressed: () {
setState(() {
pw = !pw;
});
},
icon: Icon(
pw
? Icons.remove_red_eye
    : Icons.remove_red_eye_outlined,
),
),
filled: true,
fillColor: Colors.grey.shade200,
border: OutlineInputBorder(
borderRadius: BorderRadius.only(
bottomLeft: Radius.circular(10),
topRight: Radius.circular(10),
bottomRight: Radius.circular(10),
),
),
),
),
Row(
children: [
SizedBox(width: 25),
Text(
'Konfirmasi Password:',
style: TextStyle(color: Colors.white),
),
],
),
TextField(
controller: passwordConfirm,
obscureText: pwC,
decoration: InputDecoration(
suffix: IconButton(
onPressed: () {
setState(() {
pwC = !pwC;
});
},
icon: Icon(
pwC
? Icons.remove_red_eye
    : Icons.remove_red_eye_outlined,
),
),
filled: true,
fillColor: Colors.grey.shade200,
border: OutlineInputBorder(
borderRadius: BorderRadius.only(
bottomLeft: Radius.circular(10),
topRight: Radius.circular(10),
bottomRight: Radius.circular(10),
),
),
),
),
Row(
children: [
akunAda
? Text(
'akun sudah ada',
style: TextStyle(color: Colors.red),
)
    : Container(),
],
),
SizedBox(height: 10),
Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: [
Row(
children: [
Checkbox(
value: ketuaKelas,
onChanged: (value) {
setState(() {
ketuaKelas = value;
});
},
activeColor: Colors.green,
),
Text(
'Ketua Kelas',
style: TextStyle(color: Colors.white),
),
],
),
DropdownMenu(
menuHeight: 200,
textStyle: TextStyle(color: Colors.white),
inputDecorationTheme: InputDecorationTheme(
suffixIconColor: Colors.white,
filled: true,
fillColor: Colors.deepPurple.shade900,
hintStyle: TextStyle(color: Colors.white),
),
dropdownMenuEntries: pilihkelas,
hintText: 'Kelas',
controller: kelas,
onSelected: (value) {
setState(() {
kelaspilihan = kelas.text;
});
},
),
],
),
],
),
Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: [
TextButton(
onPressed: () {
Navigator.push(
context,
MaterialPageRoute(
builder: (context) => ChlaLoginPage(),
),
);
},
child: Text(
'login?',
style: TextStyle(color: Colors.white),
),
),
ElevatedButton(
onPressed: () {
setState(() {
for (int i = 0; i < accounts.length; i++) {
if (nama.text == accounts[i].nama) {
a = a + 0;
} else {
a = a + 1;
}
}
if (a == accounts.length &&
password.text == passwordConfirm.text) {
accounts.add(
HikmalAccountModel(
nama: nama.text,
email: email.text,
password: password.text,
kelas: kelas.text,
ketuaKelas: ketuaKelas!,
),
);
Navigator.pushReplacement(
context,
MaterialPageRoute(
builder: (context) =>
ChlaHomePage(id: accounts.length - 1),
),
);
a = 0;
} else {
akunAda = true;
a = 0;
}
});
},
child: Text(
'Daftar',
style: TextStyle(color: Colors.white),
),
style: ButtonStyle(
elevation: WidgetStatePropertyAll(5),
shadowColor: WidgetStatePropertyAll(Colors.black),
backgroundColor: WidgetStatePropertyAll(
Colors.lightBlueAccent,
),
),
),
],
),
],
),