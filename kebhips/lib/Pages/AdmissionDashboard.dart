import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:kebhips/popup/popup.dart';
import 'package:kebhips/popup/popup_content.dart';
//void main() => runApp(MyApp());

//      Text('KEBHIPS © ${DateTime.now().year.toString()}. Powered by MINSE.COM'),

class AdmissionDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: DashBoard(),
    );
  }
}

class DashBoard extends StatelessWidget {
  Size size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    double longueur = MediaQuery.of(context).size.height;
    double largeur = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blue[900],
          title: Text(
            "ADMISSION",
            textAlign: TextAlign.center,
          ),
        ),
        drawer: AppDrawer(),
        body: Stack(
          children: <Widget>[
            Container(
              child: CustomPaint(
                painter: ShapesPainter(),
                child: Container(
                  height: size.height / 2,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 40),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: GridView.count(
                  crossAxisCount: 2,
                  children: <Widget>[
                    createGridItem(0),
                    createGridItem(1),
                    createGridItem(2),
                    createGridItem(3),
                    createGridItem(4),
                    createGridItem(5),
                    createGridItem(6),
                  ],
                ),
              ),
            ),




Center(
        child: Container(
          width: MediaQuery.of(context).size.width*0.4,
          child: Row(
            children: <Widget>[
              Text('KEBHIPS © ${DateTime.now().year.toString()}. Powered by ',),
               GestureDetector(
                 
                 onTap: (){

                   //fonction pour aller sur mise .io

                 },
                 
                 child: Text(' MINSE')),
            ],
          ),
        ),
      )


          ],
        ),
      ),
    );
  }

  Widget createGridItem(int position) {
    var color = Colors.white;
    var icondata = Icons.school;
    var text = "";

    //ici les variable a charger pour chaque cycle
    String pension="";
    String condition="";
    String niveau="";
    String document="";

    String program="";


    String Specialites="";
    String Specialites2="";


    String Inscription = "";
    String PremiereTranche="";
    String DeuxiemeTranche = "";
    String TroisiemeTranche="";
    String Total ="";


    String InscriptionMS = "";
    String PremiereTrancheMS ="";
    String DeuxiemeTrancheMS = "";
    String TroisiemeTrancheMS ="";
    String TotalMS ="";

    switch (position) {
      case 0:
        color = Colors.cyan;
        icondata = Icons.school;
        text = "BTS";

        condition = "";
        niveau = " BACC/GCE ou tout autre diplôme équivalent";
        document =  "Une fiche d'inscription à retirer à l'institut, les copies conforme certifiées de (Acte de naissance, Dernier diplôme, CNI), une photocopie du relévé de notes de la première année pour l'inscription en deuxième année, quatre photos 4X4, deux enveloppes A4 avec les coordonées du candidat";
        Inscription = "  20.000 CFA";
        PremiereTranche = "  100.000 CFA";
        DeuxiemeTranche = "  100.000 CFA";
        TroisiemeTranche = "  70.000 CFA";
        Total = "  290.000 CFA";

        Specialites = "    MEDICO-SANITAIRES";
        InscriptionMS = "  20.000 CFA";
        PremiereTrancheMS = "  100.000 CFA";
        DeuxiemeTrancheMS = "  100.000 CFA";
        TroisiemeTrancheMS = " 100.000 CFA";
        TotalMS = "  320.000 CFA";

        break;
      case 1:
        color = Colors.deepPurple;
        icondata = Icons.school;
        text = "HND";

        condition = "";
        niveau = "BACC / GCE A level or any other equivelent certificate";
        document = "Registration form obtainable from school, photocopies of (ID card, birth certificate, required certificate or its equivelent), copies of first year transcripts for all admissions into second year, four 4X4 passport size photos, two stamped A4 envelops with the candidate's address on one";


        pension="";

        Specialites="  Medical and Biomedical Sciences";
        Specialites2="Tout autre programme / all other specialities";

        InscriptionMS="  20.000 CFA";
        PremiereTrancheMS="  100.000 CFA";
        DeuxiemeTrancheMS="  100.000 CFA";
        TroisiemeTrancheMS="  100.000 CFA";
        TotalMS="   320.000 CFA";

        Inscription = " 20.000 CFA";
        PremiereTranche = "  100.000 CFA";
        DeuxiemeTranche = "  100.000 CFA";
        TroisiemeTranche = "  70.000 CFA";
        Total = "  290.000 CFA";


        program= "";

        break;
      case 2:
        color = Colors.orange[300];
        icondata = Icons.school;
        text = "LIPRO";

        condition = "";
        niveau = "BTS ou tout autre diplôme équivalent";
        document = "Photocopie de la CNI, photocopie de l'acte de naissance, photocopie du BTS et du relévé de notes, quatre photos (4X4), deux enveloppes avec l'adresse du candidat sur une des enveloppes";

        pension="";
        Inscription = " 50.000 CFA";
        PremiereTranche = "  200.000 CFA";
        DeuxiemeTranche = "  150.000 CFA";
        TroisiemeTranche = "  100.000 CFA";
        Total = "  500.000 CFA";

        Specialites=" MEDICO-SANITAIRE";
        Specialites2="Tout autre programme / all other specialities";


        InscriptionMS=" 50.000 CFA";
        PremiereTrancheMS="  250.000 CFA";
        DeuxiemeTrancheMS="  200.000 CFA";
        TroisiemeTrancheMS="  100.000 CFA";
        TotalMS="   600.000 CFA";

        program= " Tout autre programme / all other specialities";

        break;
      case 3:
        color = Colors.pinkAccent;
        icondata = Icons.school;
        text = "BACHELOR";

        condition = "Requirement conditions for professional Bachelor Degree";
        niveau = "HND / BTS or any other equivelent diploma";
        document = "Photocopy of ID Card, photocopy of birth certificate, photocopy of HND/BTS and transcripts, four 4X4 passport size photos, two stamped A4 envelops with the candidate's address on one";

        pension="";
        Inscription = " 50.000 CFA";
        PremiereTranche = "  200.000 CFA";
        DeuxiemeTranche = "  150.000 CFA";
        TroisiemeTranche = "  100.000 CFA";
        Total = "  500.000 CFA";

        Specialites="  Medical and Biomedical Sciences";
        Specialites2="Tout autre programme / all other specialities";


        InscriptionMS=" 50.000 CFA";
        PremiereTrancheMS="  250.000 CFA";
        DeuxiemeTrancheMS="  200.000 CFA";
        TroisiemeTrancheMS="  100.000 CFA";
        TotalMS="   600.000 CFA";

        break;
      case 4:
        color = Colors.green[600];
        icondata = Icons.school;
        text = "D. MINFOP";


        condition = "";
        niveau = "Dépendant du choix de la spécialité\n"
            "Depends on the program chosen";
        document = "Une fiche d'inscription à retirer à l'institut, les copies conforme certifiées de (Acte de naissance, diplôme requis pour la spécialité, CNI), quatre photos 4X4, deux enveloppes A4 avec les coordonées du candidat\n\n"
            "Registration form obtainable from school, photocopies of (ID card, birth certificate, required certificate or its equivelent), four 4X4 passport size photos, two stamped A4 envelops with the candidate's address on one";


        pension="";
        Inscription = " 20.000 CFA";
        PremiereTranche = "  100.000 CFA";
        DeuxiemeTranche = "  100.000 CFA";
        TroisiemeTranche = "  70.000 CFA";
        Total = "  290.000 CFA";

        Specialites="  Audit Fiscal, Gestion des Marchés Publics";
        Specialites2="Tout autre programme / all other specialities";


        InscriptionMS=" 20.000 CFA";
        PremiereTrancheMS="  150.000 CFA";
        DeuxiemeTrancheMS="  100.000 CFA";
        TroisiemeTrancheMS="  50.000 CFA";
        TotalMS="   320.000 CFA";

        break;
      case 5:
        color = Colors.cyanAccent;
        icondata = Icons.school;
        text = "CERTIFICATIONS";

        condition = "";
        niveau = "Tout niveau dépendant de vos compétences et des prérequis nécéssaires à la certification\n\n"
            "Any level depending on your aptitudes and on the requirements of certifications\n\n";
        document = "Tel que prévu par la certification, pour des informations supplémentaires, veuillez nous laissez un message via le menu Laisser un message*, et nous vous contacterons.\n\n"
            "As required for by certifications, for more information please leave us a message through our message* menu";


        pension="";
        Inscription = " xx.xxx CFA";
        PremiereTranche = "  xxx.xxx CFA";
        DeuxiemeTranche = "  xxx.xxx CFA";
        TroisiemeTranche = "  xxx.xxx CFA";
        Total = "  xxx.xxx CFA";

        Specialites="";
        Specialites2="";


        InscriptionMS=" xxx.xxx CFA";
        PremiereTrancheMS="  xxx.xxx CFA";
        DeuxiemeTrancheMS="  xxx.xxx CFA";
        TroisiemeTrancheMS="  xxx.xxx CFA";
        TotalMS="   xxx.xxx CFA";
        break;
      case 6:
        color = Colors.teal;
        icondata = Icons.school;
        text = "A LA CARTE";

        condition = "";
        niveau = "Tout niveau dépendant de vos compétences et des prérequis nécéssaires à la formation\n\n"
            "Any level depending on your aptitudes and on the requirements of the training\n\n";
        document = "Tel que prévu par la formation, pour des informations supplémentaires, veuillez nous laissez un message via le menu Laisser un message*, et nous vous contacterons.\n\n"
            "As required for by training, for more information please leave us a message through our message* menu";


        pension="";
        Inscription = " xx.xxx CFA";
        PremiereTranche = "  xxx.xxx CFA";
        DeuxiemeTranche = "  xxx.xxx CFA";
        TroisiemeTranche = "  xxx.xxx CFA";
        Total = "  xxx.xxx CFA";

        Specialites="";
        Specialites2="";


        InscriptionMS=" xxx.xxx CFA";
        PremiereTrancheMS="  xxx.xxx CFA";
        DeuxiemeTrancheMS="  xxx.xxx CFA";
        TroisiemeTrancheMS="  xxx.xxx CFA";
        TotalMS="   xxx.xxx CFA";
    }

    return Builder(builder: (context) {
      return Padding(
        padding:
        const EdgeInsets.only(left: 10.0, right: 10, bottom: 5, top: 5),
        child: Card(
          elevation: 10,
          color: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            side: BorderSide(color: Colors.white),
          ),
          child: InkWell(
            onTap: () {
              //gestion du pupop text
              showPopup(context, _popupBody(condition, niveau, document, pension, Specialites, Specialites2, Inscription, PremiereTranche, DeuxiemeTranche, TroisiemeTranche, Total, InscriptionMS, PremiereTrancheMS, DeuxiemeTrancheMS, TroisiemeTrancheMS, TotalMS), '$text');
            },
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Icon(
                    icondata,
                    size: 40,
                    color: Colors.white,
                  ),


                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(text,
                      style: TextStyle(color: Colors.white),
                    ),
                  )


                ],
              ),
            ),
          ),
        ),
      );
    }
    );
  }
}

class ShapesPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    // set the paint color to be white
    paint.color = Colors.white;
    // Create a rectangle with size and width same as the canvas
    var rect = Rect.fromLTWH(0, 0, size.width, size.height);
    // draw the rectangle using the paint
    canvas.drawRect(rect, paint);
    paint.color = Colors.greenAccent[400];
    // create a path
    var path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width, 0);
    // close the path to form a bounded shape
    path.close();
    canvas.drawPath(path, paint);
    /* // set the color property of the paint
    paint.color = Colors.deepOrange;
    // center of the canvas is (x,y) => (width/2, height/2)
    var center = Offset(size.width / 2, size.height / 2);
    // draw the circle with center having radius 75.0
    canvas.drawCircle(center, 75.0, paint);*/
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}







//fonction qui gere le popup
showPopup(BuildContext context, Widget widget, String title,
    {BuildContext popupContext}) {
  Navigator.push(
    context,
    PopupLayout(
      top: 30,
      left: 30,
      right: 30,
      bottom: 50,
      child: PopupContent(
        content: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue[900],
            title: Text(title),
            leading: new Builder(builder: (context) {
              return IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  try {
                    Navigator.pop(context); //close the popup
                  } catch (e) {}
                },
              );
            }),
            brightness: Brightness.light,
          ),

          resizeToAvoidBottomPadding: false,

          body: widget,
        ),
      ),
    ),
  );
}


Widget _popupBody(String condition,String niveau,String document, String pension, String Specialites, String Specialites2, String Inscription, String PremiereTranche, String DeuxiemeTranche, String TroisiemeTranche, String Total, InscriptionMS, PremiereTrancheMS, DeuxiemeTrancheMS, TroisiemeTrancheMS, TotalMS) {
  return ListView(
    padding: EdgeInsets.all(12),


    children: <Widget>[
      Column(
        children: <Widget>[
          AutoSizeText("Conditions d'admission / Admission conditions:",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20
          ),),

          Container(
            child: AutoSizeText("$condition",style: TextStyle(

            ),),
          ),

        ],
      ),
      SizedBox(height: 15.0,),
      Column(
        children: <Widget>[
          AutoSizeText("Niveau requis / Required level:",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20
          ),),

          AutoSizeText("$niveau",style: TextStyle(

          ),),

        ],
      ),
      SizedBox(height: 15.0,),
      Column(
        children: <Widget>[
          AutoSizeText("Dossiers d'inscription / Registration formalities:",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20
          ),),

          AutoSizeText("$document",style: TextStyle(

          ),),

        ],
      ),
      SizedBox(height: 25.0,),
      Row(
        children: <Widget>[
          AutoSizeText("Pension / Fees:", textAlign: TextAlign.end,style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),),

          AutoSizeText("$pension",style: TextStyle(

          ),),

        ],
      ),
      SizedBox(height: 25.0,),
      Column(
        children: <Widget>[
          AutoSizeText("Spécialités / Specialities:", textAlign: TextAlign.center,style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),),

          AutoSizeText("$Specialites",style: TextStyle(
          ),),

        ],
      ),
      SizedBox(height: 15.0,),
      Column(
        children: <Widget>[
          AutoSizeText("Inscription / Registration:", textAlign: TextAlign.center,style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),),

          AutoSizeText("$InscriptionMS",style: TextStyle(

          ),),

        ],
      ),
      SizedBox(height: 15.0,),
      Column(
        children: <Widget>[
          AutoSizeText("Première tranche / 1st Installement:", textAlign: TextAlign.center,style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),),

          AutoSizeText("$PremiereTrancheMS",style: TextStyle(

          ),),

        ],
      ),
      SizedBox(height: 15.0,),
      Column(
        children: <Widget>[
          AutoSizeText("Deuxième Tranche / 2nd Installement:", textAlign: TextAlign.center,style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),),

          AutoSizeText("$DeuxiemeTrancheMS",style: TextStyle(

          ),),

        ],
      ),
      SizedBox(height: 15.0,),
      Column(
        children: <Widget>[
          Container(
            child: AutoSizeText("Troisième Tranche rr/ 3rd Installement:", textAlign: TextAlign.center,style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),),
          ),

          AutoSizeText("$TroisiemeTrancheMS",style: TextStyle(

          ),),

        ],
      ),
      SizedBox(height: 25.0,),
      Column(
        children: <Widget>[
          AutoSizeText("Total:", textAlign: TextAlign.center,style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),),

          AutoSizeText("$TotalMS",style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30.0,
          ),),

        ],
      ),


      SizedBox(height: 25.0,),
      Column(
        children: <Widget>[
          AutoSizeText(" Spécialités / Specialities:", textAlign: TextAlign.center,style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),),

          AutoSizeText("$Specialites2",style: TextStyle(
          ),),

        ],
      ),
      SizedBox(height: 35.0,),

      Column(
        children: <Widget>[
          AutoSizeText("Inscription / Registration:", textAlign: TextAlign.center,style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),),

          AutoSizeText("$Inscription",style: TextStyle(

          ),),

        ],
      ),
      SizedBox(height: 15.0,),
      Column(
        children: <Widget>[
          Container(
            child: AutoSizeText("Première tranche / 1st Installement:", textAlign: TextAlign.center,style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),),
          ),

          AutoSizeText("$PremiereTranche",style: TextStyle(

          ),),

        ],
      ),
      SizedBox(height: 15.0,),
      Column(
        children: <Widget>[
          Container(
            child: AutoSizeText("Deuxième Tranche / 2nd Installement:", textAlign: TextAlign.center,style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),),
          ),

          AutoSizeText("$DeuxiemeTranche",style: TextStyle(

          ),),

        ],
      ),
      SizedBox(height: 15.0,),
      Column(
        children: <Widget>[
          Container(
            child: AutoSizeText("Troisième Tranche / 3rd Installement:", textAlign: TextAlign.center,style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),),
          ),

          AutoSizeText("$TroisiemeTranche",style: TextStyle(

          ),),

        ],
      ),

      SizedBox(height: 25.0,),
      Column(
        children: <Widget>[
          AutoSizeText("Total:", textAlign: TextAlign.center,style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),),

          AutoSizeText("$Total",style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 30.0,
          ),),

        ],
      ),

    ],


  );
}




class AppDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _createHeader(),
          _createDrawerItem(icon: Icons.table_chart, text: 'Programmes',),
          new Divider(
            color: Colors.amber.withOpacity(0.9),
          ),
          _createDrawerItem(icon: Icons.school, text: 'Admission',),
          new Divider(
            color: Colors.amber.withOpacity(0.9),
          ),
          _createDrawerItem(icon: Icons.person_add, text: 'Inscription',),
          new Divider(
            color: Colors.amber.withOpacity(0.9),
          ),
          _createDrawerItem(icon: Icons.leak_add, text: 'Cours en ligne',),
          new Divider(
            color: Colors.amber.withOpacity(0.9),
          ),
          _createDrawerItem(icon: Icons.group, text: 'Vie au campus',),
          new Divider(
            color: Colors.amber.withOpacity(0.9),
          ),
          _createDrawerItem(icon: Icons.accessibility_new, text: 'Réseaux Sociaux',),
          new Divider(
            color: Colors.amber.withOpacity(0.9),
          ),
          _createDrawerItem(icon: Icons.picture_in_picture, text: 'Galerie',),
          new Divider(
            color: Colors.amber.withOpacity(0.9),
          ),
          _createDrawerItem(icon: Icons.message, text: 'Laissez un message',),
          ListTile(
            title: Text('KEBHIPS'),
            onTap: (){

            },
          )


        ],
      ),
    );
  }
}



Widget _createDrawerItem({
  IconData icon, String text, GestureTapCallback onTap
}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon),
        Padding(
          padding: EdgeInsets.only(left: 8.0, top: 0.0),
          child: Text(text),
        )
      ],
    ),
    onTap: onTap,
  );
}


Widget _createHeader(){
  return DrawerHeader(
    margin: EdgeInsets.zero,
    padding: EdgeInsets.zero,
    decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/logo-off-kelden-v.png'))
    ),
  );
}



