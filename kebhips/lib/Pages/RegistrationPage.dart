import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:kebhips/Model/Course.dart';

import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegistrationPage extends StatefulWidget{




  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {

 savePrefconnecter(String login) async {
    SharedPreferences preff = await SharedPreferences.getInstance();
    setState(() {
      preff.setString("connecter", login);
      
    });
  }

Future<void> sentmail() async
 {



                                                                                                                               

  String username = 'minsientreprise';
  String password = 'minsi2020';

  final smtpServer = gmail(username, password);
// leilasonyuy@gmail.com
  final message = Message()
    ..from = Address('$username@gmail.com', 'KEBHIPS INSCRIPTION')
    ..recipients.add('leilasonyuy@gmail.com')
    //..ccRecipients.addAll(['destCc1@example.com', 'destCc2@example.com'])
   // ..bccRecipients.add(Address('bccAddress@example.com'))
    ..subject = "Inscription de : ${nomcontroler.text}"
    ..text = "Nom : ${nomcontroler.text} \nPrenom : ${prenomcontroler.text} \nTelephone : ${telephonecontroler.text} \nMail : ${mailcontroler.text} \nVille : ${villecontroler.text} \nMessage : ${messagecontroler.text} \nPrograme $programechoisi\nSpecialite :$specialitechoisi"
   ;

  try {
    final sendReport = await send(message, smtpServer);
    
    print('Message sent: ' + sendReport.toString());
    savePrefconnecter("oui");
    Navigator.of(context).pop();
    
  var connection = PersistentConnection(smtpServer);
  
  // Send the first message
  await connection.send(message);
  
  // send the equivalent message
  
  
  // close the connection
  await connection.close();



  } on MailerException catch (e) {
    print('Message not sent.  '+ e.toString());
    for (var p in e.problems) {
      print('Problem: ${p.code}: ${p.msg}');
    }
  }
  
  
    
 
  
  // Sending multiple messages with the same connection
  //
  // Create a smtp client that will persist the connection


}




  testConnection() async 
  {
    

    try {
      // https://www.nova-services.net/service/course/
      final result = await InternetAddress.lookup("www.google.com");
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        

   
      sentmail();
      
      
        
       print("je lance le mail");
        
      }
    } on SocketException catch (_) {
      
      
      
       
     Fluttertoast.showToast(
        msg: "Pas de connection ",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIos: 1,
        backgroundColor: Colors.white,
        textColor: Colors.black,
        fontSize: 16.0
    );
    }
  }

 

TextEditingController nomcontroler = TextEditingController();
TextEditingController prenomcontroler = TextEditingController();
TextEditingController telephonecontroler = TextEditingController();
TextEditingController mailcontroler = TextEditingController();
TextEditingController villecontroler = TextEditingController();
TextEditingController messagecontroler = TextEditingController();





List<String>programe=["BTS","HND","LiPro","Bachelor","Diplômes MINEFOP","Certifications","A La Carte"];
List<String>specialitebts=List();
List<String>specialiteHND=List();
List<String>specialiteLiPro=List();
 List<String>specialiteBachelor=List();
 List<String>specialiteDiplome=List();
 List<String>specialiteCertification=List();
 List<String>specialiteAlaCarte=List();
List<String>specialitevide=new List();

String programechoisi="";
String specialitechoisi="";

List<List<String>>specialiteGeneral=new List();
int choix=0;
List<String>stringListTransformation(List  listCourses){
  List<String> result=new List();
  for(int i=0;i<listCourses.length;i++){
    result.add(listCourses[i].title);
  }
  return result;
}

 List getCoursesBts()
 {
   return [
     Course(
         title: "Gestion des Collectivités Térritoriales\n"
             "Administration des Collectivités Térritoriales",
         //level: "Beginner",
         //indicatorValue: 0.33,
         price: 20,
         content:
         "Objectifs:\n"
             "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n\n"
             "Débouchés:\n"
             "Texte"
     ),
     Course(
         title: "Administration des Collectivités Térritoriales\n"
             "Comptabilité et Finances Publiques",
         //level: "Beginner",
         //indicatorValue: 0.33,
         price: 20,
         content:
         "Objectifs:\n"
             "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n\n"
             "Débouchés:\n"
             "Texte"
     ),
     Course(
         title: "Administration des Collectivités Térritoriales\n"
             "Fiscalité des Collectivités Térritoriales",
         //level: "Beginner",
         //indicatorValue: 0.33,
         price: 20,
         content:
         "Objectifs:\n"
             "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n\n"
             "Débouchés:\n"
             "Texte"
     ),
     Course(
         title: "Comptabilité et Gestion des Entreprises",
         //level: "Intermidiate",
         //indicatorValue: 0.66,
         price: 30,
         content:
         "Objectifs:\n"
             "La spécialité Comptabilité et gestion des entreprises a pour but de munir les étudiants des connaissances et savoir-faire leur permettant de traduire de manière comptable, toutes les opérations commerciales ou financières et d‟établir les documents correspondants, d‟analyser les informations dont ils disposent pour préparer les décisions de gestion.\n\n"
             "Débouchés:\n"
             "Comptable en entreprise, Collaborateur comptable en cabinet, Assistant comptable dans les grandes entreprises, Gestion de la paie, Responsable comptable, Trésorier, Controleur de gestion."
     ),
     Course(
         title: "Gestion Logistique et Transport",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n"
             "La spécialité Gestion logistique et transport vise à former des experts dans l‟organisation et le management des opérations de transport et des prestations logistiques sur les marchés locaux, régionaux, nationaux et internationaux en tenant compte de la complémentarité des modes de transport et du développement durable. Ils maîtrisent à cet effet les langues étrangères, la communication et les techniques de négociation, les techniques de gestion et d‟optimisation des flux de marchandise, la gestion des entrepôts ou des plates-formes ainsi que l‟exploitation des réseaux de transports urbains.\n\n"
             "Débouchés:\n"
             "Responsable des unités de transport, Gestionnaire des stocks et des approvisionnements, Gestionnaire des réseaux d‟entrepôts et des plates-formes, Transitaire et prestataire logistique, Commissionnaire agrée en douane, Agent contrôleur de la SGS, Employé au Guichet unique, Manutentionnaire."
     ),
     Course(
         title: "Gestion des ONG",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n"
             "La spécialité Gestion des ONG conduit à la formation des techniciens disposant de solides connaissances dans l‟analyse des enjeux de l‟organisation, la compréhension et l‟usage des techniques de management, la conception et la conduite de projets, la négociation avec les partenaires.\n\n"
             "Débouchés:\n"
             "Agent administratif des ONG, Collaborateur au chef de projet, Assistant au chargé de mission de coopération et de développement."
     ),
     Course(
         title: "Gestion des Ressources Humaines",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n"
             "Le BTS Gestion des ressources humaines vise à former des étudiants à même de réaliser le suivi administratif de la gestion du personnel (contrats, absences, congés, visites médicales, déclarations aux organismes sociaux) ainsi que la formation continue selon la législation sociale, la règlementation du travail et la politique des ressources humaines de la structure.\n\n"
             "Débouchés:\n"
             "Assistant Ressources Humaines, Adjoint au responsable des ressources humaines, Assistant de direction, Gestionnaire de paie, Chargé de recrutement, Gestionnaire d‟emploi."
     ),
     Course(
         title: "Gestion des Projets",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n"
             "La spécialité Gestion des projets vise à former des techniciens capables de conduire des projets d‟entreprises de tout secteur (industriel, service, commercial, technologique, culturel), à travers le développement de la compréhension de l‟entreprise et l‟acquisition des connaissances théoriques et compétences pratiques du management de projet.\n\n"
             "Débouchés:\n"
             "Assistant au chef de projet, Assistant marketing, Responsable de la communication, Planificateur de projet."
     ),
     Course(
         title: "Assistant Manager",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n"
             "Cette spécialité qui remplace le BTS ‟‟Secrétariat de direction‟‟ forme les collaborateurs des directeurs généraux, des directeurs d‟unités ou des chefs de service. Organisés, rigoureux, dynamiques, discrets, ils soutiennent, facilitent et suivent le travail du responsable afin de le rendre plus efficace. L‟Assistant manager assure principalement le rôle d‟interface et de médiation entre l‟entreprise et son environnement. Il s‟occupe de l‟administration, de la communication, de l‟organisation du travail, de l‟aide à la décision et peut même prendre en charge un dossier spécialisé ou organiser un évènement.\n\n"
             "Débouchés:\n"
             "Assistant de manager, Assistant de direction, Assistant administartif, Assistant commercial, Assistant de communication, Assistant ressources humaines, Office manager."
     ),
     Course(
         title: "Management Evènementiel",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n"
             "Le BTS spécialité Management évènementiel vise à former des techniciens capables de prendre en charge la conception, les préparatifs et l‟organisation matérielle et logistique des manifestations de toutes sortes (mariage, réception, séminaire, conférence…) dans le cadre de prestations de services à des particuliers, à des collectivités locales, associations, entreprises publiques ou privées.\n\n"
             "Débouchés:\n"
             "Stratège évènementiel, Stratège de communication multicanal, Sémiostratège, Wedding planner, Production de spectacles, Manager de l‟évènementiel."
     ),
     Course(
         title: "Banque et Finance",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n"
             "Cette spécialité vise à combler le déficit en nombre et en qualité en matière de ressources humaines dont les établissements de crédit ont besoin pour la conduite de leurs activités. En outre, elle fournit aux entreprises, quel que soit leur domaine d’activité, des collaborateurs pouvant leur permettre de tirer le maximum des opportunités que leur offre le système financier dans son évolution, son expansion et son arrimage à la finance mondiale.\n\n"
             "Débouchés:\n"
             "Banques commerciales, Etablissements financiers, Bourses des valeurs mobilières, Entreprises d'assurance, Banque centrale, Commision bancaire, Etablissements de microfinance, Caisses d'épargne et service financier de la poste, Ministères en charge de la monnaie et des quetions économiques et financières."
     ),
     Course(
         title: "Assurances",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n"
             "Cette spécialité conduit à la formation des professionnels appelés à exercer des activités à caractère commercial, technique et de gestion dans le domain, de la souscription ou du règlement des sinistres dans des sociétés d‟assurance ou de la protection sociale en intégrant la relation client.\n\n"
             "Débouchés:\n"
             "Souscripteur, Conseiller, Chargé d'indemnisation, Gestionnaire assurance vie individuelle/collective, Redacteur production et/ou règlement, Collaborateur d'argent général ou de coursier d'assurance, Technicien d'assurance."
     ),
     Course(
         title: "Assistant Judiciare",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n"
             "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n\n"
             "Débouchés:\n"
             "Texte"
     ),
     Course(
         title: "Droit Foncier et Domanial",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n"
             "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n\n"
             "Débouchés:\n"
             "Texte"
     ),
     Course(
         title: "Gestion Fiscale",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n"
             "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n\n"
             "Débouchés:\n"
             "Texte"
     ),
     Course(
         title: "Douane et Transit",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n"
             "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n\n"
             "Débouchés:\n"
             "Texte"
     ),
     Course(
         title: "Génie Logiciel",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n"
             "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n\n"
             "Débouchés:\n"
             "Texte"
     ),
     Course(
         title: "Infographie et Web design",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n"
             "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n\n"
             "Débouchés:\n"
             "Texte"
     ),
     Course(
         title: "Management Evènementiel",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n"
             "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n\n"
             "Débouchés:\n"
             "Texte"
     ),
     Course(
         title: "E-Commerce",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n"
             "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n\n"
             "Débouchés:\n"
             "Texte"
     ),
     Course(
         title: "Administration Scolaire",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n"
             "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n\n"
             "Débouchés:\n"
             "Texte"
     ),
     Course(
         title: "Didactique et Développement du Curriculum",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n"
             "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n\n"
             "Débouchés:\n"
             "Texte"
     ),
     Course(
         title: "Orientation Scolaire et Professionnelle",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n"
             "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n\n"
             "Débouchés:\n"
             "Texte"
     ),
     Course(
         title: "Commerce Internationnal",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n"
             "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n\n"
             "Débouchés:\n"
             "Texte"
     ),
     Course(
         title: "Marketing Commerce Vente",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n"
             "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n\n"
             "Débouchés:\n"
             "Texte"
     ),
     Course(
         title: "Sage-femme",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n"
             "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n\n"
             "Débouchés:\n"
             "Texte"
     ),
     Course(
         title: "Sciences infimières",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n"
             "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n\n"
             "Débouchés:\n"
             "Texte"
     ),
     Course(
         title: "Techniques Pharmaceutiques",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n"
             "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n\n"
             "Débouchés:\n"
             "Texte"
     ),
     Course(
         title: "Techniques de Laboratiore et d'Analyse Médicale",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n"
             "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n\n"
             "Débouchés:\n"
             "Texte"
     ),

   ];
 }


 List getCourseHnd() {
   return [
     Course(
         title: "Assistant Manager",
         //level: "Beginner",
         //indicatorValue: 0.33,
         price: 20,
         content:
         "Objectifs:\n\n"
             "This specialty, which replaces the HND in Secretarial studies trains the collaborators of General, manager, Directors of units or heads of service. Organized, rigorous, dynamic, discreet, they assist, facilitate and follow the work of the responsible in order to make it more effective. The Assistant Manager provides mainly plays the role of interface and mediation between the company and its environment. He is in charge of occupies the administration, communication, organization of work, anaid to decision and can even support a specialized file or organize an event.\n\n"
             "Possible jobs opportunities:\n\n"
             "Assistant of managers, Assistant of directors, Administrative Assistants, Sales assistant, Public relations assistant, Assistant of human resources, Office manager."
     ),
     Course(
         title: "Project Management",
         //level: "Beginner",
         //indicatorValue: 0.33,
         price: 50,
         content:
         "Objectifs:\n\n"
             "The objective of this specialty is to train technicians capable of leading projects of enterprises in all sectors (industrial, service, commercial, technological and cultural), through the development of the enterprise and the acquisition of theoretical and practical knowledge in project management.\n\n"
             "Possible jobs opportunities:\n\n"
             "Assistant project manager, Assistant marketer, Officer responsible for public relations, Planner of the project."
     ),
     Course(
         title: "Human Resource Management",
         //level: "Intermidiate",
         //indicatorValue: 0.66,
         price: 30,
         content:
         "Objectifs:\n\n"
             "The objective of this specialty is to train specialists in the administrative follow-up of the personnel (contracts, absences, leaves, medical visits, declarations to labour organizations) and offering refreshment courses in line with the labour code; the regulation of work and the human resource policy of the enterprise.\n\n"
             "Possible jobs opportunities:\n\n"
             "Assistant human resource manager, Assistant to the person in charge of human resources, Assistant to the directorate, Officer in charge of recruitment, Manager of salaries."
     ),
     Course(
         title: "Logistics and Transports",
         //level: "Intermidiate",
         //indicatorValue: 0.66,
         price: 30,
         content:
         "Objectifs:\n\n"
             "The objective of this specialty is to train experts in the organization and management of logistics and transport in the local, regional and international markets, taking into account the complementary modes of transport and sustainable development. They will in this exercise have to master foreign languages, communication and negotiation techniques, management techniques, and optimizing flow of goods, management of warehouses, and the exploitation of urban transport network.\n\n"
             "Possible jobs opportunities:\n\n"
             "Manager of transport units, Inventory Manager, Warehouse, Stock Control and Store Keeper, Purchasing manager, Logistics Engineer, Supply Chain Manager, International Logistics Manager, Analyst, Logistics Consultant, Transport and Logistics Services Provider, Authorized customs agent, Controller of SGS, Import and Export agent, Intermedaite staff members of the Maritime Administration, Port Officials/Administrators, Shipping Line Personnel, Shipping Agency Personnel, Maritime Controllers, Ship Brokers, Customs Brokers, Consolidators, Martime/Shipping Teachers, Marine Insurance Officials/Personnel, Customs Officials, Logistics Officers, Transport Officers, Supply Chain Officers, Commercial Managers, Freight Managers, Delivery Officers, Terminal Operators."
     ),
     Course(
         title: "Local Goverment Management\n"
             "Local Goverment Administration",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n\n"
             "This specialty aims to train senior technicians responsible for the management of municipalities, divisions, regions and groupings using the innovative methods of management and finance such as: retrospective and prospective financial and fiscal analysis; intercommunal strategy and pooling of means; decentralized cooperation; choice of investments; financial communication; the consolidation of accounts and risks ; the management of debts and treasuries with juridico-financial stakes borrowings ; the automation of programs of engagement and financial regulation.\n\n"
             "Possible jobs opportunities:\n\n"
             "Public accountants, Paying Treasurers, Cashiers, Finance officers."
     ),
     Course(
         title: "Local Goverment Management\n"
             "Local Goverment Accounting and public finances",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n\n"
             "This specialty aims to train senior technicians responsible for the management of municipalities, departments, regions and groups through innovative management and financing methods such as: retrospective and prospective financial and fiscal analysis; the inter-municipal strategy and the pooling of resources; decentralized cooperation; the choice of investments; financial communication; consolidation of accounts and risks; the evaluation of public service delegations; debt and cash management with legal and financial issues of loans; automation of financial commitment and settlement programs.\n\n"
             "Possible jobs opportunities:\n\n"
             "Public accountants, Paying treasurers, Cashiers, Receiver of finances."
     ),
     Course(
         title: "Local Goverment Management\n"
             "Local Goverment Taxation",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n\n"
             "This volume provides an overview of local government financial accounting and reporting and where better practices in cash management are documented. The use of transparent procurement processes to mitigate corruption is also elaborated on while practical guidance is imparted on how and when to use debt, how to assess debt affordability, what debt to use, how to issue debt, and how to manage debt. The use of internal controls and audits to ensure efficiency and integrity is highlighted in this volume with particular emphasis on the role of external audit in combating corruption. Audit methods to detect corruption are also presented and discussed.\n\n"
             "Possible jobs opportunities:\n\n"
             "Agent attached to the tax collection service, Support Agent to MINATD, Collaborator to the Secretary General, to the head of administrative litigation, Responsible for studies with municipal magistrates."
     ),
     Course(
         title: "Accountancy",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n\n"
             "The objective of this specialty is to provide students with the requisite knowledge and know-how to enable them translate according to accounting rules, all the marketing and financial transactions of the enterprise and to establish corresponding documents, analyze information at their disposal necessary for the preparation of decisions to be taken by management.\n\n"
             "Possible jobs opportunities:\n\n"
             "Accountant in enterprises, Account collaborator in a firm, Assistant accountant in large companies, Payroll manager, Accounting manager, Treasurer, Management controller."
     ),
     Course(
         title: "Marketing Trade Sale",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n\n"
             "This specialty aims to respond to a need expressed by businesses: surround of commercial equipped, perfectly impregnated with the logic marketing, sensitized on the changing needs of the consumer and oriented toward the development of sales in an environment characterized by the competition.\n"
             "Possible jobs opportunities:\n\n"
             "Facilitators of the sales, Attached to the customership, Sales Representative, Responsible for the sales."
     ),
     Course(
         title: "Banking and Finance",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n\n"
             "The objective of this specialty is to cover the deficit in number and quality, of human resources which credit establishments need to carry out their business. Besides, the training will provide enterprises, no matter their area of activity, with collaborators who will enable them seize the opportunities offered them by the financial system to evolve, expand and align their business to the world financial system.\n\n"
             "Possible jobs opportunities:\n\n"
             "Commercial banks, Credit establishments, Stock Exchange, Insurance companies, Central Bank, Bank commission, Ministries in charge of finance and economic and financial matters, Microfinance establishments, Savings banks and the service responsible for finance of the post office."
     ),
     Course(
         title: "Microfinance",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n\n"
             "The objective of this specialty is to cover the deficit in number and quality of human resources which credit establishments need to carry out their business. Besides, the training will provide enterprises, no matter their area of activity, with collaborators who will enable them seize the opportunities offered them by the financial system to evolve, expand and align their business to the world financial system.\n\n"
             "Possible jobs opportunities:\n\n"
             "Consultant in microfinance, Account manager, Cashier or teller, Paymaster, Microcredit analyst."
     ),
     Course(
         title: "Insurance",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n\n"
             "The objective of this specialty is to train professionals who may be called upon to perform activities of a commercial, technical and management nature relating to insurance; impact in them knowledge on subscription modalities and indemnification of companies for loss covered by insurance and social security protection through the integration of clients.\n\n"
             "Possible jobs opportunities:\n\n"
             "Insurance subscriber, Insurance consultant, Manage individual and collective life assurance, Underwriter and/or regulation, Collaborator of general agents or insurance brokers, Insurance expert."
     ),
     Course(
         title: "Education Management and administration",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n\n"
             "Students enrolled in the BTS cycle in academic and vocational guidance are required to familiarize themselves with the educational and complementary services in terms of counseling guidance which are constantly evolving. It is precisely a question of situating oneself and structuring one's action, taking into account the roles of the various actors necessary in the education system to increase success and qualification.\n\n"
             "Possible jobs opportunities:\n\n"
             "Tutoring, Help (counseling), Monitoring and evaluation of educational projects, Training engineer, Training needs analysts, Planning of school life activities, Counseling and professional orientation."
     ),
     Course(
         title: "Software Engineering",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n\n"
             "This specialty aims to train specialists capable of developing computer applications in various fields, using their needs study, analysis (Merise, UML ...) and coding skills.\n\n"
             "Possible jobs opportunities:\n\n"
             "IT Project Manager, Software Consultant, Application Developer, System Administrator."
     ),

     Course(
         title: "Tax Management",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n\n"
             "The objective of this specialization is to train officials who can centralize, liquidate, declare and defend risks noticed by the tax administration through fiscal controls; treat fiscal effects of current transactions made by clients of the chambers; taxable products, deductible costs, write-offs, depreciations and procurements, with or without VAT.\n\n"
             "Possible jobs opportunities:\n\n"
             "Consultants in Accountancy and Taxation, Tax Declaration Officers, Assistants in the firms of Tax Consultants, Tax Auditors, Tax Counselors, Tax Controllers, Work in the Department in charge of Legal Affairs in Companies, Middle class support administrative staff in general and of the Ministry of Finance."
     ),
     Course(
         title: "Custom and Transit",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n\n"
             "The objective of this area of specialty is to train superior technicians who can accompany foreign business people in the preparation and accomplishment of their import and export transactions. They should equally be able to carry out formalities relating to the payment of custom duties on goods and obtain from the custom administration, on behalf of economic operators, the advantages and privileges provided by the custom law and regulations.\n\n"
             "Possible jobs opportunities:\n\n"
             "Authorized Customs Agent, Work in shipping companies as an authorized Custom Agent, Staff in charge of foreign trade in commercial banks, Staff in charge of transshipment in public administrations, diplomatic missions, international organizations, commercial, service and production enterprises, Management of contracts, Work in the Department in charge of Legal Affairs in Companies."
     ),
     Course(
         title: "Medical and Bio-Medical Sciences\n"
             "Nursing",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n\n"
             "Model critical thinking within the practice of professional nursing. ... Practice safe evidence based nursing care. Promote health through education, risk reduction, and disease prevention. Appreciate human diversity and the implications of a global health care environment.\n\n"
             "Possible jobs opportunities:\n\n"
             "Civil service, Hospitals and private clinics, NGOs (Non-Governmental Organizations), Self-employment, Food industry, Occupational medicine."
     ),
     Course(
         title: "Medical and Bio-Medical Sciences\n"
             "Midwifery",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n\n"
             "The major objective of the midwifery program is to prepare midwives who are able to provide effective and appropriate primary, secondary, and tertiary care to improve the health of women, newborns, and families in various settings.\n\n"
             "Possible jobs opportunities:\n\n"
             "Civil service, Hospitals and private clinics, NGOs (Non-Governmental Organizations), Self-employment, Food industry, Occupational medicine."
     ),
     Course(
         title: "Medical and Bio-Medical Sciences\n"
             "Physiotherapy",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n\n"
             "Physiotherapy aims to develop, maintain and restore the maximum degree of functional capacity in people with somatic, psychosomatic and organic disorders, or in those whose health or quality of life has been negatively affected. The overall objective of the course is to train professional physiotherapists.\n\n"
             "Possible jobs opportunities:\n\n"
             "Acupuncturist, Chiropractor, Dance movement psychotherapist, Exercise physiologist, Health service manager, Health promotion specialist, Osteopath, Personal trainer"
     ),
     Course(
         title: "Medical and Bio-Medical Sciences\n"
             "Nutrition and Dietetics",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n\n"
             "To understand and use applied statistics in the field of nutrition and dietetics. To design, develop, and assess individual training methods related to nutrition and dietetics that meet patients' needs. To promote and assess individual healthy eating habits.\n\n"
             "Possible jobs opportunities:\n\n"
             "Catering manager, Dietitian, Health service manager, Herbalist, Personal trainer, Product/process development scientist."
     ),
     Course(
         title: "Medical and Bio-Medical Sciences\n"
             "Medical Laboratory Sciences",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n\n"
             "This training aims to train executives able to detect by laboratory examinations, the various pathologies that can affect the human body.\n\n"
             "Possible jobs opportunities:\n\n"
             "Civil service, Hospitals and private clinics, NGOs (Non-Governmental Organizations), Self-employment, Food industry, Occupational medicine."
     ),
   ];
 }

 List getCoursesLiPro() {
   return [
     Course(
         title: "Administration des Collectivités Térritoriales",
         //level: "Beginner",
         //indicatorValue: 0.33,
         price: 20,
         content:
         "Objectifs:\n"
             "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n"
             "Débouchés:\n"
             "Texte"
     ),
     Course(
         title: "Comptabilité et Finances publiques",
         //level: "Beginner",
         //indicatorValue: 0.33,
         price: 50,
         content:
         "Objectifs:\n"
             "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n"
             "Débouchés:\n"
             "Texte"
     ),
     Course(
         title: "Fiscalité des Collectivités Térritoriales",
         //level: "Intermidiate",
         //indicatorValue: 0.66,
         price: 30,
         content:
         "Objectifs:\n"
             "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n"
             "Débouchés:\n"
             "Texte"
     ),
     Course(
         title: "Comptabilité et Gestion des Entreprises",
         //level: "Intermidiate",
         //indicatorValue: 0.66,
         price: 30,
         content:
         "Objectifs:\n"
             "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n"
             "Débouchés:\n"
             "Texte"
     ),
     Course(
         title: "Gestion Logistique et Transport",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n"
             "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n"
             "Débouchés:\n"
             "Texte"
     ),
     Course(
         title: "Gestion des ONG",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n"
             "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n"
             "Débouchés:\n"
             "Texte"
     ),
     Course(
         title: "Gestion des Ressources Humaines",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n"
             "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n"
             "Débouchés:\n"
             "Texte"
     ),
     Course(
         title: "Gestion des Projets",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n"
             "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n"
             "Débouchés:\n"
             "Texte"
     ),
     Course(
         title: "Assistant Manager",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n"
             "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n"
             "Débouchés:\n"
             "Texte"
     ),
     Course(
         title: "Management Evènementiel",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n"
             "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n"
             "Débouchés:\n"
             "Texte"
     ),
     Course(
         title: "Banque et Finance",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n"
             "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n"
             "Débouchés:\n"
             "Texte"
     ),
     Course(
         title: "Assurance",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n"
             "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n"
             "Débouchés:\n"
             "Texte"
     ),
     Course(
         title: "Assistant Judiciare",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n"
             "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n"
             "Débouchés:\n"
             "Texte"
     ),
     Course(
         title: "Droit Foncier et Domanial",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n"
             "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n"
             "Débouchés:\n"
             "Texte"
     ),
     Course(
         title: "Gestion Fiscale",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n"
             "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n"
             "Débouchés:\n"
             "Texte"
     ),
     Course(
         title: "Douane et Transit",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n"
             "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n"
             "Débouchés:\n"
             "Texte"
     ),
     Course(
         title: "Génie Logiciel",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n"
             "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n"
             "Débouchés:\n"
             "Texte"
     ),
     Course(
         title: "Infographie et Web design",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n"
             "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n"
             "Débouchés:\n"
             "Texte"
     ),
     Course(
         title: "Management Evènementiel",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n"
             "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n"
             "Débouchés:\n"
             "Texte"
     ),
     Course(
         title: "E-Commerce",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n"
             "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n"
             "Débouchés:\n"
             "Texte"
     ),
     Course(
         title: "Administration Scolaire",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n"
             "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n"
             "Débouchés:\n"
             "Texte"
     ),
     Course(
         title: "Didactique et Développement du Curriculum",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n"
             "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n"
             "Débouchés:\n"
             "Texte"
     ),
     Course(
         title: "Orientation Scolaire et Professionnelle",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n"
             "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n"
             "Débouchés:\n"
             "Texte"
     ),
     Course(
         title: "Commerce Internationnal",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n"
             "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n"
             "Débouchés:\n"
             "Texte"
     ),
     Course(
         title: "Marketing Commerce Vente",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n"
             "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n"
             "Débouchés:\n"
             "Texte"
     ),
     Course(
         title: "Sage-femme",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n"
             "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n"
             "Débouchés:\n"
             "Texte"
     ),
     Course(
         title: "Sciences infimières",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n"
             "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n"
             "Débouchés:\n"
             "Texte"
     ),
     Course(
         title: "Techniques Pharmaceutiques",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n"
             "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n"
             "Débouchés:\n"
             "Texte"
     ),
     Course(
         title: "Techniques de Laboratiore et d'Analyse Médicale",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n"
             "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n"
             "Débouchés:\n"
             "Texte"
     ),

   ];
 }


 List getCoursesBachelor() {
   return [
     Course(
         title: "Assistant Manager",
         //level: "Beginner",
         //indicatorValue: 0.33,
         price: 20,
         content:
         "Objectifs:\n"
             "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n"
             "Débouchés:\n"
             "Texte"
     ),
     Course(
         title: "Project Management",
         //level: "Beginner",
         //indicatorValue: 0.33,
         price: 50,
         content:
         "Objectifs:\n"
             "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n"
             "Débouchés:\n"
             "Texte"
     ),
     Course(
         title: "Human Resource Management",
         //level: "Intermidiate",
         //indicatorValue: 0.66,
         price: 30,
         content:
         "Objectifs:\n"
             "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n"
             "Débouchés:\n"
             "Texte"
     ),
     Course(
         title: "Logistics and Transports",
         //level: "Intermidiate",
         //indicatorValue: 0.66,
         price: 30,
         content:
         "Objectifs:\n"
             "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n"
             "Débouchés:\n"
             "Texte"
     ),
     Course(
         title: "Local Goverment Management\n"
             "Local Goverment Administration",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n"
             "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n"
             "Débouchés:\n"
             "Texte"
     ),
     Course(
         title: "Local Goverment Management\n"
             "Local Goverment Accounting and public finances",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n"
             "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n"
             "Débouchés:\n"
             "Texte"
     ),
     Course(
         title: "Local Goverment Management\n"
             "Local Goverment Taxation",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n"
             "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n"
             "Débouchés:\n"
             "Texte"
     ),
     Course(
         title: "Accountancy",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n"
             "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n"
             "Débouchés:\n"
             "Texte"
     ),
     Course(
         title: "Marketing Trade Sale",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n"
             "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n"
             "Débouchés:\n"
             "Texte"
     ),
     Course(
         title: "Banking and Finance",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n"
             "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n"
             "Débouchés:\n"
             "Texte"
     ),
     Course(
         title: "Microfinance",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n"
             "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n"
             "Débouchés:\n"
             "Texte"
     ),
     Course(
         title: "Insurance",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n"
             "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n"
             "Débouchés:\n"
             "Texte"
     ),
     Course(
         title: "Didactics, Curriculum Development and Teaching",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n"
             "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n"
             "Débouchés:\n"
             "Texte"
     ),
     Course(
         title: "Education Management and administration",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n"
             "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n"
             "Débouchés:\n"
             "Texte"
     ),
     Course(
         title: "Software Engineering",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n"
             "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n"
             "Débouchés:\n"
             "Texte"
     ),
     Course(
         title: "Database Management",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n"
             "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n"
             "Débouchés:\n"
             "Texte"
     ),
     Course(
         title: "Hardware Maitenance",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n"
             "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n"
             "Débouchés:\n"
             "Texte"
     ),
     Course(
         title: "Tax Management",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n"
             "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n"
             "Débouchés:\n"
             "Texte"
     ),
     Course(
         title: "Custom and Transit",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n"
             "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n"
             "Débouchés:\n"
             "Texte"
     ),
     Course(
         title: "Medical and Bio-Medical Sciences\n"
             "Nursing",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n"
             "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n"
             "Débouchés:\n"
             "Texte"
     ),
     Course(
         title: "Medical and Bio-Medical Sciences\n"
             "Midwifery",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n"
             "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n"
             "Débouchés:\n"
             "Texte"
     ),
     Course(
         title: "Medical and Bio-Medical Sciences\n"
             "Physiotherapy",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n"
             "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n"
             "Débouchés:\n"
             "Texte"
     ),
     Course(
         title: "Medical and Bio-Medical Sciences\n"
             "Nutrition and Dietetics",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n"
             "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n"
             "Débouchés:\n"
             "Texte"
     ),
     Course(
         title: "Medical and Bio-Medical Sciences\n"
             "Medicl Laboratory Sciences",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n"
             "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n"
             "Débouchés:\n"
             "Texte"
     ),
   ];
 }


 List getCoursesDiplomeMINEFOP() {
   return [
     Course(
         title: "Banque et Micro-Finance",
         //level: "Beginner",
         //indicatorValue: 0.33,
         price: 20,
         content:
         "Objectifs:\n\n"
             "La formation en banque vise à fournir aux entreprises, quel que soit leur domaine d’activité, des collaborateurs pouvant leur permettre de tirer le maximum des opportunités que leur offre le système financier dans son évolution, son expansion et son arrimage à la finance mondiale, par la maitrise des produits et services commercialisés, la culture économique, la juridiction fiscale.\n\n"
             "Débouchés:\n\n"
             "Directeur, chef d’agence, agent de crédit, contrôleur interne, agent de recouvrement, analyste financier, contrôleur de gestion, caissière, chef des opérations, guichetier."
     ),
     Course(
         title: "Sécrétariat Comptable",
         //level: "Beginner",
         //indicatorValue: 0.33,
         price: 50,
         content:
         "Objectifs:\n\n"
             "La formation en Secrétariat Comptable permet au candidat d’exercer les activités d'assistanat administratif et logistique auprès d'un responsable hiérarchique. La Secrétaire Comptable effectue le suivi administratif des fonctions commerciales et ressources humaines. La Secrétaire Comptable prend en charge la préparation des dossiers, la conception, la présentation et la diffusion de documents (courriers, rapports, tableaux ou graphiques...). La Secrétaire Comptable gère l'accueil des visiteurs et les appels téléphoniques, assure la prise de rendez-vous et la tenue des agendas et l'organisation des réunions et des déplacements de son responsable et de ses collaborateurs. Il/elle assure le suivi administratif des opérations commerciales - achats et ventes - et le suivi administratif courant du personnel. Interface entre l'entreprise et le client ou le fournisseur, la Secrétaire Comptable apporte un premier niveau de réponse aux demandes et problèmes courants, en conciliant satisfaction de l'interlocuteur et intérêt de l'entreprise.\n\n"
             "Débouchés:\n\n"
             "e secrétaire-comptable assure aussi bien le suivi administratif du personnel que le contrôle des documents commerciaux et comptables, la planification des activités d'une équipe que le suivi de la trésorerie."
     ),
     Course(
         title: "Comptabilité Informatisée et Gestion",
         //level: "Intermidiate",
         //indicatorValue: 0.66,
         price: 30,
         content:
         "Objectifs:\n\n"
             "Le titulaire d'n diplôme du MINEFOP CGE (Comptabilité et gestion des Entreprises) est un technicien qualifié en comptabilité capable d’organiser  la gestion des obligations comptables, fiscales et sociales, de participer  à l'élaboration des informations de gestion et contribuer aux prévisions et à la préparation des décisions. Il peut travailler dans un cabinet comptable, au sein du service comptabilité d'une entreprise, dans une banque, une société d'assurances ou une administration. Son activité consiste à traduire de manière comptable toutes les opérations commerciales ou financières et à établir les documents correspondants. Il analyse également les informations dont il dispose pour préparer les décisions de gestion. Il connaît le matériel et les logiciels spécialisés ; il est capable de participer aux projets informatiques de son service.\n\n"
             "Débouchés:\n\n"
             "Comptable chargé des coûts de revient, Comptable fournisseur, matières et emballages, Responsable de la paie et administration du personnel, Comptable-Caissier, Chef de service fiscal."
     ),
     Course(
         title: "Graphisme de Production",
         //level: "Intermidiate",
         //indicatorValue: 0.66,
         price: 30,
         content:
         "Objectifs:\n\n"
             "Notre programme de formation en Graphisme de Production/Infographie est conçu pour vous plonger dans le monde de la communication graphique. Vous apprendrez à soumettre à vos clients des projets de haute qualité conformes aux normes de cette industrie exaltante. De la conceptualisation de designs graphiques à l’acquisition des techniques informatiques de pointe, notre formation couvre tous les aspects du métier. La formation en Graphisme de production/Infographie vous dote des compétences vous permettant d'effectuer toutes les étapes de production, que vos projets soient destinés au web ou à l’imprimé.\n\n"
             "Débouchés:\n\n"
             "Infographe dans une imprimerie, Créateur de concept en agence de communication, Maquettiste, Directeur artistique."
     ),
     Course(
         title: "Maintenance des Réseaux Informatiques",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n\n"
             "Cette  spécialité  forme  des  techniciens  supérieurs  capables  d’assurer  l’entretien  et  la réparation des matériels informatiques. Ils peuvent également réaliser l’installation de   nouveaux équipements ou assurer la formation des utilisateurs.\n\n"
             "Débouchés:\n\n"
             "Chef de projet informatique, Développeur informatique, Technicien de maintenance en distribution automatique."
     ),
     Course(
         title: "Comptabilité Matière",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n\n"
             "La comptabilité-matières permet le suivi régulier des entrées, des sorties et des quantités des articles en stock. La connaissance de la quantité d’un article en stock est utile notamment pour les opérations d’approvisionnement et d’inventaire physique.\n\n"
             "Débouchés:\n\n"
             "Administrations publiques de l’État, Entreprises parapubliques, Organisations privées, surtout aux entreprises commerciales, Ministère des finances à la tutelle technique des professionnels de l’Etat, "
     ),
     Course(
         title: "Sécurité des Systèmes Informatiques",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n\n"
             "Le technicien de maintenance en informatique doit être capable d'assurer l'intégrité, la sécurité et la pérennité d'un système informatique au sein d’une entreprise, Il est également amené à participer à la veille technologique et à la formation des utilisateurs.L'Institut Universitaire de la Côte propose une formation partagée entre études théoriques fondamentales et mises en situation correspondant aux cas fréquemment rencontrés.\n\n"
             "Débouchés:\n\n"
             "Chef du service de maintenance informatique, Maintenancier en informatique, Réaliser les archivages et les sauvegardes des données, Responsable maintenance, Responsable des services techniques, Technicien informatique, Expert sécurité du réseau de données."
     ),
     Course(
         title: "Gestion Communale",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n\n"
             "Cette spécialité vise à former des praticiens chargés selon les fonctions occupées, de conseiller, d'assister les responsables locaux dans la définition juridique des politiques locales et dans la mise en œuvre de celles-ci.\n\n"
             "Débouchés:\n\n"
             "Attaché territorial, Décideurs au sein des collectivités territoriales et autres établissements publique, Agent rattaché au service de la collecte des impôts, Agent d'appui au MINATD et collaborateur du Secrétaire Général du chef service du contentieux administratif, Chargé d'étude auprès des magistrats municipaux, Responsables des communes, Responsable des assurances, marchés et commandes publics, "
     ),
     Course(
         title: "Archives et Documentation",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n\n"
             "L'archiviste s'occupe de tous documents anciens ou d'aujourd'hui : du manuscrit médiéval (chartes et autres documents anciens) à l’enregistrement sur support électronique d’une émission de télévision, en passant par l’acte notarié attestant l’achat d’une propriété. Il s’agit dans tous les cas de documents originaux (documents écrits, photos, disques, films…), destinés pour une raison ou pour une autre à être conservés.\n\n"
             "Débouchés:\n\n"
             "L’archiviste est chargé de collecter, classer, conserver et restaurer des archives et de les communiquer au public et aux chercheurs. Ces archives proviennent des administrations, des entreprises, des associations ou parfois même de particuliers."
     ),
     Course(
         title: "Gestion des Marchés Publiques",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n\n"
             "D’une façon générale, ce programme forme aux enjeux des différents contrats de la commande publique (marchés publics, délégation de service public et partenariat public-privé), ainsi qu’à une fine connaissance des normes et procédures applicables. Il initie aussi aux analyses économiques et financières qui président au choix des contrats, aux techniques de négociation et de rédaction d’actes, au traitement contentieux, à la maîtrise des procédures et du suivi des contrats. Outre les approches techniques et procédurales, la formation insiste sur les aspects financiers, comptables, fiscaux et sociologiques d’une gestion efficace des marchés et autres contrats publics… et finalement des deniers publics.\n\n"
             "Débouchés:\n\n"
             "dans le secteur public : direction ou animation de cellule de passation des marchés publics, DSP ou PPP) ; acheteur public ; juriste, analyste ou chargé d’études au sein des structures publiques (État, collectivités locales…) ou privées (entreprises privées dont les SEML); dans le secteur privé : avocat spécialisé en droit des marchés publics, DSP ou PPP, juriste spécialisé dans les grandes entreprises délégataires et dans celles titulaires de marchés publics ; consultant auprès de ces structures ; possibilité, sous certaines conditions, d’entreprendre une thèse de doctorat en Droit public."
     ),
     Course(
         title: "Gestion des PME",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n\n"
             "Le titulaire d'une certification en gestion de la PME est le collaborateur direct du dirigeant ou d'un cadre dirigeant d'une petite ou moyenne entreprise (5 à 50 salariés). Son travail se caractérise par une forte polyvalence à dominante administrative : gestion de la relation avec la clientèle et les fournisseurs, gestion et développement des ressources humaines, organisation et planification des activités (réunion, déplacements, événements...), gestion des ressources, pérennisation de l'entreprise, gestion des risques, communication globale. Il participe à ces activités en exerçant tout particulièrement des fonctions de veille, de suivi et d'alerte. Compte tenu de sa position d'interface interne et externe, il doit développer une forte dimension relationnelle.\n\n"
             "Débouchés:\n\n"
             "Assistant de gestion en PME, Assistant commercial, Secrétaire, Assistant de direction, Assistant de gestion, Assistant administratif du personnel, Assistant de manager, Collaborateur de chef d’entreprise PME-PMI."
     ),
     Course(
         title: "Fiscalité",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n\n"
             "La formation fiscalité des entreprises est essentielle pour les gestionnaires qui souhaitent apprendre quels sont les axes et les impôts payés par l'entreprise. Vous pouvez suivre également la formation fiscalité immobilière, fiscalité internationale, TVA et fiscalité des établissements de santé...\n\n"
             "Débouchés:\n\n"
             "Fiscaliste dans Les PME, les grandes entreprises ou autres cabinets spécialisés."
     ),
     Course(
         title: "Audit Fiscale",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n\n"
             "Cette formation vous permettra d'identifier les points clés de la procédure de contrôle, de gérer et de limiter les risques de sanctions éventuelles. A l'issue du cursus de formation, le candidat sera capable de : Identifier les droits de l'entreprise lors d'un contrôle fiscal.\n\n"
             "Débouchés:\n\n"
             "Fiscaliste, Auditeur Fiscal, Consultant auprès des PMEs."
     ),
     Course(
         title: "Sécrétariat Bureautique Bilingue",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n\n"
             "La Secrétaire Bureautique Bilingue saisit et présente des documents (rapports, courriers...) à l’aide de techniques Bureautiques et en particulier du traitement de texte pour un service ou un supérieur hiérarchique. Elle assure la partie administrative des dossiers, transmet ou filtre les communications téléphoniques et assure le premier niveau de contact entre un service et l’extérieur. Vous aurez tous les outils bureautiques à votre disposition, ce qui donnera à votre travail une note de dynamisme et vous apprécierez grandement leur côté interactif. Vous êtes assurée de travailler dans un cadre moderne, entourée d’outils performants, constamment à la pointe du progrès. Votre qualification professionnelle en Secrétariat Bureautique Bilingue sera fort appréciée par les employeurs à la recherche d’un personnel maîtrisant parfaitement l’outil informatique. \n\n"
             "Débouchés:\n"
             "Au terme du cursus de formation, l’apprenant Secrétariat Bureautique Bilingue sera capable de réaliser toutes les fonctions d'assistante administrative ou de direction dans une PME."
     ),
     Course(
         title: "Gouvernance Locale et Décentralisation",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n\n"
             "La citoyenneté est basée sur le lien entre les citoyens (le vivre ensemble), et sur le lien entre les citoyens et la société. Ces liens reposent sur l’existence de dispositifs de gouvernance, formels ou non, qui permettent un dialogue entre les acteurs du territoire, mais surtout qui permettent de déboucher sur des actions opérationnelles. Il n’y a pas de modèle type de dispositif de gouvernance, mais des principes à prendre en compte pour les créer et surtout les faire vivre dans la durée. Principes qu’il nous faut identifier.\n\n"
             "Débouchés:\n"
             "Emplois de responsabilité ou métiers d’encadrement dans l’Administration publique locale ou centrale ; Consultants ou professionnels au sein d’une Collectivité décentralisée, d’organismes publics ou entreprises. Possibilité, sous certaines conditions, d’entreprendre une thèse de doctorat en Droit public, en Gouvernance locale."
     ),
     Course(
         title: "Anglais",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n\n"
             "Vous avez conscience que votre niveau d’anglais est un obstacle pour intégrer une école, trouver un emploi, évoluer professionnellement ou tout simplement échanger lors de vos voyages à l’étranger. Imaginez tout ce que vous pourriez faire avec le niveau d’anglais que vous avez toujours voulu...\n\n"
             "Débouchés:\n\n"
             "Avoir plus d'ouverture dans la recherche d'un emploi."
     ),
   ];
 }

 List getCoursesCertification() {
   return [
     Course(
         title: "ACCA",
         //level: "Beginner",
         //indicatorValue: 0.33,
         price: 20,
         content:
         "Objectifs:\n"
             " ACCA stands for the Association of Chartered Certified Accountants a leading international accountancy body. The ACCA qualification is recognised and is treated in other countries as being equivalent to their local qualification. The ACCA qualification proves to employers that you have ability in all aspects of business.It is the largest and fastest growing qualification in the world, with over 500,000 members and students in 170 countries.\n\n"
             "Débouchés:\n"
             "An ACCA can work across fields as a Management Accountant, Finance Manager, Financial or Business Analyst, Financial Consultant, Management Consultant, Financial Planner."
     ),
     Course(
         title: "Robotics",
         //level: "Beginner",
         //indicatorValue: 0.33,
         price: 20,
         content:
         "Objectifs:\n"
             "The Robotics/Automated Systems certificate is intended for individuals who have earned a previous degree or have significant work related experience in the manufacturing industry. Students without any or limited previous related experience in manufacturing technology are encouraged to enroll in the program. Also, High school graduates who wish to begin a career in robotics, automation and who wish to work in the manufacturing industry can enroll into this program.\n\n"
             "Débouchés:\n"
             "Mechanical Engineers, Aerospace Engineering and Operations Technicians, Electro-mechanical Technicians, Sales Engineers, Computer and Information Research Scientists, Computer Programmers."
     ),
     Course(
         title: "Computer Aided Design",
         //level: "Beginner",
         //indicatorValue: 0.33,
         price: 20,
         content:
         "Objectifs:\n"
             "(CAD.IL.CT) This program leads to a certificate in CAD Engineering Technology. Program graduates are prepared for occupations and careers in engineering and manufacturing industries. Rapid Prototyping and co-op opportunities enhance their learning experience. The CAD Engineering option focuses on design with an emphasis on concepts and applications of CAD Engineering Technologies. CAE covers subjects such as: the applications and principles of kinematics in design, concepts and techniques of finite element modeling for stress analysis / non-destructive testing, techniques and applications of solid modeling, and CNC tool path generation for CAD models. Students without any or limited previous related experience in manufacturing technology are encouraged to enroll in the program. Also, High school graduates who wish to begin a career in robotics, automation and who wish to work in the manufacturing industry can enroll into this program.\n\n"
             "Débouchés:\n"
             "Architectural drafting, Mechanical drafting, Electronics drafting, Civil construction drafting."
     ),
     Course(
         title: "CISCO",
         //level: "Beginner",
         //indicatorValue: 0.33,
         price: 20,
         content:
         "Objectifs:\n"
             "The Interconnecting Cisco Networking Devices: Accelerated (CCNAX) v3.0 course teaches you how to install, operate, configure, and verify a basic Internet Protocol version 4 (IPv4) and Internet Protocol version 6 (IPv6) network, including configuring a LAN switch, configuring an IP router, connecting to a WAN, and identifying basic security threats. You will also learn how to perform basic troubleshooting steps in enterprise branch office networks, as well as prepare for Cisco® Certified Network Associate (CCNA) certification. The course covers the elements of Quality of Service (QoS) and their applicability, explores how virtualized and cloud services interact and impact enterprise networks, and provides an overview of network programmability with the related controller types and tools that are available to support Software-Defined Networking (SDN) architectures. You’ll also gain an understanding of the interactions and network functions of firewalls, wireless controllers, and access points, along with additional focus on IPv6 and basic network security. This course consists of two courses merged into a single course.\n\n"
             "Interconnecting Cisco Networking Devices, Part 1 (ICND1) and\n"
             "Interconnecting Cisco Networking Devices, Part 2 (ICND2).\n\n"
             "Possible jobs opportunities:\n"
             "Technical Solutions Architect - Optical, Datacenter Technical Systems Architect, Network Engineer, Network Administrator, Technical Support Engineer... ."
     ),
     Course(
         title: "Amazon Web Services",
         //level: "Beginner",
         //indicatorValue: 0.33,
         price: 20,
         content:
         "Objectifs:\n"
             "AWS is fast becoming the must have certificates for any IT professional working with AWS. This course is designed to help you pass the AWS Certified Solutions Architect (CSA) - Associate Exam. Even if you have never logged in to the AWS platform before, by the end of our AWS training you will be able to take the CSA exam. No programming knowledge needed and no prior AWS experience required. With this AWS certification under your belt (and optionally after completing our AWS Certified Developer), you will be in high demand by many employers and you can command a superior salary.\n\n"
             "Débouchés:\n"
             "AWS Cloud Architect, SysOps Administrator, Cloud Developer, Cloud Sales & Purchase Manager, Cloud DevOps Engineer, Cloud Software Engineer, AWS Networking Specialist."
     ),



   ];
 }

 List getCoursesAlaCarte()
 {
   return [
     Course(
         title: "Gestion des Collectivités Térritoriales\n"
             "Administration des Collectivités Térritoriales",
         //level: "Beginner",
         //indicatorValue: 0.33,
         price: 20,
         content:
         "Objectifs:\n"
             "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n\n"
             "Débouchés:\n"
             "Texte"
     ),
     Course(
         title: "Administration des Collectivités Térritoriales\n"
             "Comptabilité et Finances Publiques",
         //level: "Beginner",
         //indicatorValue: 0.33,
         price: 20,
         content:
         "Objectifs:\n"
             "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n\n"
             "Débouchés:\n"
             "Texte"
     ),
     Course(
         title: "Administration des Collectivités Térritoriales\n"
             "Fiscalité des Collectivités Térritoriales",
         //level: "Beginner",
         //indicatorValue: 0.33,
         price: 20,
         content:
         "Objectifs:\n"
             "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n\n"
             "Débouchés:\n"
             "Texte"
     ),
     Course(
         title: "Comptabilité et Gestion des Entreprises",
         //level: "Intermidiate",
         //indicatorValue: 0.66,
         price: 30,
         content:
         "Objectifs:\n"
             "La spécialité Comptabilité et gestion des entreprises a pour but de munir les étudiants des connaissances et savoir-faire leur permettant de traduire de manière comptable, toutes les opérations commerciales ou financières et d‟établir les documents correspondants, d‟analyser les informations dont ils disposent pour préparer les décisions de gestion.\n\n"
             "Débouchés:\n"
             "Comptable en entreprise, Collaborateur comptable en cabinet, Assistant comptable dans les grandes entreprises, Gestion de la paie, Responsable comptable, Trésorier, Controleur de gestion."
     ),
     Course(
         title: "Gestion Logistique et Transport",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n"
             "La spécialité Gestion logistique et transport vise à former des experts dans l‟organisation et le management des opérations de transport et des prestations logistiques sur les marchés locaux, régionaux, nationaux et internationaux en tenant compte de la complémentarité des modes de transport et du développement durable. Ils maîtrisent à cet effet les langues étrangères, la communication et les techniques de négociation, les techniques de gestion et d‟optimisation des flux de marchandise, la gestion des entrepôts ou des plates-formes ainsi que l‟exploitation des réseaux de transports urbains.\n\n"
             "Débouchés:\n"
             "Responsable des unités de transport, Gestionnaire des stocks et des approvisionnements, Gestionnaire des réseaux d‟entrepôts et des plates-formes, Transitaire et prestataire logistique, Commissionnaire agrée en douane, Agent contrôleur de la SGS, Employé au Guichet unique, Manutentionnaire."
     ),
     Course(
         title: "Gestion des ONG",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n"
             "La spécialité Gestion des ONG conduit à la formation des techniciens disposant de solides connaissances dans l‟analyse des enjeux de l‟organisation, la compréhension et l‟usage des techniques de management, la conception et la conduite de projets, la négociation avec les partenaires.\n\n"
             "Débouchés:\n"
             "Agent administratif des ONG, Collaborateur au chef de projet, Assistant au chargé de mission de coopération et de développement."
     ),
     Course(
         title: "Gestion des Ressources Humaines",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n"
             "Le BTS Gestion des ressources humaines vise à former des étudiants à même de réaliser le suivi administratif de la gestion du personnel (contrats, absences, congés, visites médicales, déclarations aux organismes sociaux) ainsi que la formation continue selon la législation sociale, la règlementation du travail et la politique des ressources humaines de la structure.\n\n"
             "Débouchés:\n"
             "Assistant Ressources Humaines, Adjoint au responsable des ressources humaines, Assistant de direction, Gestionnaire de paie, Chargé de recrutement, Gestionnaire d‟emploi."
     ),
     Course(
         title: "Gestion des Projets",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n"
             "La spécialité Gestion des projets vise à former des techniciens capables de conduire des projets d‟entreprises de tout secteur (industriel, service, commercial, technologique, culturel), à travers le développement de la compréhension de l‟entreprise et l‟acquisition des connaissances théoriques et compétences pratiques du management de projet.\n\n"
             "Débouchés:\n"
             "Assistant au chef de projet, Assistant marketing, Responsable de la communication, Planificateur de projet."
     ),
     Course(
         title: "Assistant Manager",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n"
             "Cette spécialité qui remplace le BTS ‟‟Secrétariat de direction‟‟ forme les collaborateurs des directeurs généraux, des directeurs d‟unités ou des chefs de service. Organisés, rigoureux, dynamiques, discrets, ils soutiennent, facilitent et suivent le travail du responsable afin de le rendre plus efficace. L‟Assistant manager assure principalement le rôle d‟interface et de médiation entre l‟entreprise et son environnement. Il s‟occupe de l‟administration, de la communication, de l‟organisation du travail, de l‟aide à la décision et peut même prendre en charge un dossier spécialisé ou organiser un évènement.\n\n"
             "Débouchés:\n"
             "Assistant de manager, Assistant de direction, Assistant administartif, Assistant commercial, Assistant de communication, Assistant ressources humaines, Office manager."
     ),
     Course(
         title: "Management Evènementiel",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n"
             "Le BTS spécialité Management évènementiel vise à former des techniciens capables de prendre en charge la conception, les préparatifs et l‟organisation matérielle et logistique des manifestations de toutes sortes (mariage, réception, séminaire, conférence…) dans le cadre de prestations de services à des particuliers, à des collectivités locales, associations, entreprises publiques ou privées.\n\n"
             "Débouchés:\n"
             "Stratège évènementiel, Stratège de communication multicanal, Sémiostratège, Wedding planner, Production de spectacles, Manager de l‟évènementiel."
     ),
     Course(
         title: "Banque et Finance",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n"
             "Cette spécialité vise à combler le déficit en nombre et en qualité en matière de ressources humaines dont les établissements de crédit ont besoin pour la conduite de leurs activités. En outre, elle fournit aux entreprises, quel que soit leur domaine d’activité, des collaborateurs pouvant leur permettre de tirer le maximum des opportunités que leur offre le système financier dans son évolution, son expansion et son arrimage à la finance mondiale.\n\n"
             "Débouchés:\n"
             "Banques commerciales, Etablissements financiers, Bourses des valeurs mobilières, Entreprises d'assurance, Banque centrale, Commision bancaire, Etablissements de microfinance, Caisses d'épargne et service financier de la poste, Ministères en charge de la monnaie et des quetions économiques et financières."
     ),
     Course(
         title: "Assurances",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n"
             "Cette spécialité conduit à la formation des professionnels appelés à exercer des activités à caractère commercial, technique et de gestion dans le domain, de la souscription ou du règlement des sinistres dans des sociétés d‟assurance ou de la protection sociale en intégrant la relation client.\n\n"
             "Débouchés:\n"
             "Souscripteur, Conseiller, Chargé d'indemnisation, Gestionnaire assurance vie individuelle/collective, Redacteur production et/ou règlement, Collaborateur d'argent général ou de coursier d'assurance, Technicien d'assurance."
     ),
     Course(
         title: "Assistant Judiciare",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n"
             "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n\n"
             "Débouchés:\n"
             "Texte"
     ),
     Course(
         title: "Droit Foncier et Domanial",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n"
             "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n\n"
             "Débouchés:\n"
             "Texte"
     ),
     Course(
         title: "Gestion Fiscale",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n"
             "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n\n"
             "Débouchés:\n"
             "Texte"
     ),
     Course(
         title: "Douane et Transit",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n"
             "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n\n"
             "Débouchés:\n"
             "Texte"
     ),
     Course(
         title: "Génie Logiciel",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n"
             "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n\n"
             "Débouchés:\n"
             "Texte"
     ),
     Course(
         title: "Infographie et Web design",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n"
             "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n\n"
             "Débouchés:\n"
             "Texte"
     ),
     Course(
         title: "Management Evènementiel",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n"
             "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n\n"
             "Débouchés:\n"
             "Texte"
     ),
     Course(
         title: "E-Commerce",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n"
             "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n\n"
             "Débouchés:\n"
             "Texte"
     ),
     Course(
         title: "Administration Scolaire",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n"
             "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n\n"
             "Débouchés:\n"
             "Texte"
     ),
     Course(
         title: "Didactique et Développement du Curriculum",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n"
             "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n\n"
             "Débouchés:\n"
             "Texte"
     ),
     Course(
         title: "Orientation Scolaire et Professionnelle",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n"
             "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n\n"
             "Débouchés:\n"
             "Texte"
     ),
     Course(
         title: "Commerce Internationnal",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n"
             "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n\n"
             "Débouchés:\n"
             "Texte"
     ),
     Course(
         title: "Marketing Commerce Vente",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n"
             "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n\n"
             "Débouchés:\n"
             "Texte"
     ),
     Course(
         title: "Sage-femme",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n"
             "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n\n"
             "Débouchés:\n"
             "Texte"
     ),
     Course(
         title: "Sciences infimières",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n"
             "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n\n"
             "Débouchés:\n"
             "Texte"
     ),
     Course(
         title: "Techniques Pharmaceutiques",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n"
             "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n\n"
             "Débouchés:\n"
             "Texte"
     ),
     Course(
         title: "Techniques de Laboratiore et d'Analyse Médicale",
         //level: "Advanced",
         //indicatorValue: 1.0,
         price: 50,
         content:
         "Objectifs:\n"
             "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n\n"
             "Débouchés:\n"
             "Texte"
     ),

   ];
 }


 void initState() {
    super.initState();
    setState(() {
      specialitebts=stringListTransformation(getCoursesBts());
      specialiteHND=stringListTransformation(getCourseHnd());
      specialiteLiPro=stringListTransformation(getCoursesLiPro());
      specialiteBachelor=stringListTransformation(getCoursesBachelor());
      specialiteDiplome=stringListTransformation(getCoursesDiplomeMINEFOP());
      specialiteCertification=stringListTransformation(getCoursesCertification());
      specialiteAlaCarte=stringListTransformation(getCoursesAlaCarte());
      specialiteGeneral.add(specialitevide);
      specialiteGeneral.add(specialitebts);
      specialiteGeneral.add(specialiteHND);
      specialiteGeneral.add(specialiteLiPro);
      specialiteGeneral.add(specialiteBachelor);
      specialiteGeneral.add(specialiteDiplome);
      specialiteGeneral.add(specialiteCertification);
      specialiteGeneral.add(specialiteAlaCarte);
    });
  }
     


var nomColors=Colors.blue;
var telephoneColors=Colors.blue;
var villeColors=Colors.blue;
 var programmeColors=Colors.blue;
 var specialitesColors=Colors.blue;
String messageAdd="";

  @override
  Widget build(BuildContext context) {
      double longueur = MediaQuery.of(context).size.height;
    double largeur = MediaQuery.of(context).size.width;

  

  return new 
    Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      resizeToAvoidBottomPadding: true,
    
     appBar: AppBar(
       backgroundColor:  Colors.pinkAccent,
          title: Text('Inscription'),
          actions: <Widget>[
          
          ],
        ),
      body:  ListView
      (
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: longueur / 20,
              ),
           
              SizedBox(
                height: longueur / 35,
              ),
                            Row
              (
                children: <Widget>[
                  SizedBox(
                    width: largeur / 25,
                  ),
                  new Container(
                    width: 23 * largeur / 25,
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: Theme(
                       data: ThemeData(
                      hintColor: nomColors
                    ),
                                          child: TextField(
                        keyboardType: TextInputType.text,
                        controller: nomcontroler,
                        onChanged: (text) {
                           
                        },
                        decoration: new InputDecoration(
                       filled: true,
                       
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4),),
                        //ici je gere la bordure  colors
                        borderSide: BorderSide(width: 2,color: nomColors)
                      ),
                        labelText:(nomColors==Colors.blue)? "Nom *  : ":"Bien vouloir entrer votre nom", border: OutlineInputBorder(
                          
                          
                        ),
                      ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: largeur / 25,
                  ),
                ],
              ),

                Row
              (
                children: <Widget>[
                  SizedBox(
                    width: largeur / 25,
                  ),
                  new Container(
                    width: 23 * largeur / 25,
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: TextField(
                      keyboardType: TextInputType.text,
                      controller: prenomcontroler,
                      onChanged: (text) {
                         
                      },
                      decoration: new InputDecoration(
                        labelText: "Prenom   : ", border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: largeur / 25,
                  ),
                ],
              ),


              
                Row
              (
                children: <Widget>[
                  SizedBox(
                    width: largeur / 25,
                  ),
                  new Container(
                    width: 23 * largeur / 25,
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: Theme(
                       data: ThemeData(
                      hintColor: telephoneColors
                    ),
                                          child: TextField(
                        keyboardType: TextInputType.phone,
                        controller: telephonecontroler,
                        onChanged: (text) {
                           
                        },
                        decoration: new InputDecoration(
                         filled: true,
                         
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4),),
                          //ici je gere la bordure  colors
                          borderSide: BorderSide(width: 2,color: telephoneColors)
                        ),
                          labelText:(telephoneColors==Colors.blue)? "Telephone *  : ":"Bien vouloir entrer votre numero", border: OutlineInputBorder(
                            
                            
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: largeur / 25,
                  ),
                ],
              ),



                Row
              (
                children: <Widget>[
                  SizedBox(
                    width: largeur / 25,
                  ),
                  new Container(
                    width: 23 * largeur / 25,
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      controller: mailcontroler,
                      onChanged: (text) {
                         
                      },
                      decoration: new InputDecoration(
                        labelText: "Mail : ", border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: largeur / 25,
                  ),
                ],
              ),

             
             
                             Row
              (
                children: <Widget>[
                  SizedBox(
                    width: largeur / 25,
                  ),
                  new Container(
                    width: 23 * largeur / 25,
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: Theme(
                       data: ThemeData(
                      hintColor: villeColors
                    ),
                                          child: TextField(
                        keyboardType: TextInputType.text,
                        controller: villecontroler,
                        onChanged: (text) {
                           
                        },
                         decoration:  new InputDecoration(
                         filled: true,
                         
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4),),
                          //ici je gere la bordure  colors
                          borderSide: BorderSide(width: 2,color: villeColors)
                        ),
                          labelText:(villeColors==Colors.blue)? "Ville *  : ":"Bien vouloir entrer votre ville", border: OutlineInputBorder(
                            
                            
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: largeur / 25,
                  ),
                ],
              ),

 SizedBox(
                height: longueur / 35,
              ),

   

                    Row
              (
                children: <Widget>[
                  SizedBox(
                    width: largeur / 25,
                  ),
                     Theme(
                       data: ThemeData(
                           hintColor: programmeColors
                       ),
                       child: new Container
            (
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.all(Radius.circular(2)),
                           border: Border.all(color: programmeColors)
                         ),
                    width: 23 * largeur / 25,
                    padding: const EdgeInsets.only(bottom: 16.0),
              child:        DropdownButton<String>
                        (

                                                isExpanded: true,
                                                elevation: 12,
                                                items: programe.map((String value) {
                                                  return new DropdownMenuItem<String>(
                                                    value: value,
                                                    child: new Text(value),
                                                  );
                                                }).toList(),
                                                hint: Container(
                                                  width: largeur*0.8,
                                                  child: Text("Programme* : $programechoisi",style:TextStyle( fontWeight: FontWeight.bold, color:(programmeColors==Colors.blue)? Colors.black:Colors.red
                                                      ,fontSize: 20) ,)
                                                ),
                                                onChanged: (value) {
                                                  setState(() {
                                                    programechoisi=value;
                                                    choix=programe.indexOf(value)+1;
                                                    specialitechoisi="";
                                                  });



                                                },
                                              ),


            ),
                     ),
           


          






            SizedBox(
                    width: largeur / 25,
                  ),
                ],
              ),

              SizedBox(
                height: longueur / 35,
              ),



       Row
              (
                children: <Widget>[
                  SizedBox(
                    width: largeur / 25,
                  ),
                     Theme(
                       data: ThemeData(
                           hintColor: specialitesColors
                       ),
                       child: new Container
            (
                         decoration: BoxDecoration(
                             borderRadius: BorderRadius.all(Radius.circular(2)),
                             border: Border.all(color: specialitesColors)
                         ),
                    width: 23 * largeur / 25,
                    padding: const EdgeInsets.only(bottom: 16.0),
              child:        DropdownButton<String>
                        (

                                                isExpanded: true,
                                                elevation: 12,
                                                items: specialiteGeneral[choix].map((String value) {
                                                  return new DropdownMenuItem<String>(
                                                    value: value,
                                                    child: new Text(value),
                                                  );
                                                }).toList(),
                                                hint: Container(
                                                  width: largeur*0.8,
                                                  child: Text("Speciatite : $specialitechoisi",style:TextStyle( fontWeight: FontWeight.bold, color: (specialitesColors==Colors.blue)? Colors.black:Colors.red,fontSize: 20) ,)
                                                ),
                                                onChanged: (value) {

                                                 setState(() {
                                                    specialitechoisi=value;
                                                 });



                                                },
                                              ),


            ),
                     ),
           


          






            SizedBox(
                    width: largeur / 25,
                  ),
                ],
              ),
             




         


              
              
              
              

 













 
             
              SizedBox(
                height: longueur / 35,
              ),







  Row
              (
                children: <Widget>[
                  SizedBox(
                    width: largeur / 25,
                  ),
                  new Container(
                    width: 23 * largeur / 25,
                    height: longueur / 6,
                 
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: TextField(
                      keyboardType: TextInputType.multiline,
                      controller: messagecontroler,
                        decoration: InputDecoration(
                            labelText: 'Message additionnel ${300-messagecontroler.text.length}', border: OutlineInputBorder()),
                      onSubmitted: (text) {
                        print("suis dehor ");
                      },
                      expands: true,
                      maxLines: null,
                      minLines: null,
                      onChanged: (text) {
                        
                        setState(() {
                        if(messagecontroler.text.length<=300){
                          messageAdd=text;
                        }else{
                          messagecontroler.text=messageAdd;
                        }
                        });
                      },
                      showCursor: true,
                     
                    ),
                  ),
                  SizedBox(
                    width: largeur / 25,
                  ),
                ],
              ),





              GestureDetector
              (
                onTap: () {

                  
 
              if(nomcontroler.text.length>0&&
              telephonecontroler.text.length>0&&
              villecontroler.text.length>0&&
              programechoisi.length>0&&
              specialitechoisi.length>0
        
              
              
              ){
                testConnection();
              }else{


 if(nomcontroler.text.length==0
        
              
              
              ){
                    setState(() {
                      nomColors=Colors.red;
                    });
              }else{
                setState(() {
                      nomColors=Colors.blue;
                    });
              }




 if(programechoisi.length==0



 ){
   setState(() {
     programmeColors=Colors.red;
   });
 }else{
   setState(() {
     programmeColors=Colors.blue;
   });
 }


 if(specialitechoisi.length==0



 ){
   setState(() {
     specialitesColors=Colors.red;
   });
 }else{
   setState(() {
     specialitesColors=Colors.blue;
   });
 }




              if(telephonecontroler.text.length==0
        
              
              
              ){
                       setState(() {
                      telephoneColors=Colors.red;
                    });
              }else{
                 setState(() {
                      telephoneColors=Colors.blue;
                    });
              }

 



               if(villecontroler.text.length==0
        
              
              
              ){
                      setState(() {
                      villeColors=Colors.red;
                    });
              }else{
                setState(() {
                      villeColors=Colors.blue;
                    });
              }




         
              }
                    
                    
                  
                },
                child: Center(
                  child: Container(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      height: 60.0,
                      child: Material(
                          borderRadius: BorderRadius.circular(9.0),
                          color: Colors.blue,
                          child: Center(
                              child: Text(
                            'Valider',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat'),
                          )))),
                ),
              ),
              SizedBox(
                height: longueur / 35,
              ),
            ],
          ),
          new Text('KEBHIPS © ${DateTime.now().year.toString()}. Powered by MINSE.COM', textAlign: TextAlign.center,)
        ],
      )
      
   

   
   
    );
 
 
 
  }

 
}

 
