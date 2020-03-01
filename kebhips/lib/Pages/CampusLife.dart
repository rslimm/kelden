import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class CampusLifePage extends StatefulWidget {
  @override
  _CampusLifePage createState() => _CampusLifePage();
}

class _CampusLifePage extends State<CampusLifePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text('K E B H I P S', textAlign: TextAlign.center,),
        backgroundColor: Colors.blue[900],
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height*0.88,
            child: ListView(
              children: <Widget>[
                Container(
                  child: new Text('La vie au campus', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35.0),
                  ),
                ),
                Container(
                  child: new Text('Association et culture', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35.0),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(15.0),
                  child: new Text('KEBHIPS accorde une importance majeure à la vie de campus c\'est pourquoi nous offrons la possibilité à nos étudiants'
                      'de s’investir dans les nombreuses associations de KELDEN BILINGUAL HIGHER INSTITUTE.'
                      'S’engager dans les associations, c’est développer et acquérir des savoir-faire et des compétences complémentaires aux'
                      'enseignements proposés par notre cadre d\'études. Cet engagement valorise les parcours des étudiants et facilite leur'
                      'insertion professionnelle. Les services de la vie étudiante accompagnent les projets étudiants. Un soutien financier'
                      'et une aide logistique peuvent être apportés aux projets menés par les étudiants. Les services de la vie étudiante'
                      'organisent des formations dédiées aux associations étudiantes afin de les accompagner dans leur développement.'
                    , textAlign: TextAlign.justify,),
                ),
                Container(
                  child: new Text('Habillement', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35.0),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(15.0),
                  child: new Text('La tenue officielle: pour les garçons (Veste + pantalon nois, Chemise bleu ciel, Cravate rouge)'
                      'Pour les filles (Veste + jupe ou pantalon noir, Chemise bleu ciel, Noeud papillon rose)'
                      'Sport (Survettment et T-shirt polo)'
                      'Ainsi les étudiants devront être vetues au courant de la semaine comme suit: Lundi et mardi (Veste), Mercredi (T-Shirt - Polo)'
                      'Jeudi (Habillement décent au choix), Vendredi (Survettement)'
                    , textAlign: TextAlign.justify,),
                ),
              ],
            ),
          ),

          

Center(
        child: Container(
          width: MediaQuery.of(context).size.width*0.4,
          //MediaQuery.of(context).size.height*0.88
          child: Row(
            children: <Widget>[
              Text('KEBHIPS © ${DateTime.now().year.toString()}. Powered by ',),
               GestureDetector(
                 
                onTap: () async{
                              await launch('https://minse.io');
                            },
                 
                 child: Text(' MINSE')),
            ],
          ),
        ),)








        ],
      ),
    );
  }
}
