import 'package:flutter/material.dart';

class InputPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: ListView(
        padding: EdgeInsets.all(25),
        children: [
          TextoPrincipal(textoPrincipal: 'Personal'),
          Textosecundario2(
              textosecundario2: '____________________________________________'),
          SizedBox(height: 10),
          Textosecundario(textosecundario: 'Name'),
          CajaName(),
          Textosecundario(textosecundario: 'Date of Birth'),
          CajaFecha(),
          Textosecundario(textosecundario: 'What is your favorite animal?'),
          Boton1(texto1: 'LION'),
          Boton2(texto2: 'TIGER'),
          Boton3(texto3: 'BEAR'),
          Boton4(texto4: 'SERVAL'),
          TextoPrincipal(textoPrincipal: 'Acount'),
          Textosecundario2(
              textosecundario2: '____________________________________________'),
          SizedBox(height: 10),
          Textosecundario(textosecundario: 'Email'),
          CajaEmail(),
          Textosecundario(textosecundario: 'Password'),
          CajaPassword(),
          Textosecundario(textosecundario: 'Verify Password'),
          CajaPassword(),
          TextoPrincipal(textoPrincipal: 'Contact'),
          Textosecundario2(
              textosecundario2: '____________________________________________'),
          SizedBox(height: 10),
          Textosecundario(textosecundario: 'Addres'),
          CajaAddres(),
          Textosecundario(textosecundario: 'City'),
          CajaCity(),
          ComboBox(),
          SizedBox(height: 10),
          Boton5(texto5: ''),
        ],
      ),
    );
  }
}

class Boton5 extends StatelessWidget {
  final String texto5;

  const Boton5({this.texto5});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 2, vertical: 2),
      decoration: BoxDecoration(
          color: Colors.green, borderRadius: BorderRadius.circular(2)),
      child: Text(
        this.texto5,
        style: TextStyle(
          fontSize: 10,
          color: Colors.green,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class ComboBox extends StatefulWidget {
  @override
  _ComboBoxState createState() => _ComboBoxState();
}

class _ComboBoxState extends State<ComboBox> {
  List<String> _ciudades = [
    'Select your State',
    'Lima',
    'Cuzco',
    'Piura',
    'Tumbes',
    'Amazonas',
    'Áncash',
    'Apurímac',
    'Arequipa',
    'Ayacucho',
    'Cajamarca',
    'Huancavelica',
    'Huánuco',
    'Ica',
    'Junín',
    'La Libertad',
    'Lambayeque',
    'Loreto',
    'Madre de Dios',
    'Moquegua',
    'Pasco',
    'Puno',
    'San Martín',
    'Tacna',
    'Ucayali'
  ];
  String _actual = 'Select your State';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Icon(Icons.select_all),
            Expanded(
              child: DropdownButton(
                value: _actual,
                items: getItems(),
                onChanged: (option) {
                  setState(() {});
                  _actual = option;
                },
              ),
            ),
          ],
        ),
        Text(_actual)
      ],
    );
  }

  List<DropdownMenuItem<String>> getItems() {
    List<DropdownMenuItem<String>> options = List();
    _ciudades
        .map((ciudad) => options.add(DropdownMenuItem(
              child: Text(ciudad),
              value: ciudad,
            )))
        .toString();
    return options;
  }
}

class CajaCity extends StatefulWidget {
  @override
  _CajaCityState createState() => _CajaCityState();
}

class _CajaCityState extends State<CajaCity> {
  String city = '';

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
      onChanged: (valor) {
        setState(() {
          city = valor;
        });
      },
    );
  }
}

class CajaAddres extends StatefulWidget {
  @override
  _CajaAddresState createState() => _CajaAddresState();
}

class _CajaAddresState extends State<CajaAddres> {
  String addres = '';

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
      onChanged: (valor) {
        setState(() {
          addres = valor;
        });
      },
    );
  }
}

class CajaPassword extends StatefulWidget {
  @override
  _CajaPasswordState createState() => _CajaPasswordState();
}

class _CajaPasswordState extends State<CajaPassword> {
  String pw = '';

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
      onChanged: (valor) {
        setState(() {
          pw = valor;
        });
      },
    );
  }
}

class CajaEmail extends StatefulWidget {
  @override
  _CajaEmailState createState() => _CajaEmailState();
}

class _CajaEmailState extends State<CajaEmail> {
  String email = '';

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
      onChanged: (valor) {
        setState(() {
          email = valor;
        });
      },
    );
  }
}

class Boton4 extends StatelessWidget {
  final String texto4;

  const Boton4({this.texto4});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(2)),
      child: Text(
        this.texto4,
        style: TextStyle(
          fontSize: 10,
          color: Colors.grey,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class Boton3 extends StatelessWidget {
  final String texto3;

  const Boton3({this.texto3});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(2)),
      child: Text(
        this.texto3,
        style: TextStyle(
          fontSize: 10,
          color: Colors.grey,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class Boton2 extends StatelessWidget {
  final String texto2;

  const Boton2({this.texto2});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(2)),
      child: Text(
        this.texto2,
        style: TextStyle(
          fontSize: 10,
          color: Colors.grey,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class Boton1 extends StatelessWidget {
  final String texto1;

  const Boton1({this.texto1});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(2)),
      child: Text(
        this.texto1,
        style: TextStyle(
          fontSize: 10,
          color: Colors.grey,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class Textosecundario3 extends StatelessWidget {
  final String textosecundario3;

  const Textosecundario3({this.textosecundario3});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        this.textosecundario3,
        style: TextStyle(
          color: Colors.grey,
          fontSize: 15,
        ),
        textAlign: TextAlign.left,
      ),
    );
  }
}

class Textosecundario2 extends StatelessWidget {
  final String textosecundario2;

  const Textosecundario2({this.textosecundario2});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        this.textosecundario2,
        style: TextStyle(
          color: Colors.grey[400],
          fontSize: 15,
        ),
        textAlign: TextAlign.left,
      ),
    );
  }
}

class Textosecundario extends StatelessWidget {
  final String textosecundario;

  const Textosecundario({this.textosecundario});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        this.textosecundario,
        style: TextStyle(
          color: Colors.black,
          fontSize: 15,
        ),
        textAlign: TextAlign.left,
      ),
    );
  }
}

class CajaFecha extends StatefulWidget {
  @override
  _CajaFechaState createState() => _CajaFechaState();
}

//MI ERROR ARREGLARLO
class _CajaFechaState extends State<CajaFecha> {
  String cf = '';
  TextEditingController textControler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: TextEditingController(),
      decoration: InputDecoration(
          hintText: 'Date of Birth',
          labelText: 'Date of Birth',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
        _selectDate(context);
      },
    );
  }

  void _selectDate(BuildContext context) async {
    DateTime date = await showDatePicker(
      context: context,
      firstDate: DateTime(2020),
      lastDate: DateTime(2022),
      initialDate: DateTime.now(),
    );
    if (date != null) {
      setState(() {});
      cf = date.toString();
      textControler.text = cf;
    }
  }
}

class CajaName extends StatefulWidget {
  @override
  _CajaNameState createState() => _CajaNameState();
}

class _CajaNameState extends State<CajaName> {
  String nombre = 'Name';

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
      onChanged: (valor) {
        setState(() {
          nombre = valor;
        });
      },
    );
  }
}

class TextoPrincipal extends StatelessWidget {
  final String textoPrincipal;

  const TextoPrincipal({this.textoPrincipal});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        this.textoPrincipal,
        style: TextStyle(
          color: Colors.black,
          fontSize: 25,
        ),
        textAlign: TextAlign.left,
      ),
    );
  }
}
