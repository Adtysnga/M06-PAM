import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  bool _status_switch = false;

  String dropval = "tidur";

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("M05")),
      body: Column(
        children: [
          SwitchListTile(
            secondary: const Icon(Icons.show_chart),
            title: const Text("Show Hobby Option"),
            value: _status_switch,
            onChanged: (val) {
              setState(() {
                _status_switch = val;
              });
            },
          ),
          Container(
              child: _status_switch
                  ? DropdownButton(
                      value: dropval,
                      onChanged: (String? val) {
                        setState(() {
                          dropval = val!;
                        });
                      },
                      items: const [
                        DropdownMenuItem(
                          value: "tidur",
                          child: Text("Turu"),
                        ),
                        DropdownMenuItem(
                          value: "Makan",
                          child: Text("eat"),
                        ),
                        DropdownMenuItem(
                          value: "Bola",
                          child: Text("Ball"),
                        ),
                      ],
                    )
                  : null),
          if (_status_switch == true)
            if (dropval == "tidur")
              const DeskripsiTuru()
            else if (dropval == "Makan")
              const DeskripsiMakan()
            else if (dropval == "Bola")
              const DeskripsiBola()
        ],
      ),
    );
  }
}

class DeskripsiTuru extends StatelessWidget {
  const DeskripsiTuru({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Text("Ini merupakan deskripsi turu"),
    );
  }
}

class DeskripsiMakan extends StatelessWidget {
  const DeskripsiMakan({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const Text("Makan Indomie", style: TextStyle(fontWeight: FontWeight.bold),),
          const Text("Deskripsi lengkap")
        ],
      ),
    );
  }
}

class DeskripsiBola extends StatelessWidget {
  const DeskripsiBola({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Text("Ini merupakan deskripsi bola"),
    );
  }
}
