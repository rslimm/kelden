import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../main.dart';

class LeMotDuDirecteurPage extends StatefulWidget {
  @override
  _LeMotDuDirecteurPageState createState() => _LeMotDuDirecteurPageState();
}

class _LeMotDuDirecteurPageState extends State<LeMotDuDirecteurPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        centerTitle: true,
        title: new Text(''),
      ),
      drawer: AppDrawer(),
      body: new ListView(
        children: <Widget>[
          new SizedBox(height: 15.0,),
          new Text('Le mot du directeur', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),),
          Padding(padding: EdgeInsets.all(15.0),
            child: new Text('Chère candidate, cher candidat, '
                'Au nom de l’ensemble des équipes de Kelden Bilingual Higher institute , je vous remercie chaleureusement de la confiance que vous nous accordez.'
                'Choisir son école c’est décider de faire une expérience unique, une expérience qui fera de vous l’acteur d’une formation professionnelle d\'excellence, c’est opter pour l’accompagnement dans la construction de votre projet professionnel, au sein d’entreprises, d’ONG, d’organismes publics internationaux, ou dans le cadre de la création de votre entreprise. Choisir son école, enfin, c’est contribuer à la richesse de sa vie associative et prendre place au sein de sa communauté de diplômés.'
                'Notre institut favorise votre développement personnel grâce à un projet pédagogique ambitieux et exigeant reposant sur trois dimensions: Une dimension intellectuelle, portée par la culture générale, les humanités et l’expérience internationale pour développer votre capacité à évoluer et agir dans la complexité de notre monde;'
                'Une dimension professionnelle, favorisée par la transversalité et la transdisciplinarité aux interfaces des sciences du management et des autres domaines... pour vous donner un socle de compétences solides et durables qui vous permettra d’être pleinement acteur de la conduite de nos organisations en perpétuelle évolution;Une dimension comportementale, qui intègre les principes de responsabilité, d’innovation et de travail collaboratif et qui vous invite à agir, chaque jour, en professionnel respecté pour ses compétences et son intégrité ainsi que sa capacité à apporter des solutions nouvelles et adaptées aux attentes de ses collaborateurs et de ses clients. En tant que Directeur de cette Grande École, le projet que je porte peut être résumé ainsi:'
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
          Container(
            //width: MediaQuery.of(context).size.width*0.5,
            child: Row(
              children: <Widget>[
                Text('KEBHIPS©${DateTime.now().year.toString()}. Powered by ', textAlign: TextAlign.center,style: TextStyle(fontSize: 10.0),),
                GestureDetector(
                    onTap: () async{
                      await launch('https://minse.io');
                    },
                    child: Text(' MINSE.IO', textAlign: TextAlign.center,style: TextStyle(fontSize: 10.0),)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
