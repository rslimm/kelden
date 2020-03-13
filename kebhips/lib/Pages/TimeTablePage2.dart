import 'package:flutter/material.dart';
import 'package:kebhips/Model/ProgrammesDetails.dart';
import 'package:kebhips/Pages/BachelorSpecialitiesPage.dart';
import 'package:kebhips/Pages/BtsSpecialitiesPage.dart';
import 'package:kebhips/Pages/HndSpecialitiesPage.dart';
import 'package:kebhips/Pages/LiProSpecialitiesPage.dart';
import 'package:kebhips/Pages/ProgrammesSumary.dart';
import 'package:kebhips/Pages/TimeTablePage1.dart';

import 'CertificationsPage.dart';
import 'DMinfopSpecialitiesPage.dart';
import 'RegistrationPage.dart';

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
          gestureDetector: GestureDetector
    (
    onTap: () {

      Navigator.push(context, MaterialPageRoute(builder: (context) => BtsSpecialitiesPage()));


    },
    child: Center(
    child: Container(
    padding: EdgeInsets.only(left: 10, right: 10),
    height: 50,
    width: 200,
    child: Material(
    borderRadius: BorderRadius.circular(9.0),
    color: Colors.amber,
    child: Center(
    child:Text("Voir nos spécialités ", style: TextStyle(fontWeight: FontWeight.w500),),))),
    ),
    ),

          buttonTheme: ButtonTheme(
            minWidth: 50.0,
            height: 50.0,
            child: RaisedButton(
            color: Colors.amber,
            child: Text("Voir nos spécialités ", style: TextStyle(fontWeight: FontWeight.w500),),
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
          description: "The Higher National Diploma (HND) is a two-year professional university program which focuses on learning by doing. It is designed to teach the knowledge and skills needed for a better insertion into the job market. For this reason the programs is job oriented and teaching is done in small groups for an efficient teacher/student conatact and engagement.  An HND can be extended via a one year 'top-up' courses into a full Professional Bachelor's degree.",
          image: "assets/img/neptune.png",
          picture: "https://www.nasa.gov/sites/default/files/styles/full_width_feature/public/images/110411main_Voyager2_280_yshires.jpg",
          gestureDetector: GestureDetector
            (
            onTap: () {

              Navigator.push(context, MaterialPageRoute(builder: (context) => HndSpecialitiesPage()));


            },
            child: Center(
              child: Container(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  height: 50,
                  width: 200,
                  child: Material(
                      borderRadius: BorderRadius.circular(9.0),
                      color: Colors.amber,
                      child: Center(
                        child:Text("See our HND programs ", style: TextStyle(fontWeight: FontWeight.w500),),))),
            ),
          ),


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
          time: "Un an",
          description: "La licence professionnelle est accessible après un BAC + 2. La formation dure un an (2 semestres) et comporte 450 heures de cours, travaux dirigés ou travaux pratiques et un stage en entreprise de 12 à 16 semaines. Les programmes sont définis avec la participation des professionnelles pour garantir une capacité professionnelle imédiate et un potentiel d'évolution. L'objectif premier de la licence professionnelle étant de mener l'étudiant vers l'emploi, c'est une formation destinée aux étudiants souhaitant une insertion dans la vie active. Les effectifs sont limités pour garantir la qualité d'encadrement et les possibilités d'insertion professionnelle.",
          image: "assets/img/moon.png",
          picture: "https://farm5.staticflickr.com/4086/5052125139_43c31b7012.jpg",

          gestureDetector: GestureDetector
            (
            onTap: () {

              Navigator.push(context, MaterialPageRoute(builder: (context) => LiProSpecialitiesPage()));


            },
            child: Center(
              child: Container(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  height: 50,
                  width: 200,
                  child: Material(
                      borderRadius: BorderRadius.circular(9.0),
                      color: Colors.amber,
                      child: Center(
                        child:Text("Voir nos spécialités ", style: TextStyle(fontWeight: FontWeight.w500),),))),
            ),
          ),



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
          time: "One year",
          description: "Professional Bachelor degree programs put a great deal on focus on real-world application, requiring students to complete internship in their fill of study before graduation. this allows students to gain extensive on-the-job training and boost their resume. Hence, professional Bachelor's programs combined theoritical studies with a pratical oriented approach. The program gives access to futher studies at Master's level.",
          image: "assets/img/earth.png",
          picture: "https://www.nasa.gov/sites/default/files/styles/full_width_feature/public/thumbnails/image/iss042e340851_1.jpg",

          gestureDetector: GestureDetector
            (
            onTap: () {

              Navigator.push(context, MaterialPageRoute(builder: (context) => BachelorSpecialitiesPage()));


            },
            child: Center(
              child: Container(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  height: 50,
                  width: 200,
                  child: Material(
                      borderRadius: BorderRadius.circular(9.0),
                      color: Colors.amber,
                      child: Center(
                        child:Text("See our Bachelor programs", style: TextStyle(fontWeight: FontWeight.w500),),))),
            ),
          ),


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
          id: "6",
          name: "DIPLOME MINFOP",
          time: "Un an",
          description: "Il s'agit ici d'un ensemble de formations d'une durée de un an proposée par le MINEFOP (Ministère de l'Emploi et de la Formation Professionel) et donnant un accès direct à l'emploi. Ce dispositif  de formation professionnelle améliore significativement les chances d’insertion professionnelle des participants.",
          image: "assets/img/mars.png",
          picture: "https://c1.staticflickr.com/9/8105/8497927473_2845ae671e_b.jpg",


          gestureDetector: GestureDetector
            (
            onTap: () {

              Navigator.push(context, MaterialPageRoute(builder: (context) => DMinfopSpecialitiesPage()));
              },
            child: Center(
              child: Container(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  height: 50,
                  width: 200,
                  child: Material(
                      borderRadius: BorderRadius.circular(9.0),
                      color: Colors.amber,
                      child: Center(
                        child:Text("Voir nos spécialités ", style: TextStyle(fontWeight: FontWeight.w500),),))),
            ),
          ),



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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => RegistrationPage()));
                }),
          )
      ),
      ProgrammesDetails(
          id: "7",
          name: "CERTIFICATIONS",
          time: "Selon la disponibilité",
          description: "Nos formations certifiantes sont pensées pour répondre à vos besoins techniques et opérationnels, Renforcer vos savoir-faire et vos compétences techniques. Mettre à jour vos connaissances réglementaires dans votre domaine. Acquérir des bases solides pour assumer de nouvelles missions. Tels sont les objectifs de toutes nos formations. Ciblées et progressives, elles sont un puissant levier pour renforcer et développer vos compétences. L’approche pédagogique allie théorie, pratique et décryptage de l’actualité pour vous garantir une mise en application immédiate une formation opérationnelle. Nous proposons plusieurs formations dédiées aux professionnels de l'informatique, de la comptabilité exerçant déjà en entreprise ou non, en cabinet ou en libéral. Elles vous permettent de développer vos connaissances, de mettre vos connaissances à jour ainsi que vos compétences techniques. Toutes les formations certifiantes que nous offrons se font en partenariat avec les institutions internationales agréer dans ces domaines.",
          image: "assets/img/neptune.png",
          picture: "https://c1.staticflickr.com/9/8105/8497927473_2845ae671e_b.jpg",

          gestureDetector: GestureDetector
            (
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => CertificationsSpecialitiesPage()));

            },
            child: Center(
              child: Container(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  height: 50,
                  width: 200,
                  child: Material(
                      borderRadius: BorderRadius.circular(9.0),
                      color: Colors.amber,
                      child: Center(
                        child:Text("Voir nos spécialités ", style: TextStyle(fontWeight: FontWeight.w500),),))),
            ),
          ),



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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => CertificationsSpecialitiesPage()));
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
