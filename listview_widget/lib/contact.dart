import 'package:flutter/material.dart';
import 'package:listview_widget/model/ContactModel.dart';
import 'package:listview_widget/pages/contactList.dart';

class Contact extends StatelessWidget {
  _buildList(){
    return <ContactModel>[
      const ContactModel(name: "Norman", email: "nsanchez@arete.ws"),
      const ContactModel(name: "Hyper", email: "vdiaz@arete.ws"),
      const ContactModel(name: "Marco", email: "magomez@arete.ws"),
      const ContactModel(name: "Gabs", email: "gmarroquin@arete.ws"),
      const ContactModel(name: "Maria", email: "mgonzalez@arete.ws"),
      const ContactModel(name: "Alvaro", email: "aluna@arete.ws"),
      const ContactModel(name: "Raquel", email: "rantonio@arete.ws"),
      const ContactModel(name: "Osky", email: "odramirez@arete.ws"),
      const ContactModel(name: "Leslie", email: "lmruiz@arete.ws"),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ContactList(_buildList()),
    );
  }
}