import 'package:flutter/material.dart';
import 'package:kebhips/Model/Course.dart';
import 'package:kebhips/Pages/CourseDetaiPage.dart';

class BtsSpecialitiesPage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new ListPage(title: 'A la Carte'),
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

          /*

          Expanded(
              flex: 1,
              child: Container(
                // tag: 'hero',
                child: LinearProgressIndicator(
                    backgroundColor: Color.fromRGBO(209, 224, 224, 0.2),
                    value: course.indicatorValue,
                    valueColor: AlwaysStoppedAnimation(Colors.green)),
              )
          ),

         */

          /*

          Expanded(
            flex: 4,

          /*
            child: Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text(course.level,
                    style: TextStyle(color: Colors.white)
                )
            ),
          */

          )

          */

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
        title: new Text("A la Carte", textAlign: TextAlign.center,),
      ),
      drawer: AppDrawer(),
      body: makeBody,
      //bottomNavigationBar: makeBottom,
    );
  }
}

List getCourses()
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
            title: Text('KEBHIPS © ${DateTime.now().year.toString()}'),
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