import 'dart:io';
import 'dart:math';

void main() {
  Random random = Random();
  int target = random.nextInt(100) + 1; // Angka 1 - 100
  int tebakan;
  int kesempatan = 5;

  print("🎮 Game Tebak Angka (1 - 100)");
  print("Kamu punya $kesempatan kesempatan!");

  while (kesempatan > 0) {
    stdout.write("Masukkan tebakanmu: ");
    tebakan = int.parse(stdin.readLineSync()!);

    if (tebakan == target) {
      print("🎉 Selamat! Angka benar adalah $target");
      break;
    } else if (tebakan > target) {
      print("Terlalu besar!");
    } else {
      print("Terlalu kecil!");
    }

    kesempatan--;

    if (kesempatan == 0) {
      print("😢 Kesempatan habis! Angka yang benar adalah $target");
    } else {
      print("Sisa kesempatan: $kesempatan\n");
    }
  }
}
