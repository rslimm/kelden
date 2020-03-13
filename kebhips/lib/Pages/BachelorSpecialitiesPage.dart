import 'package:flutter/material.dart';
import 'package:kebhips/Model/Course.dart';
import 'package:kebhips/Pages/CourseDetaiPage.dart';

import '../main.dart';

class BachelorSpecialitiesPage extends StatefulWidget{




  @override
  _BachelorSpecialitiesPageState createState() => _BachelorSpecialitiesPageState();
}

class _BachelorSpecialitiesPageState extends State<BachelorSpecialitiesPage> {

  @override
  Widget build(BuildContext context) {
      double longueur = MediaQuery.of(context).size.height;
    double largeur = MediaQuery.of(context).size.width;

  

      return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new ListPage(title: 'Spécialités BT'),
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
        centerTitle: true,
        backgroundColor: Colors.blue[900],
        title: new Text("Bachelor Degree Programs", textAlign: TextAlign.center,),
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