import 'package:flutter/material.dart';


class AdministrationPage extends StatefulWidget {
  @override
  _AdministrationPageState createState() => _AdministrationPageState();
}

class _AdministrationPageState extends State<AdministrationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('K E B H I P S', style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),),
      ),
      body: new ListView(
        children: <Widget>[
          new SizedBox(height: 15.0,),
          new Text('Le mot du directeur', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),),
          Padding(padding: EdgeInsets.all(15.0),
            child: new Text('Chère candidate, cher candidat,'
                     'Au nom de l’ensemble des équipes de Kelden Bilingual Higher institute , je vous remercie chaleureusement de la confiance que vous nous accordez.'
                     'Choisir son école c’est décider de faire une expérience unique, une expérience qui fera de vous l’acteur d’une formation professionnelle d\'excellence, c’est opter pour l’accompagnement dans la construction de votre projet professionnel, au sein d’entreprises, d’ONG, d’organismes publics internationaux, ou dans le cadre de la création de votre entreprise. Choisir son école, enfin, c’est contribuer à la richesse de sa vie associative et prendre place au sein de sa communauté de diplômés.'
                     'Notre institut favorise votre développement personnel grâce à un projet pédagogique ambitieux et exigeant reposant sur trois dimensions: Une dimension intellectuelle, portée par la culture générale, les humanités et l’expérience internationale pour développer votre capacité à évoluer et agir dans la complexité de notre monde;'
                     'Une dimension profession  nelle, favorisée par latransversalité et la transdisciplinarité aux interfaces des sciences du management et des autres domaines... pour vous donner un socle de compétences solides et durables qui vous permettra d’être pleinement acteur de la conduite de nos organisations en perpétuelle évolution;Une dimension comportementale, qui intègre les principes de responsabilité, d’innovation et de travail collaboratif et qui vous invite à agir, chaque jour, en professionnel respecté pour ses compétences et son intégrité ainsi que sa capacité à apporter des solutions nouvelles et adaptées aux attentes de ses collaborateurs et de ses clients. En tant que Directeur de cette Grande École, le projet que je porte peut être résumé ainsi:'
                     'Élargir l’offre de parcours, d’options, d’électifs, de spécialisations, afin d’amener chacune et chacun d’entre vous à l’excellence dans le domaine que vous choisirez;Accentuer l’internationalisation du programme et ainsi votre expérience étudiante;Renforcer, encore et toujours, la professionnalisation de notre cursus en tirant le meilleur des mondes académique et professionnel.'
                     'Œuvrer au quotidien, avec vous, ainsi que l’ensemble des équipes de KEBHIPS , pour contribuer au rayonnement de notre école.\n\n',
            textAlign: TextAlign.justify,
            ),
          ),
      new Text('Formation à Distance.\n', textAlign: TextAlign.center, style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
      ),

      Padding(padding: EdgeInsets.only(left:15.0, right: 15.0),
        child: new Text('KEBHIPS permet à chacun de se former à distance, offrant un véritable tremplin vers des dizaines de métiers différents, quelle que soit votre situation.vous travaillez quand vous voulez, où vous voulez, et vous progressez à votre rythme. Vous serez suivi personnellement par un professeur tuteur.'
            'Pour concrétiser ce projet, une équipe de professeurs impliqués dans le monde de l’entreprise et la recherche vous transmet ses connaissances et en lien permanent avec l’entreprise vous guident dans la valorisation de vos compétences professionnelles et l’ensemble des collaborateurs de KEBHIPS - vous accompagnent au quotidien.\n\n'
            'Je vous adresse tous mes vœux de réussite.\n',
          textAlign: TextAlign.justify,
        ),
      ),

          Padding(padding: EdgeInsets.only(left: 15.0),
              child: new Text('LEILA Linus', textAlign: TextAlign.start, style: TextStyle(fontWeight: FontWeight.bold),)
          ),
          Padding(padding: EdgeInsets.only(left: 15.0),
              child: new Text('Le Directeur\n\n', textAlign: TextAlign.start, style: TextStyle(fontWeight: FontWeight.bold),)
          ),
          Padding(padding: EdgeInsets.all(15.0),
            child: new Text('We are proud to welcome you in an institution that stands out through its professional educational project allowing for the promotion of academic excellence and professionalism among our students, while giving them the opportunity to broaden their horizons upon meeting other people and exchanging ideas.'
                     'Our priority is to ensure that every student of ours can reach his or her full potential and achieve his or her academic and professional goals in a friendly environment, on a resolutely human scale. Moreover, the signature that accompanies our logo truly reflects our vision:Enter to Learn, Leave to Achieve.\n',
            textAlign: TextAlign.justify,
            ),
          ),

                   new Text('Distance Learning', textAlign: TextAlign.center, style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                   ),

                   Padding(padding: EdgeInsets.all(15.0),
                     child: new Text('This is where we make the difference. In Kelden institute you can study whenever and wherever you choose.From your office, while on your trip, from your relocation, Kelden Institute is at your service.\n'
                                     'Studying at Kelden means constant support from a team of committed and available teachers who want you to succeed. Seeing as though each student has a different personality and different needs, you will be given personalized support to allow you to acquire the skills of your study program. Whether it is for additional support to ensure your success, for assistance to help you specify and reach your goals or to develop the tools and independence needed to reach these goals, we will always be there for you.\n'
                                     'Finally, studying at Kelden also means enjoying the excellence of the only Bilingual Higher Institute of Professional Studies in the  Cameroon.\n'
                                     'Feel free to browse though our App to discover all the National Diploma programmes, Certification programmes, pre-university and university professional trainings we provide.\n',
                     textAlign: TextAlign.justify,
                     ),
                   ),
          Padding(padding: EdgeInsets.only(left: 15.0),
              child: new Text('LEILA Linus', textAlign: TextAlign.start, style: TextStyle(fontWeight: FontWeight.bold),)
          ),
          Padding(padding: EdgeInsets.only(left: 15.0),
              child: new Text('Executive Director\n\n', textAlign: TextAlign.start, style: TextStyle(fontWeight: FontWeight.bold),)
          ),

          new Text('Our History', textAlign: TextAlign.center, style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          Padding(padding: EdgeInsets.all(15.0),
            child: new Text('KEBHIPS started in 2014 as a small orientation center, offering consultancy services on public finance management.Later that same year it became a focal point offering assistance to Councils and decentralised structures in matters of local governance.'
                            'In 2016,the center was officially approved by the Ministry of Employment and Vocational Training as a Professional training center for Council Administration and Public Finance Management, with the name Keldon Bilingual institute of Professional Studies. Our excellent results gave an exponential confidence rating both nationally and internationally. As a result, in 2018,the government up graded the center to a University Institute, with the name Kelden Bilingual Higher institute of Professional Studies.'
                            'Today, Kelden Institute stands out as a reference to professional education in Cameroon and within the CEMAC sub region. Beside the variety of our specially designed national programmes, we equally offer internationally recognised Certifications in ACCA, Cisco networking, Amazon Web Services, Computer Aided Designs and Robostics.',
            textAlign: TextAlign.justify,
            ),
          ),
          new Text('Our vision', textAlign: TextAlign.center, style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          Padding(padding: EdgeInsets.all(15.0),
            child: new Text('The ultimate goal of  quality professional training is the quality--culture pervading our institution--KEBHIPS. Today professional--job oriented education stands at the crossroad of keeping pace with the emerging needs and the changing trends at the national and international job markets.This can only be achieved when you confront excellence in teaching and professionalism-- a careful choice KEBHIPS has not made any compromise. Ours is a holistic approach where classes are delivered in small groups, with maximised teacher--student interaction and engagement. Throughout your studies in Kelden Institute, you will grow to be more confident, self--reliant,'
                            'resourceful and develop a can--do attitude that will make all the difference in your professional life. WE SET THE PACE FOR OTHERS TO FOLLOW.',
            textAlign: TextAlign.justify,
            ),
          )
              ]
          ),
      );
  }
}
