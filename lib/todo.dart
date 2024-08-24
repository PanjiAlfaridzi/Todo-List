class Todo {
  int? id;
  String nama;
  String deskripsi;
  bool done;

  Todo(this.nama, this.deskripsi, {this.done = false, this.id});

  static List<Todo> dummyData = [
    Todo('Latihan Menggambar', 'Latihan menggambar mobil'),
    Todo('Makan malam', 'Makan malam dengan ayam goreng', done: true),
    Todo('Nyanyi Bersama', 'Nyanyi bersama teman'),
  ];

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'nama': nama,
      'deskripsi': deskripsi,
      'done': done ? 1 : 0, // Simpan sebagai integer (0 atau 1)
    };
  }

  factory Todo.fromMap(Map<String, dynamic> map) {
    return Todo(
      map['nama'] as String,
      map['deskripsi'] as String,
      done: map['done'] == 1, // Ambil sebagai integer (0 atau 1)
      id: map['id'],
    );
  }
}
