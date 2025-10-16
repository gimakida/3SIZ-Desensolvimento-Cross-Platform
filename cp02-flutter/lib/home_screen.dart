import 'package:flutter/material.dart';
import 'package:myapp/explorer.dart';

class HomeScreen extends StatefulWidget {
  final String title;

  const HomeScreen({super.key, required this.title});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late TextEditingController _nomeController;
  late TextEditingController _servicoController;
  final List<Oficina> oficinas =[];
  final GlobalKey _formKey = GlobalKey();

  @override
  void initState() {
    _nomeController = TextEditingController();
    _servicoController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _nomeController.dispose();
    _servicoController.dispose();
    super.dispose();
  }

  void save() {
    final nome = _nomeController.text;
    final servico = _servicoController.text;
    final oficina = Oficina(nome: nome, servico: servico);

    setState(() {
      oficinas.add(oficina);
    }); 
  }

  void clear() {
    _nomeController.clear();
    _servicoController.clear();
    clear();
  }

  void count(){
    int i = 0;
    i++;
    count();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Row(

        children: [
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 40),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Ofcina do Bairro"),
                  Text("Cadastro"),
                  SizedBox(height: 20,),
                  Form(
                    child: Column(
                      key: _formKey,
                      children: [
                        TextFormField(
                          controller: _nomeController,
                          decoration: InputDecoration(
                            label: Text("Cliente"),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(6),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        TextFormField(
                          controller: _servicoController,
                          decoration: InputDecoration(
                            label: Text("Serviço"),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(6),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {
                            save();
                          },
                          child: Text("Salvar"),
                        ),
                        SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {
                            clear();
                          },
                          child: Text("Limpar"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.white,
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: oficinas.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                            title: Text(oficinas[index].presenterNome()),
                            subtitle: Text(oficinas[index].presenterServico()));
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
