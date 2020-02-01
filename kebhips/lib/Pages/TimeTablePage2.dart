import 'package:flutter/material.dart';
import 'package:kebhips/Model/ProgrammesDetails.dart';
import 'package:kebhips/Pages/BachelorSpecialitiesPage.dart';
import 'package:kebhips/Pages/BtsSpecialitiesPage.dart';
import 'package:kebhips/Pages/HndSpecialitiesPage.dart';
import 'package:kebhips/Pages/LiProSpecialitiesPage.dart';
import 'package:kebhips/Pages/ProgrammesSumary.dart';
import 'package:kebhips/Pages/TimeTablePage1.dart';

import 'Test.dart';

//home_page_body

class TimeTablePage2 extends StatefulWidget {
  @override
  _TimeTablePage2State createState() => _TimeTablePage2State();
}

class _TimeTablePage2State extends State<TimeTablePage2> {
  List<ProgrammesDetails> programmesDetails;
  @override
  void initState(){
    super.initState();
    programmesDetails = [
      ProgrammesDetails(
          id: "1",
          name: "B T S",
          time: "Deux ans",
          description: "BTS (Brevet de Technicien Supérieur), est un diplôme national de l'enseignement supérieur qui se prépare en deux ans apès le baccalauréat et qui ouvre la voie à plus de 50 spécialités dans différents secteurs. Le BTS est pensé pour favoriser une orientation professionnelle rapide sans fermer la porte à la poursuite des études. Sa particularité réside dans la nature professionnalisante de son contenu pédagoque et son enseignement pratique porté par de nombreuses semaines de stage en entreprise. Le BTS conduit à l'btention d'un diplôme de niveau bac+2 reconnu par l'Etat. Sa validation ouvre naturellement les portes au marché de l'emploi.",
          image: "assets/img/mars.png",
          picture: "https://www.nasa.gov/sites/default/files/thumbnails/image/pia21723-16.jpg",
          buttonTheme: ButtonTheme(
            minWidth: 200.0,
            height: 50.0,
            child: RaisedButton(
            color: Colors.amber,
            child: Text("Voir nos spécialités", style: TextStyle(fontWeight: FontWeight.w500),),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0),
            side: BorderSide(color: Colors.amber),
            ),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => BtsSpecialitiesPage()));
    }),
          )
      ),

      ProgrammesDetails(
          id: "2",
          name: "H N D",
          time: "Two years",
          description: "The Higher National Diploma (HND) is a two-year professional university program which focuses on learning by doing. It is designed to teach the knowledge and skills needed for a Bachelor's Degree Program. Hence an HND can be extended via a one year 'top-up' courses into a full Professional Bachelor's degree",
          image: "assets/img/neptune.png",
          picture: "https://www.nasa.gov/sites/default/files/styles/full_width_feature/public/images/110411main_Voyager2_280_yshires.jpg",
          buttonTheme: ButtonTheme(
            minWidth: 200.0,
            height: 50.0,
            child: RaisedButton(

                color: Colors.amber,
                child: Text("Voir nos spécialités", style: TextStyle(fontWeight: FontWeight.w500),),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.amber),
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HndSpecialitiesPage()));
                }),
          )
      ),
      ProgrammesDetails(
          id: "3",
          name: "LICENCE Pro",
          time: "Trois ans",
          description: "C'est un diplôme de niveau bac+3 plus axé sur la spécialisation et la pratique professionnelle, elle facilite l'insertion professionnelle et prédispose le titulaire à plus de responsabilités au sein de l'entreprise",
          image: "assets/img/moon.png",
          picture: "https://farm5.staticflickr.com/4086/5052125139_43c31b7012.jpg",
          buttonTheme: ButtonTheme(
            minWidth: 200.0,
            height: 50.0,
            child: RaisedButton(
                color: Colors.amber,
                child: Text("Voir nos spécialités", style: TextStyle(fontWeight: FontWeight.w500),),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.amber),
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LiProSpecialitiesPage()));
                }),
          )
      ),
      ProgrammesDetails(
          id: "4",
          name: "BACHELOR",
          time: "Three years",
          description: "The Professional Bachelor program is designed to give our students an added advantage in the job market. With our Bachelor Degree, the student is more of a job creator.",
          image: "assets/img/earth.png",
          picture: "https://www.nasa.gov/sites/default/files/styles/full_width_feature/public/thumbnails/image/iss042e340851_1.jpg",
          buttonTheme: ButtonTheme(
            minWidth: 200.0,
            height: 50.0,
            child: RaisedButton(
                color: Colors.amber,
                child: Text("Voir nos spécialités", style: TextStyle(fontWeight: FontWeight.w500),),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.amber),
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => BachelorSpecialitiesPage()));
                }),
          )
      ),
      ProgrammesDetails(
          id: "5",
          name: "MASTER Pro",
          time: "Cinq ans",
          description: "En cours...",
          image: "assets/img/mercury.png",
          picture: "https://c1.staticflickr.com/9/8105/8497927473_2845ae671e_b.jpg",
          buttonTheme: ButtonTheme(
            minWidth: 200.0,
            height: 50.0,
            child: RaisedButton(
                color: Colors.amber,
                child: Text("Voir nos spécialités", style: TextStyle(fontWeight: FontWeight.w500),),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.amber),
                ),
                onPressed: (){
                  //Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                }),
          )
      ),
      ProgrammesDetails(
          id: "6",
          name: "DIPLOME MINFOP",
          time: "Un an",
          description: "Il s'agit ici d'un ensemble de formations d'une durée de un an proposée par le MINEFOP (Ministère de l'Emploi et de la Formation Professionel) et donnant un accès direct à l'emploi.",
          image: "assets/img/mars.png",
          picture: "https://c1.staticflickr.com/9/8105/8497927473_2845ae671e_b.jpg",
          buttonTheme: ButtonTheme(
            minWidth: 200.0,
            height: 50.0,
            child: RaisedButton(
                color: Colors.amber,
                child: Text("Voir nos spécialités", style: TextStyle(fontWeight: FontWeight.w500),),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.amber),
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                }),
          )
      ),
      ProgrammesDetails(
          id: "7",
          name: "CERTIFICATIONS",
          time: "selon la disponibilité",
          description: "Il s'agit d'un ensemble de programmes nationaux et internationaux certifiants répartis en module mis à la disposition des sans emploi, des étudiants et des travailleurs permettant un apprentissage orienté sans encombres ou une mise à jour dans un domaine précis, le temps mis de façon général est compris entre trois et douze mois, mais le candidat concerné peut selon sa disponilité définir un emploi de temps personnalisé afin de parvenir à bout de l'objectif qui est l'obtention de sa certification.",
          image: "assets/img/neptune.png",
          picture: "https://c1.staticflickr.com/9/8105/8497927473_2845ae671e_b.jpg",
          buttonTheme: ButtonTheme(
            minWidth: 200.0,
            height: 50.0,
            child: RaisedButton(
                color: Colors.amber,
                child: Text("Voir nos certifications", style: TextStyle(fontWeight: FontWeight.w500),),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.amber),
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                }),
          )
      ),
    ];
  }


  @override
  Widget build(BuildContext context) {
    return new Expanded(
      child: new Container(
        color: new Color(0xFF736AB7),
        child: new CustomScrollView(
          scrollDirection: Axis.vertical,
          shrinkWrap: false,
          slivers: <Widget>[
            new SliverPadding(
              padding: const EdgeInsets.symmetric(vertical: 24.0),
              sliver: new SliverList(
                delegate: new SliverChildBuilderDelegate(
                      (context, index) => new ProgrammesSumary(programmesDetails[index]),
                  childCount: programmesDetails.length,
                ),
              ),
            ),
          ],
        ),
      ),
    );


  }
}
