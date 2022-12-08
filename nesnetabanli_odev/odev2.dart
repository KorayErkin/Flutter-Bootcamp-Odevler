import 'dart:ffi';

class NesneTabanliProgramlamaOdev2 {
  
  /* Soru 1 */
  double cToF(int centigrade) {
    double F = (centigrade * 1.8) + 32;
    return F;
  }
  /* Soru 1 */


  /* Soru 2 */
  void cevreHesapla(int a, int b) {
    int cevreSonucu = 2 * (a + b);
    print("Dikdörtgenin Çevresi : $cevreSonucu");
  }
  /* Soru 2 */


  /* Soru 3 */
  void faktoriyelHesapla(int verilenSayi) {
    int faktoriyelDeger = 1;
    for (var i = 1; i <= verilenSayi; i++) {
      faktoriyelDeger = i * faktoriyelDeger;
    }
    print("$verilenSayi 'in Faktoriyeli : $faktoriyelDeger");
  }
  /* Soru 3 */


  /* Soru 4 */
  void Count(String word) {
    int count = 0;

    for (int i = 0; i < word.length; i++) {
      if (word[i] == "A" || word[i] == "a") {
        count++;
      }
    }
    return print("toplam a harfi sayısı : $count");
  }
  /* Soru 4 */


  /* Soru 5 */
  void aciGiriniz(int aci1, int aci2, int aci3) {
    int aciToplam = aci1 + aci2 + aci3;
    print(" - - - - - - - - - - - - - - - -");
    if (aciToplam == 180) {
      print("Toplam açı 180 olduğu için ÜÇGEN olur");
    } else {
      print("Toplam Açı : ${aciToplam} olduğu için ÜÇGEN olmaz");
    }
  }
  /* Soru 5 */


  /* Soru 6 */
  int Maas(int gun_sayisi) {
    int calisma_saati = gun_sayisi * 8;
    int maas = 0;
    int mesai_saati = calisma_saati - 150;
    int max_calisma_saati = 150;

    if (calisma_saati <= 150) {
      maas = calisma_saati * 40;
    }

    if (calisma_saati > 150) {
      maas = (mesai_saati * 80) + (max_calisma_saati * 40);
    }
    return maas;
  }
  /* Soru 6 */


  /* Soru 7 */
  int otopark(int saat) {
    int ucret = 0;
    ucret = ((saat - 1) * 10) + 50;
    return ucret;
  }
  /* Soru 7 */

}
