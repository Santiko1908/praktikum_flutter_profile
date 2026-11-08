import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:praktikum_flutter4/main.dart'; // Sesuaikan nama package Anda

void main() {
  testWidgets('Menampilkan halaman profil pengguna', (
    WidgetTester tester,
  ) async {
    // Menjalankan aplikasi
    await tester.pumpWidget(const MainApp());

    // Memastikan judul AppBar tampil
    expect(find.text('Profil Pengguna'), findsOneWidget);

    // Memastikan nama pengguna tampil
    expect(find.text('I Ketut Gunawan, S.Kom, M.T.I.'), findsOneWidget);

    // Memastikan role/peran tampil
    expect(find.text('Senior Backend Engineer & Dosen'), findsOneWidget);

    // Memastikan tombol Edit Profil ada
    expect(find.text('Edit Profil'), findsOneWidget);
  });

  testWidgets('Halaman profil tidak overflow pada layar pendek', (
    WidgetTester tester,
  ) async {
    // Mengatur simulasi ukuran layar kecil (misalnya HP jadul/kecil)
    tester.view.physicalSize = const Size(320, 400);
    tester.view.devicePixelRatio = 1.0;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);

    await tester.pumpWidget(const MainApp());

    // Memastikan tidak ada exception (seperti RenderFlex overflow)
    expect(tester.takeException(), isNull);
    
    // Memastikan menggunakan SingleChildScrollView agar aman di layar kecil
    expect(find.byType(SingleChildScrollView), findsOneWidget);
  });
}