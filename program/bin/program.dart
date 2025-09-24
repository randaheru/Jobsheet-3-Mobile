import 'dart:io';
import 'dart:math';

void main() {
  Random random = Random();
  int target = random.nextInt(100) + 1; // Angka acak 1 - 100
  int kesempatan = 5;

  print("🎮 Game Tebak Angka (1 - 100)");
  print("Kamu punya $kesempatan kesempatan!\n");

  while (kesempatan > 0) {
    stdout.write("Masukkan tebakanmu: ");
    int tebakan = int.parse(stdin.readLineSync()!);

    if (tebakan == target) {
      print("🎉 Selamat! Angka benar adalah $target");
      break;
    } else if (tebakan > target) {
      print("⚠️ Terlalu besar!");
    } else {
      print("⚠️ Terlalu kecil!");
    }

    kesempatan--;

    if (kesempatan == 0) {
      print("\n😢 Kesempatan habis! Angka yang benar adalah $target");
    } else {
      print("Sisa kesempatan: $kesempatan\n");
    }
  }
}

/// Fungsi untuk menghitung faktorial
int faktorial(int n) {
  int hasil = 1;
  for (int i = 1; i <= n; i++) {
    hasil *= i;
  }
  return hasil;
}

/// Fungsi untuk cek bilangan prima
bool isPrima(int n) {
  if (n < 2) return false;
  for (int i = 2; i <= n ~/ 2; i++) {
    if (n % i == 0) return false;
  }
  return true;
}
