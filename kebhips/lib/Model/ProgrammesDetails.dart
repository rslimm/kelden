import 'package:flutter/material.dart';
import 'package:kebhips/Pages/TimeTablePage1.dart';

class ProgrammesDetails{
  final String id;
  final String name;
  final String time;
  final String description;
  final String image;
  final String picture;
  final RaisedButton raisedButton;
  final GestureDetector gestureDetector;

   ProgrammesDetails({this.id, this.name, this.time,
    this.description, this.image, this.picture, this.raisedButton, this.gestureDetector});
}


List<ProgrammesDetails> programmesDetails = [
   ProgrammesDetails(
      id: "1",
      name: "B T S",
      time: "Deux ans",
      description: "Le BTS (Brevet de Technicien Supérieur), est un diplôme national de l'enseignement supérieur qui se prépare en deux ans apès le baccalauréat et qui ouvre la voie à plus de 50 spécialités dans différents secteurs. Le BTS est pensé pour favoriser une orientation professionnelle rapide sans fermer la porte à la poursuite des études. Sa particularité réside dans la nature professionnalisante de son contenu pédagoque et son enseignement pratique porté par de nombreuses semaines de stage en entreprise. Le BTS conduit à l'btention d'un diplôme de niveau bac+2 reconnu par l'Etat. Sa validation ouvre naturellement les portes au marché de l'emploi.",
      image: "assets/img/mars.png",
      picture: "https://www.nasa.gov/sites/default/files/thumbnails/image/pia21723-16.jpg",
      gestureDetector: GestureDetector(
        onTap: (){
          Navigator.push(
              context, MaterialPageRoute(
              builder: null));
        },
      )
  ),
 ProgrammesDetails(
      id: "2",
      name: "H N D",
      time: "Two years",
      description: "The introduction message about HND should be directly in english here !!!",
      image: "assets/img/neptune.png",
      picture: "https://www.nasa.gov/sites/default/files/styles/full_width_feature/public/images/110411main_Voyager2_280_yshires.jpg"
  ),
 ProgrammesDetails(
      id: "3",
      name: "LICENCE Pro",
      time: "Trois ans",
      description: "C'est un diplôme de niveau bac+3 très axé sur la pratique et la spécification, elle s'obtient après le BTS et  elle facilite l'insertion professionnelle.",
      image: "assets/img/moon.png",
      picture: "https://farm5.staticflickr.com/4086/5052125139_43c31b7012.jpg"
  ),
 ProgrammesDetails(
      id: "4",
      name: "BACHELOR",
      time: "Three years",
      description: "The introduction message about Bachelor should be directly in english here !!!",
      image: "assets/img/earth.png",
      picture: "https://www.nasa.gov/sites/default/files/styles/full_width_feature/public/thumbnails/image/iss042e340851_1.jpg"
  ),
 ProgrammesDetails(
      id: "5",
      name: "MASTER Pro",
      time: "Cinq ans",
      description: "Message concernant le MASTER professionnel.",
      image: "assets/img/mercury.png",
      picture: "https://c1.staticflickr.com/9/8105/8497927473_2845ae671e_b.jpg"
  ),
 ProgrammesDetails(
      id: "6",
      name: "DIPLOME MINFOP",
      time: "Un an",
      description: "Description sur le diplôme du MINFOP.",
      image: "assets/img/mars.png",
      picture: "https://c1.staticflickr.com/9/8105/8497927473_2845ae671e_b.jpg"
  ),
 ProgrammesDetails(
      id: "7",
      name: "CERTIFICATIONS",
      time: "selon la disponibilité",
      description: "Description sur les certifications.",
      image: "assets/img/neptune.png",
      picture: "https://c1.staticflickr.com/9/8105/8497927473_2845ae671e_b.jpg"
  ),


];

//"https://c1.staticflickr.com/9/8105/8497927473_2845ae671e_b.jpg"