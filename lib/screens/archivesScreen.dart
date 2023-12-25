import 'package:flutter/material.dart';

class ArchivesScreen extends StatelessWidget {
  const ArchivesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.book,
              size: 30,
            ),
            SizedBox(width: 8),
            Text("Archives"),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              
              Container(
                margin: EdgeInsets.only(bottom: 20),
                child: Center(
                  child: Image.asset(
                    'lib/assets/images/gow.webp',
                    width: 400,
                    height: 400,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              
              Center(
                child: Text(
                  "God of War: Ragnarök, Ragnarök kapıdayken cevap arayışında çıkacakları bu mistik serüvende Kratos ve Atreus'a katılın. Baba oğul, canlarını dişlerine takıp Dokuz Diyarın dokuzunu da keşfetmek zorunda.",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey[700],
                    letterSpacing: 1.2,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 40), 
              Container(
                margin: EdgeInsets.only(bottom: 20),
                child: Center(
                  child: Image.asset(
                    'lib/assets/images/re2.jpeg',
                    width: 400,
                    height: 400,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
             
              Center(
                child: Text(
                  "Raccoon City'deki biyolojik felaketin üzerinden altı yıl geçti. Olaydan kurtulanlardan biri olan Ajan Leon S. Kennedy, başkanın kaçırılmış kızını kurtarmaya gönderildi. Leon, kızın izini uzak bir Avrupa köyüne kadar takip etti. Buradaki yerlilerde korkunç derecede yanlış giden bir şeyler var ve yaşam, ölüm, dehşet ve arınmanın bir araya geldiği bu cesur kurtarma ve korku hikayesinde perdeler açılıyor",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey[700],
                    letterSpacing: 1.2,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 40), 
              Container(
                margin: EdgeInsets.only(bottom: 20),
                child: Center(
                  child: Image.asset(
                    'lib/assets/images/spider.jpg',
                    width: 400,
                    height: 400,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              
              Center(
                child: Text(
                  "Şehri, birbirlerini ve sevdiklerini gaddar Venom'dan ve tehlikeli yeni sembiyot tehdidinden kurtarmak için savaşan Örümcek Adam Peter Parker ve Miles Morales, hem maskeyle hem de maskesizken benzersiz bir güç sınavıyla karşı karşıya kalıyor.",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey[700],
                    letterSpacing: 1.2,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 40), 
               Container(
                margin: EdgeInsets.only(bottom: 20),
                child: Center(
                  child: Image.asset(
                    'lib/assets/images/unc.jpg',
                    width: 400,
                    height: 400,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              
              Center(
                child: Text(
                  "Son macerasından birkaç yıl sonra, emekliye ayrılmış hazine avcısı Nathan Drake hırsızların dünyasına geri dönmeye zorlanır.",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey[700],
                    letterSpacing: 1.2,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 40),

              Container(
                margin: EdgeInsets.only(bottom: 20),
                child: Center(
                  child: Image.asset(
                    'lib/assets/images/tlou2.webp',
                    width: 400,
                    height: 400,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              
              Center(
                child: Text(
                  "Hastalıklıların ve acımasız afetzedelerin dört bir yanda kol gezdiği yıkıma uğramış bir uygarlıkta hayattan nasibini almış olan baş karakter Joel, 14 yaşındaki Ellie'yi askerî karantina bölgesinden çıkarması için tutulur. Başta küçük bir mesele gibi görünen bu iş, ülke boyunca devam eden amansız bir yolculuğa dönüşür.",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey[700],
                    letterSpacing: 1.2,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 40),

              Container(
                margin: EdgeInsets.only(bottom: 20),
                child: Center(
                  child: Image.asset(
                    'lib/assets/images/horizon.jpg',
                    width: 400,
                    height: 400,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              
              Center(
                child: Text(
                  "Bilinmeyen yeni tehlikelerle dolu ölüm sınır bölgesi olan Yasak Batı’da verdiği mücadelede Aloy’a katıl",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey[700],
                    letterSpacing: 1.2,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
