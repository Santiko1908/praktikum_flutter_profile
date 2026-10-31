import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:praktikum_flutter4/main.dart';

void main() {
  testWidgets('Menampilkan halaman profil mahasiswa', (
    WidgetTester tester,
  ) async {
    // Menjalankan aplikasi
    await tester.pumpWidget(const MainApp());

    // Memastikan judul halaman tampil
    expect(find.text('Profil Mahasiswa'), findsOneWidget);

    // Memastikan nama mahasiswa tampil
    expect(find.text('Angger Santiko'), findsOneWidget);

    // Memastikan program studi tampil
    expect(find.text('Teknik Informatika'), findsOneWidget);

    // Memastikan informasi email tampil
    expect(find.text('angger@email.com'), findsOneWidget);
  });

  testWidgets('Halaman profil tidak overflow pada layar pendek', (
    WidgetTester tester,
  ) async {
    tester.view.physicalSize = const Size(320, 400);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);

    await tester.pumpWidget(const MainApp());

    expect(tester.takeException(), isNull);
    expect(find.byType(SingleChildScrollView), findsOneWidget);
  });
}
