import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../main.dart';

class NotreEquipePage extends StatefulWidget {
  @override
  _NotreEquipePageState createState() => _NotreEquipePageState();
}

class _NotreEquipePageState extends State<NotreEquipePage> {
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
          new Text('Nos Formateurs', textAlign: TextAlign.center, style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          Padding(padding: EdgeInsets.all(15.0),
            child: new Text('Kelden Institute dispose d\'une équipe pluridisciplinaire de formateurs permanents, pétris d\'expérience professionnelle et rompue dans l\'accompagnement des missions de formation d\'envergure ainsi que des consultants dont l\'effectif et les qualifications sont fonction des besoins identifiés.',textAlign: TextAlign.justify,
            ),
          ),
          new SizedBox(height: 15.0,),
          new Text('QUELQUES PERSONNELS FORMATEURS', textAlign: TextAlign.center, style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          Padding(padding: EdgeInsets.all(15.0),
            child: new Text('1- M. SAYAP MICHEL Inspecteur Principal des Régies Financiers de Classe Hors Échelle, Inspecteur No. 1 des Services Budgétaires MINFI.Formateur-expert en Finances Publiques et Gestion Patrimoniale,Professeur et Chef de Section Comptabilité Matières à l\'ENAM\n\n'
                            '2- Herve J. M. KEMAJOU Inspecteur Principal des Régies Financiers de Classe Hors Échelle,Chef de Poste Comptabilité Matières à la Présidence de la République, Professeur à l\'ENAM\n\n'
                            '3- ESSAGA MASSIA SALOMONSociologue, Expert en Planification du Développement, Diplômé de l\'IPD/AC, DESS en suivi et évaluation des projets\n\n'
                            '4- DR.NGWANG NGWANYI MICHAEL. PH.D in Records Management and Archives Administration. Senior Lecturer of Records and Archives Management ASMAC\n\n'
                            '5- NFORMI EMMANUEL CHUYE, B. A, M.A.,D.E.A in International Relations, Masters in International Cooperation for Development - University of PADUA(ITALY)\n\n'
                            '6- TSIMI EYARA IPEG Hors Échelle, Expert en Comptabilité Matières, Consultant À la Direction de la Comptabilité Matières MINFI\n\n'
                            '7- LEILA Linus Contrôleur Principal des Régies Financiers B.Sc.(Hons) Phys/Maths, Csc in Artificial intelligence, DUEG Science Économique, Diplômé de l\'ENAM, Expert en Contrôle de la Gestion Financières et Matières\n\n'
                            '8- SERGEOT EBA OWONA Educational Measurement and Evaluation Expert, Financial Analyst /Accountant.\n\n'
                            '9- Wirba Ebenezer Lem en,(Ph.D),Developmental Economist.\n\n'
                            '10- PECHANGWE GEORGE LLB(Hons), Maîtrise Private English Law.\n\n'
                            '11- MOLEMBA OTTOK (Doctorant), Geostrategie, Gestion des CTDs.\n\n'
                            '12- NDI ABOGSO ARNAUD(Doctorant), Expert en Gestion des CTDs.\n\n'
                            '13- NUMFOR JUDE Applied Economist and marketing strategist.\n\n'
                            '14- Weli Florence Project Management Expert.\n\n'
                            '15- Durrel Dioni Expert in Human Resource management,Project management and Communication.\n\n'
                            '16- Kum Eric Ebua Expert in Transport and Logistics Management Etc etc',textAlign: TextAlign.justify,
            ),
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
