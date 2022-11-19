import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text("LaunchPad",style:GoogleFonts.orbitron()),
          ),
          backgroundColor: Colors.black,
          body: Center(
            child: Wrap(
              spacing: 1,
              runSpacing: 1,
              children: [
                //Pad(colorCenter, colorOutline, assets),
                Pad(Color(0xffADCBFC), Color(0XFF067CCB), "mixkit-atmospheric-wind-drum-roll-swoosh-576.mp3"),
                Pad(Color(0xffff2525), Color(0XFFc40050), "mixkit-cinematic-mystery-trailer-drum-hit-546.mp3"),
                Pad(Color(0xffADCBFC), Color(0XFF067CCB), "mixkit-deep-dark-horror-drum-557.mp3"),
                Pad(Color(0xffE247FC), Color(0XFFA23AB7), "mixkit-ominous-drums-227.mp3"),
                Pad(Color(0xffADCBFC), Color(0XFF067CCB), "mixkit-tribal-deep-drum-echoes-575.mp3"),
                Pad(Color(0xffADCBFC), Color(0XFF067CCB), "mixkit-atmospheric-wind-drum-roll-swoosh-576.mp3"),
                Pad(Color(0xffff2525), Color(0XFFc40050), "mixkit-cinematic-mystery-trailer-drum-hit-546.mp3"),
                Pad(Color(0xffADCBFC), Color(0XFF067CCB), "mixkit-deep-dark-horror-drum-557.mp3"),
                Pad(Color(0xffE247FC), Color(0XFFA23AB7), "mixkit-ominous-drums-227.mp3"),
                Pad(Color(0xffADCBFC), Color(0XFF067CCB), "mixkit-tribal-deep-drum-echoes-575.mp3"),
                Pad(Color(0xffADCBFC), Color(0XFF067CCB), "mixkit-atmospheric-wind-drum-roll-swoosh-576.mp3"),
                Pad(Color(0xffff2525), Color(0XFFc40050), "mixkit-cinematic-mystery-trailer-drum-hit-546.mp3"),
                Pad(Color(0xffADCBFC), Color(0XFF067CCB), "mixkit-deep-dark-horror-drum-557.mp3"),
                Pad(Color(0xffE247FC), Color(0XFFA23AB7), "mixkit-ominous-drums-227.mp3"),
                Pad(Color(0xffADCBFC), Color(0XFF067CCB), "mixkit-tribal-deep-drum-echoes-575.mp3"),
                Pad(Color(0xffADCBFC), Color(0XFF067CCB), "mixkit-atmospheric-wind-drum-roll-swoosh-576.mp3"),
                Pad(Color(0xffff2525), Color(0XFFc40050), "mixkit-cinematic-mystery-trailer-drum-hit-546.mp3"),
                Pad(Color(0xffADCBFC), Color(0XFF067CCB), "mixkit-deep-dark-horror-drum-557.mp3"),
                Pad(Color(0xffE247FC), Color(0XFFA23AB7), "mixkit-ominous-drums-227.mp3"),
                Pad(Color(0xffADCBFC), Color(0XFF067CCB), "mixkit-tribal-deep-drum-echoes-575.mp3"),
                Pad(Color(0xffADCBFC), Color(0XFF067CCB), "mixkit-atmospheric-wind-drum-roll-swoosh-576.mp3"),
                Pad(Color(0xffff2525), Color(0XFFc40050), "mixkit-cinematic-mystery-trailer-drum-hit-546.mp3"),
                Pad(Color(0xffADCBFC), Color(0XFF067CCB), "mixkit-deep-dark-horror-drum-557.mp3"),
                Pad(Color(0xffE247FC), Color(0XFFA23AB7), "mixkit-ominous-drums-227.mp3"),
                Pad(Color(0xffADCBFC), Color(0XFF067CCB), "mixkit-tribal-deep-drum-echoes-575.mp3"),
                Pad(Color(0xffADCBFC), Color(0XFF067CCB), "mixkit-deep-dark-horror-drum-557.mp3"),
                Pad(Color(0xffE247FC), Color(0XFFA23AB7), "mixkit-ominous-drums-227.mp3"),
                Pad(Color(0xffADCBFC), Color(0XFF067CCB), "mixkit-tribal-deep-drum-echoes-575.mp3"),

              ],
            ),
          )
        ),
      ),
    );
  }
}
class Pad extends StatefulWidget {
  final colorCenter;
  final colorOutline;
  final assets;
  const Pad(this.colorCenter,this.colorOutline,this.assets,{Key? key}) : super(key: key);

  @override
  State<Pad> createState() => _PadState();
}

class _PadState extends State<Pad> {
  late Color _colorCenter;
  late Color _colorOutline;
  final player = AudioPlayer();
  @override

  void initState() {
    _colorCenter=widget.colorCenter;
    _colorOutline=widget.colorOutline;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: ()async{
        setState(() {
          _colorCenter=Colors.white;
          _colorOutline=Colors.white;
         // player.play(AssetSource());
          player.play(AssetSource(widget.assets),);
        });
        await Future.delayed(Duration(milliseconds: 500));
        setState(() {
          _colorCenter=widget.colorCenter;
          _colorOutline=widget.colorOutline;
        });
      },
      child: Container(
        height: height/8.3,
        width:width/4.1,
        decoration: BoxDecoration(
            borderRadius:BorderRadius.all(Radius.circular(6.0)),
            gradient: RadialGradient(colors: [
              _colorOutline,
              _colorCenter,
            ],
                radius: 0.5),
            boxShadow: [BoxShadow(color:Colors.pink,blurRadius: 5.0)]
        ),
      ),
    );
  }
}


