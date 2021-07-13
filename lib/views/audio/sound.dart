
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:just_audio/just_audio.dart';

import 'package:audio_session/audio_session.dart';
import 'controller_buttons.dart';
import 'mp3_list_tile.dart';

class Mp3Page extends StatefulWidget {
  @override
  _Mp3PageState createState() => _Mp3PageState();
}

class _Mp3PageState extends State<Mp3Page> {
  AudioPlayer _player;
  ConcatenatingAudioSource _playlist = ConcatenatingAudioSource(
      children: [
       LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(seconds: 52),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/001.mp3")),
        tag: AudioMetadata(title: "الفاتحة"),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          hours: 2,
          minutes: 16,
          seconds: 58,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/002.mp3")),
        tag: AudioMetadata(
          title: "البقرة",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          hours: 2,
          minutes: 16,
          seconds: 58,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/003.mp3")),
        tag: AudioMetadata(
          title: "ال عمران",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          hours: 1,
          minutes: 26,
          seconds: 47,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/004.mp3")),
        tag: AudioMetadata(
          title: "النساء",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          hours: 1,
          minutes: 7,
          seconds: 16,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/005.mp3")),
        tag: AudioMetadata(
          title: "المائدة",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          hours: 1,
          minutes: 6,
          seconds: 41,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/006.mp3")),
        tag: AudioMetadata(
          title: "الانعام",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          hours: 1,
          minutes: 12,
          seconds: 50,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/007.mp3")),
        tag: AudioMetadata(
          title: "الاعراف",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          minutes: 29,
          seconds: 43,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/008.mp3")),
        tag: AudioMetadata(
          title: "الانفال",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          minutes: 54,
          seconds: 9,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/009.mp3")),
        tag: AudioMetadata(
          title: "التوبه",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          minutes: 43,
          seconds: 24,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/010.mp3")),
        tag: AudioMetadata(
          title: "يونس",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          minutes: 47,
          seconds: 57,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/011.mp3")),
        tag: AudioMetadata(
          title: "هود",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          minutes: 45,
          seconds: 1,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/012.mp3")),
        tag: AudioMetadata(
          title: "يوسف",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          minutes: 19,
          seconds: 14,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/013.mp3")),
        tag: AudioMetadata(
          title: "الرعد",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          minutes: 18,
          seconds: 38,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/014.mp3")),
        tag: AudioMetadata(
          title: "ابراهيم",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          minutes: 14,
          seconds: 17,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/015.mp3")),
        tag: AudioMetadata(
          title: "الحجر",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          minutes: 37,
          seconds: 10,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/016.mp3")),
        tag: AudioMetadata(
          title: "النحل",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          minutes: 32,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/017.mp3")),
        tag: AudioMetadata(
          title: "الاسراء",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          minutes: 35,
          seconds: 2,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/018.mp3")),
        tag: AudioMetadata(
          title: "الكهف",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          minutes: 21,
          seconds: 5,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/019.mp3")),
        tag: AudioMetadata(
          title: "مريم",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          minutes: 27,
          seconds: 7,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/020.mp3")),
        tag: AudioMetadata(
          title: "طه",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          minutes: 28,
          seconds: 40,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/021.mp3")),
        tag: AudioMetadata(
          title: "الانبياء",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          minutes: 27,
          seconds: 38,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/022.mp3")),
        tag: AudioMetadata(
          title: "الحج",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          minutes: 23,
          seconds: 43,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/023.mp3")),
        tag: AudioMetadata(
          title: "المؤمنون",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          minutes: 29,
          seconds: 12,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/024.mp3")),
        tag: AudioMetadata(
          title: "النور",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          minutes: 18,
          seconds: 2,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/025.mp3")),
        tag: AudioMetadata(
          title: "الفرقان",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          minutes: 26,
          seconds: 57,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/026.mp3")),
        tag: AudioMetadata(
          title: "الشعراء",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          minutes: 24,
          seconds: 28,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/027.mp3")),
        tag: AudioMetadata(
          title: "النمل",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          minutes: 29,
          seconds: 35,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/028.mp3")),
        tag: AudioMetadata(
          title: "القصص",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          minutes: 20,
          seconds: 44,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/029.mp3")),
        tag: AudioMetadata(
          title: "العنكبوت",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          minutes: 17,
          seconds: 13,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/030.mp3")),
        tag: AudioMetadata(
          title: "الروم",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          minutes: 10,
          seconds: 43,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/031.mp3")),
        tag: AudioMetadata(
          title: "لقمان",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          minutes: 7,
          seconds: 28,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/032.mp3")),
        tag: AudioMetadata(
          title: "السجدة",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          minutes: 27,
          seconds: 37,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/033.mp3")),
        tag: AudioMetadata(
          title: "الاحزاب",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          minutes: 18,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/034.mp3")),
        tag: AudioMetadata(
          title: "سبأ",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          minutes: 16,
          seconds: 40,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/035.mp3")),
        tag: AudioMetadata(
          title: "فاطر",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          minutes: 15,
          seconds: 53,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/036.mp3")),
        tag: AudioMetadata(
          title: "يس",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          minutes: 20,
          seconds: 54,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/037.mp3")),
        tag: AudioMetadata(
          title: "الصافات",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          minutes: 16,
          seconds: 39,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/038.mp3")),
        tag: AudioMetadata(
          title: "ص",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          minutes: 25,
          seconds: 6,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/039.mp3")),
        tag: AudioMetadata(
          title: "الزمر",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          minutes: 23,
          seconds: 58,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/040.mp3")),
        tag: AudioMetadata(
          title: "غافر",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          minutes: 16,
          seconds: 11,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/041.mp3")),
        tag: AudioMetadata(
          title: "فصلت",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          minutes: 16,
          seconds: 53,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/042.mp3")),
        tag: AudioMetadata(
          title: "الشوري",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          minutes: 17,
          seconds: 4,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/043.mp3")),
        tag: AudioMetadata(
          title: "الزخرف",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          minutes: 7,
          seconds: 11,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/044.mp3")),
        tag: AudioMetadata(
          title: "الدخان",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          minutes: 9,
          seconds: 42,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/045.mp3")),
        tag: AudioMetadata(
          title: "الجاثية",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          minutes: 12,
          seconds: 2,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/046.mp3")),
        tag: AudioMetadata(
          title: "الأحقاف",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          minutes: 10,
          seconds: 45,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/047.mp3")),
        tag: AudioMetadata(
          title: "محمد",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          minutes: 12,
          seconds: 3,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/048.mp3")),
        tag: AudioMetadata(
          title: "الفتح",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          minutes: 7,
          seconds: 49,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/049.mp3")),
        tag: AudioMetadata(
          title: "الحجرات",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          minutes: 7,
          seconds: 26,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/050.mp3")),
        tag: AudioMetadata(
          title: "ق",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          minutes: 7,
          seconds: 18,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/051.mp3")),
        tag: AudioMetadata(
          title: "الذاريات",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          minutes: 6,
          seconds: 16,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/052.mp3")),
        tag: AudioMetadata(
          title: "الطور",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          minutes: 7,
          seconds: 2,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/053.mp3")),
        tag: AudioMetadata(
          title: "النجم",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          minutes: 7,
          seconds: 33,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/054.mp3")),
        tag: AudioMetadata(
          title: "القمر",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          minutes: 8,
          seconds: 53,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/055.mp3")),
        tag: AudioMetadata(
          title: "الرحمن",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          minutes: 10,
          seconds: 27,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/056.mp3")),
        tag: AudioMetadata(
          title: "الواقعة",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          minutes: 14,
          seconds: 7,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/057.mp3")),
        tag: AudioMetadata(
          title: "الحديد",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          minutes: 9,
          seconds: 55,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/058.mp3")),
        tag: AudioMetadata(
          title: "المجادلة",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          minutes: 9,
          seconds: 31,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/059.mp3")),
        tag: AudioMetadata(
          title: "الحشر",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          minutes: 7,
          seconds: 50,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/060.mp3")),
        tag: AudioMetadata(
          title: "الممتحنة",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          minutes: 4,
          seconds: 26,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/061.mp3")),
        tag: AudioMetadata(
          title: "الصف",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          minutes: 3,
          seconds: 29,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/062.mp3")),
        tag: AudioMetadata(
          title: "الجمعة",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          minutes: 3,
          seconds: 48,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/063.mp3")),
        tag: AudioMetadata(
          title: "المنافقون",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          minutes: 4,
          seconds: 46,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/064.mp3")),
        tag: AudioMetadata(
          title: "التغابن",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          minutes: 6,
          seconds: 15,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/065.mp3")),
        tag: AudioMetadata(
          title: "الطلاق",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          minutes: 6,
          seconds: 7,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/066.mp3")),
        tag: AudioMetadata(
          title: "التحريم",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          minutes: 6,
          seconds: 57,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/067.mp3")),
        tag: AudioMetadata(
          title: "الملك",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          minutes: 7,
          seconds: 8,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/068.mp3")),
        tag: AudioMetadata(
          title: "القلم",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          minutes: 6,
          seconds: 34,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/069.mp3")),
        tag: AudioMetadata(
          title: "الحاقة",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          minutes: 5,
          seconds: 30,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/070.mp3")),
        tag: AudioMetadata(
          title: "المعارج",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          minutes: 5,
          seconds: 32,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/071.mp3")),
        tag: AudioMetadata(
          title: "نوح",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          minutes: 6,
          seconds: 17,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/072.mp3")),
        tag: AudioMetadata(
          title: "الجن",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          minutes: 4,
          seconds: 32,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/073.mp3")),
        tag: AudioMetadata(
          title: "المزمل",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          minutes: 6,
          seconds: 14,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/074.mp3")),
        tag: AudioMetadata(
          title: "المدثر",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          minutes: 3,
          seconds: 55,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/075.mp3")),
        tag: AudioMetadata(
          title: "القيامة",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          minutes: 6,
          seconds: 39,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/076.mp3")),
        tag: AudioMetadata(
          title: "الإنسان",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          minutes: 5,
          seconds: 16,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/077.mp3")),
        tag: AudioMetadata(
          title: "المرسلات",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          minutes: 5,
          seconds: 16,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/078.mp3")),
        tag: AudioMetadata(
          title: "النبأ",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          minutes: 4,
          seconds: 57,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/079.mp3")),
        tag: AudioMetadata(
          title: "النازعات",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          minutes: 3,
          seconds: 56,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/080.mp3")),
        tag: AudioMetadata(
          title: "عبس",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          minutes: 2,
          seconds: 45,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/081.mp3")),
        tag: AudioMetadata(
          title: "التكوير",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          minutes: 2,
          seconds: 9,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/082.mp3")),
        tag: AudioMetadata(
          title: "الانفطار",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          hours: 2,
          minutes: 16,
          seconds: 58,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/083.mp3")),
        tag: AudioMetadata(
          title: "المطففين",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          minutes: 2,
          seconds: 58,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/084.mp3")),
        tag: AudioMetadata(
          title: "الانشقاق",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          minutes: 2,
          seconds: 59,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/085.mp3")),
        tag: AudioMetadata(
          title: "البروج",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          minutes: 1,
          seconds: 45,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/086.mp3")),
        tag: AudioMetadata(
          title: "الطارق",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          minutes: 1,
          seconds: 45,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/087.mp3")),
        tag: AudioMetadata(
          title: "الأعلي",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          minutes: 2,
          seconds: 31,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/088.mp3")),
        tag: AudioMetadata(
          title: "الغاشية",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          minutes: 3,
          seconds: 48,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/089.mp3")),
        tag: AudioMetadata(
          title: "الفجر",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          minutes: 2,
          seconds: 11,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/090.mp3")),
        tag: AudioMetadata(
          title: "البلد",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          minutes: 1,
          seconds: 39,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/091.mp3")),
        tag: AudioMetadata(
          title: "الشمس",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          minutes: 2,
          seconds: 8,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/092.mp3")),
        tag: AudioMetadata(
          title: "الليل",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          minutes: 1,
          seconds: 10,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/093.mp3")),
        tag: AudioMetadata(
          title: "الضحي",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          seconds: 44,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/094.mp3")),
        tag: AudioMetadata(
          title: "الشرح",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          seconds: 56,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/095.mp3")),
        tag: AudioMetadata(
          title: "التين",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          minutes: 1,
          seconds: 52,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/096.mp3")),
        tag: AudioMetadata(
          title: "العلق",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          seconds: 49,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/097.mp3")),
        tag: AudioMetadata(
          title: "القدر",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          minutes: 2,
          seconds: 34,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/098.mp3")),
        tag: AudioMetadata(
          title: "البينة",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          minutes: 1,
          seconds: 2,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/099.mp3")),
        tag: AudioMetadata(
          title: "الزلزلة",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          minutes: 1,
          seconds: 6,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/100.mp3")),
        tag: AudioMetadata(
          title: "العاديات",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          minutes: 1,
          seconds: 3,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/101.mp3")),
        tag: AudioMetadata(
          title: "القارعة",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          seconds: 50,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/102.mp3")),
        tag: AudioMetadata(
          title: "التكاثر",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          seconds: 27,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/103.mp3")),
        tag: AudioMetadata(
          title: "العصر",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          seconds: 56,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/104.mp3")),
        tag: AudioMetadata(
          title: "الهمزة",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          seconds: 38,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/105.mp3")),
        tag: AudioMetadata(
          title: "الفيل",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          seconds: 34,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/106.mp3")),
        tag: AudioMetadata(
          title: "قريش",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          seconds: 42,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/107.mp3")),
        tag: AudioMetadata(
          title: "الماعون",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          seconds: 21,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/108.mp3")),
        tag: AudioMetadata(
          title: "الكوثر",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          seconds: 46,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/109.mp3")),
        tag: AudioMetadata(
          title: "الكافرون",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          seconds: 33,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/110.mp3")),
        tag: AudioMetadata(
          title: "النصر",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          seconds: 36,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/111.mp3")),
        tag: AudioMetadata(
          title: "المسد",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          seconds: 19,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/112.mp3")),
        tag: AudioMetadata(
          title: "الاخلاص",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          seconds: 30,
        ),
        child: AudioSource.uri(
            Uri.parse("https://server10.mp3quran.net/minsh/113.mp3")),
        tag: AudioMetadata(
          title: "الفلق",
        ),
      ),
    ),
    LoopingAudioSource(
      count: 1,
      child: ClippingAudioSource(
        start: Duration(seconds: 00),
        end: Duration(
          seconds: 38,
        ),
        child: AudioSource. uri(
            Uri.parse("https://server10.mp3quran.net/minsh/114.mp3")),
        tag: AudioMetadata(
          title: "الناس",
        ),
      ),
    ),
  ]);

  @override
  void initState() {
    super.initState();
    _player = AudioPlayer();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.black,
    ));
    _init();
  }

  _init() async {
    final session = await AudioSession.instance;
    await session.configure(AudioSessionConfiguration.speech());
    try {
      await _player.setAudioSource(_playlist);
    } catch (e) {
      // catch load errors: 404, invalid url ...
      print("An error occured $e");
    }
  }

  @override
  void dispose() {
    _player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FlipInY(
          child: Scaffold(
            appBar: AppBar(
              title: Text('الاستماع'),
              backgroundColor: Colors.green,
            ),
        backgroundColor: Colors.green,
        
        //backgroundColor: Colors.lime[50],
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              // height: MediaQuery.of(context).size.height *.4,
              child: StreamBuilder<SequenceState>(
                stream: _player.sequenceStateStream,
                builder: (context, snapshot) {
                  final state = snapshot.data;
                  final sequence = state?.sequence ?? [];
                  //https://server10.mp3quran.net/minsh/
                  return ListView.builder(
                    itemCount: sequence.length,
                    itemBuilder: (context, index) {
                      final mp3Index = index+1;
                      final url = 'https://server10.mp3quran.net/minsh/' + mp3Index.toString().padLeft(3,'0') + '.mp3';
                      return Material(
                      color: index == state.currentIndex
                          ? Colors.black
                          : Colors.black54,
                      child: CustomMp3ListTille(
                        title: sequence[index].tag.title,
                        image: "assets/images/islam.png",
                        number: "", url: url,
                        ontap: () {
                          _player.seek(Duration.zero, index: index);
                        },
                      ),
                    );
                    },
                  );
                },
              ),
            ),
            SingleChildScrollView(
              child: StreamBuilder<SequenceState>(
                stream: _player.sequenceStateStream,
                builder: (context, snapshot) {
                  final state = snapshot.data;
                  if (state?.sequence?.isEmpty ?? true) return SizedBox();
                  final metadata = state.currentSource.tag as AudioMetadata;
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          // Image.asset("assets/images/bg.png",fit: BoxFit.cover,),
                          SizedBox(
                            height: 15,
                          ),
                          Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(metadata.album ?? '',
                                    style: TextStyle(color: Colors.white)
                                    // Theme.of(context).textTheme.headline6,
                                    ),
                                Text(metadata.title ?? '',
                                    style: TextStyle(color: Colors.white)),
                                StreamBuilder<Duration>(
                                  stream: _player.durationStream,
                                  builder: (context, snapshot) {
                                    final duration =
                                        snapshot.data ?? Duration.zero;
                                    return StreamBuilder<Duration>(
                                      stream: _player.positionStream,
                                      builder: (context, snapshot) {
                                        var position =
                                            snapshot.data ?? Duration.zero;
                                        if (position > duration) {
                                          position = duration;
                                        }
                                        return SeekBar(
                                          duration: duration,
                                          position: position,
                                          onChangeEnd: (newPosition) {
                                            _player.seek(newPosition);
                                          },
                                        );
                                      },
                                    );
                                  },
                                ),
                                //SizedBox(height: 8.0),
                                Row(
                                  children: [
                                    StreamBuilder<LoopMode>(
                                      stream: _player.loopModeStream,
                                      builder: (context, snapshot) {
                                        final loopMode =
                                            snapshot.data ?? LoopMode.off;
                                        final icons = [
                                          Icon(
                                            Icons.repeat,
                                            color: Colors.white,
                                          ),
                                          Icon(Icons.repeat, color: Colors.black),
                                          Icon(Icons.repeat_one,
                                              color: Colors.black),
                                        ];
                                        const cycleModes = [
                                          LoopMode.off,
                                          LoopMode.all,
                                          LoopMode.one,
                                        ];
                                        final index = cycleModes.indexOf(loopMode);
                                        return IconButton(
                                          icon: icons[index],
                                          onPressed: () {
                                            _player.setLoopMode(cycleModes[
                                                (cycleModes.indexOf(loopMode) + 1) % cycleModes.length]);
                                          },
                                        );
                                      },
                                    ),
                                  // Platform.Ios ? Container(): 
                                  
                                   Expanded(
                                      child: Text(
                                        "محمد صديق المنشاوي - حفص عن عاصم",
                                        style: TextStyle(color: Colors.white),
                                        //  style: Theme.of(context).textTheme.headline6,
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    StreamBuilder<bool>(
                                      stream: _player.shuffleModeEnabledStream,
                                      builder: (context, snapshot) {
                                        final shuffleModeEnabled =
                                            snapshot.data ?? false;
                                        return IconButton(
                                          icon: shuffleModeEnabled
                                              ? Icon(Icons.shuffle,
                                                  color: Colors.black)
                                              : Icon(Icons.shuffle,
                                                  color: Colors.white),
                                          onPressed: () {
                                            _player.setShuffleModeEnabled(!shuffleModeEnabled);
                                          },
                                        );
                                      },
                                    ),
                                  ],
                                ),
                              ]),
                        ],
                      ),
                    ],
                  );
                },
              ),
            ),
            ControlButtons(_player),
          ],
        ),
      ),
    );
  }
  
}
