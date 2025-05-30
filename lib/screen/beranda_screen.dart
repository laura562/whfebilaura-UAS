import 'package:flutter/material.dart';
import 'package:whazlansaja/screen/pesan_screen.dart';

class BerandaScreen extends StatefulWidget {
  const BerandaScreen({super.key});

  @override
  State<BerandaScreen> createState() => _BerandaScreenState();
}

class _BerandaScreenState extends State<BerandaScreen> {
  final List<Map<String, dynamic>> _dosenList = [
    {
      "id": 1,
      "full_name": "Azlan, S.Kom., M.Kom.",
      "avatar": "assets/gambar_dosen/Azlan, S.Kom., M.Kom.jpg",
      "messages": [
        {"from": 1, "message": "Selamat pagi, ada yang bisa saya bantu?"},
        {
          "from": 0,
          "message": "Selamat pagi pak, saya ingin bertanya soal tugas."
        },
        {"from": 0, "message": "Apakah tugasnya dikumpulkan besok?"},
        {"from": 1, "message": "Tidak nak, batas akhir adalah lusa."}
      ]
    },
    {
      "id": 2,
      "full_name": "Badrul Anwar, S.E., S.Kom., M.Kom.",
      "avatar": "assets/gambar_dosen/Badrul Anwar, S.E., S.Kom., M.Kom..jpg",
      "messages": []
    },
    {
      "id": 3,
      "full_name": "Dr. Dicky Nofriansyah, S.Kom., M.Kom.",
      "avatar": "assets/gambar_dosen/Dr. Dicky Nofriansyah, S.Kom., M.Kom..jpg",
      "messages": [
        {"from": 1, "message": "Sudah dapat kelompoknya?"},
        {"from": 0, "message": "Sudah pak, kami satu kelompok dengan Rini."}
      ]
    },
    {
      "id": 4,
      "full_name": "Dr. Rudi Gunawan, S.E., M.Si.",
      "avatar": "assets/gambar_dosen/Dr. Rudi Gunawan, S.E., M.Si..jpg",
      "messages": [
        {
          "from": 0,
          "message":
              "Pagi pak, sudah saya siapkan apa yang kita diskusi kemaren pak."
        },
        {"from": 1, "message": "Oke. Besok langsung presentasi ya."},
        {"from": 0, "message": "iya pak."}
      ]
    },
    {
      "id": 5,
      "full_name": "Dra. Sri Kusnasari, M.Hum.",
      "avatar": "assets/gambar_dosen/Dra. Sri Kusnasari, M.Hum.jpg",
      "messages": [
        {"from": 1, "message": "Materi minggu ini sudah saya upload."},
        {"from": 0, "message": "Baik bu, terima kasih informasinya."}
      ]
    },
    {
      "id": 6,
      "full_name": "Drs. Sobirin, S.H., M.Si.",
      "avatar": "assets/gambar_dosen/Drs. Sobirin, S.H., M.Si..jpg",
      "messages": []
    },
    {
      "id": 7,
      "full_name": "Hendra Jaya, S.Kom., M.Kom.",
      "avatar": "assets/gambar_dosen/Hendra Jaya, S.Kom., M.Kom..jpg",
      "messages": [
        {"from": 1, "message": "Apakah sudah install Flutter?"},
        {"from": 0, "message": "Sudah pak, sedang coba-coba sekarang."}
      ]
    },
    {
      "id": 8,
      "full_name": "Hendryan Winata, S.Kom., M.Kom.",
      "avatar": "assets/gambar_dosen/Hendryan Winata, S.Kom., M.Kom.jpg",
      "messages": [
        {"from": 1, "message": "Tugas desain UI dikumpulkan minggu ini."},
        {"from": 0, "message": "Oke pak, kami sedang proses."}
      ]
    },
    {
      "id": 9,
      "full_name": "Iskandar Zulkarnain, S.T., M.Kom.",
      "avatar": "assets/gambar_dosen/Iskandar Zulkarnain, S.T., M.Kom..jpg",
      "messages": [
        {"from": 1, "message": "Bagaimana hasil praktikum kemarin?"},
        {"from": 0, "message": "Berhasil pak, semua fitur jalan."}
      ]
    },
    {
      "id": 10,
      "full_name": "Ismawardi Santoso, S.Pd., MS.",
      "avatar": "assets/gambar_dosen/Ismawardi Santoso, S.Pd., MS.jpg",
      "messages": [
        {"from": 1, "message": "Silakan buka referensi dari e-book."},
        {"from": 0, "message": "Baik pak, akan saya baca malam ini."}
      ]
    },
    {
      "id": 11,
      "full_name": "Muhammad Dahria, S.Kom., M.Kom.",
      "avatar": "assets/gambar_dosen/Muhammad Dahria, S.E., S.Kom., M.Kom..jpg",
      "messages": [
        {"from": 1, "message": "Ada pertanyaan soal project final?"},
        {"from": 0, "message": "Iya pak, boleh saya konsultasi besok?"}
      ]
    },
    {
      "id": 12,
      "full_name": "Muhammad Syahril, S.Kom., M.Kom.",
      "avatar": "assets/gambar_dosen/Muhammad Syahril, SE., M.Kom..jpg",
      "messages": [
        {"from": 1, "message": "Jangan lupa baca modul 4."},
        {"from": 0, "message": "Oke pak, terima kasih."}
      ]
    },
    {
      "id": 13,
      "full_name": "Mukhlis Ramadhan, S.Kom.",
      "avatar": "assets/gambar_dosen/Mukhlis Ramadhan, S.E., M.Kom..jpg",
      "messages": [
        {"from": 1, "message": "Sudah coba fitur Livewire?"},
        {"from": 0, "message": "Baru mulai pak, lumayan seru."}
      ]
    },
    {
      "id": 14,
      "full_name": "Rini Kustini, S.S., MS.",
      "avatar": "assets/gambar_dosen/Rini Kustini, S.S., MS..jpg",
      "messages": [
        {"from": 1, "message": "Bacaan minggu depan sudah saya kirim."},
        {"from": 0, "message": "Terima kasih bu, sudah saya terima."}
      ]
    },
    {
      "id": 15,
      "full_name": "Saiful Nur Arif, S.E., S.Kom., M.Kom.",
      "avatar": "assets/gambar_dosen/Saiful Nur Arif, S.E., S.Kom., M.Kom..jpg",
      "messages": [
        {"from": 1, "message": "Kapan bisa diskusi tugas akhir?"},
        {"from": 0, "message": "Saya siap hari Kamis pak."}
      ]
    },
    {
      "id": 16,
      "full_name": "Zulkifli Lubis, S.E., MM.",
      "avatar": "assets/gambar_dosen/Zulkifli Lubis, S.E., MM..jpg",
      "messages": [
        {"from": 1, "message": "Sudah isi kuis kehadiran?"},
        {"from": 0, "message": "Sudah pak, barusan saya submit."}
      ]
    }
    // Tambahkan entri lainnya seperti di atas...
  ];

  String getLastMessage(List messages) {
    if (messages.isNotEmpty) {
      return messages.last['message'];
    }
    return 'Belum ada chat';
  }

  void _updateDosenList(Map<String, dynamic> updatedDosen) {
    final index =
        _dosenList.indexWhere((dosen) => dosen['id'] == updatedDosen['id']);
    if (index != -1) {
      setState(() {
        _dosenList[index] = updatedDosen;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        title: const Text(
          'WhAzlansaja',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.camera_enhance)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(80),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10, left: 12, right: 12),
            child: SearchAnchor.bar(
              barElevation: const WidgetStatePropertyAll(2),
              barHintText: 'Cari dosen dan mulai chat',
              suggestionsBuilder: (context, controller) {
                return <Widget>[
                  const Center(child: Text('Belum ada pencarian')),
                ];
              },
            ),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: _dosenList.length,
        itemBuilder: (context, index) {
          final dosen = _dosenList[index];
          return ListTile(
            onTap: () async {
              final newMessage = await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PesanScreen(dosenData: dosen),
                ),
              );

              // Jika pesan baru dikirim, perbarui daftar dosen
              if (newMessage != null) {
                final updatedDosen = {...dosen}; // Buat salinan dosen yang ada
                updatedDosen['messages'] = [
                  ...updatedDosen['messages'],
                  newMessage
                ];
                _updateDosenList(updatedDosen);
              }
            },
            leading: CircleAvatar(
              backgroundImage: AssetImage(dosen['avatar']),
            ),
            title: Text(dosen['full_name']),
            subtitle: Text(getLastMessage(dosen['messages'])),
            trailing: const Text('Kemarin'), // Placeholder waktu
          );
        },
      ),
      floatingActionButton: FloatingActionButton.small(
        onPressed: () {},
        child: const Icon(Icons.add_comment),
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: 0,
        destinations: const [
          NavigationDestination(icon: Icon(Icons.chat), label: 'Chat'),
          NavigationDestination(icon: Icon(Icons.sync), label: 'Pembaruan'),
          NavigationDestination(icon: Icon(Icons.groups), label: 'Komunitas'),
          NavigationDestination(icon: Icon(Icons.call), label: 'Panggilan'),
        ],
      ),
    );
  }
}
