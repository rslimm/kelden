import 'package:flutter/material.dart';
import 'package:kebhips/Model/Course.dart';
import 'package:kebhips/Pages/CourseDetaiPage.dart';

import '../main.dart';

class DMinfopSpecialitiesPage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      drawer: AppDrawer(),
      body: new ListPage(title: 'K E B H I P S'),
      // home: DetailPage(),
    );
  }
}


class ListPage extends StatefulWidget {
  ListPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List lessons;

  @override
  void initState() {
    lessons = getCourses();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ListTile makeListTile(Course course) => ListTile(
      contentPadding:
      EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      leading: Container(
        padding: EdgeInsets.only(right: 12.0),
        decoration: new BoxDecoration(
            border: new Border(
                right: new BorderSide(width: 1.0, color: Colors.white24))),
        child: Icon(Icons.school, color: Colors.white),
      ),
      title: Text(
        course.title,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

      subtitle: Row(
        children: <Widget>[

        ],
      ),
      trailing:
      Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 30.0),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => CourseDetailPage(course: course)));
      },
    );

    Card makeCard(Course lesson) => Card(
      elevation: 8.0,
      margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      child: Container(
        decoration: BoxDecoration(color: Colors.blue[900]),
        child: makeListTile(lesson),
      ),
    );

    final makeBody = Container(
      // decoration: BoxDecoration(color: Color.fromRGBO(58, 66, 86, 1.0)),
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: lessons.length,
        itemBuilder: (BuildContext context, int index) {
          return makeCard(lessons[index]);
        },
      ),
    );

    final makeBottom = Container(
      height: 55.0,
      child: BottomAppBar(
        color: Color.fromRGBO(58, 66, 86, 1.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.blur_on, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.hotel, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.account_box, color: Colors.white),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
    final topAppBar = AppBar(
      elevation: 0.1,
      backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      title: Text(widget.title),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.list),
          onPressed: () {},
        )
      ],
    );

    return Scaffold(

      backgroundColor: Color(0xFF736AB7),
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: new Text("Spécilialités MINEFOP", textAlign: TextAlign.center,),
      ),
      drawer: AppDrawer(),
      body: makeBody,
      //bottomNavigationBar: makeBottom,
    );
  }
}

List getCourses() {
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
        title: "Comptabilité/Matières",
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
