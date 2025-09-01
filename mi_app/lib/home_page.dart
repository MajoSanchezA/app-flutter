import 'package:flutter/material.dart';

// Importar widgets de usuario
import 'widgets/user/user_initial.dart';
import 'widgets/user/user_loading.dart';
import 'widgets/user/user_success.dart';
import 'widgets/user/user_fail.dart';

// Importar widgets de tareas
import 'widgets/tasks/task_initial.dart';
import 'widgets/tasks/task_loading.dart';
import 'widgets/tasks/task_success.dart';
import 'widgets/tasks/task_fail.dart';

enum ViewState { initial, loading, error, success }

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ViewState userState = ViewState.initial;
  ViewState taskState = ViewState.initial;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100, // 🎨 Fondo general más limpio
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text(
          "Gestión de Estados",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              _sectionTitle("Usuario"),
              _buildUserContainer(),
              const SizedBox(height: 24),
              _sectionTitle("Tareas"),
              _buildTaskContainer(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          setState(() {
            // Cambiar estados para probar
            userState = ViewState
                .values[(userState.index + 1) % ViewState.values.length];
            taskState = ViewState
                .values[(taskState.index + 1) % ViewState.values.length];
          });
        },
        backgroundColor: Colors.indigo,
        icon: const Icon(Icons.refresh, color: Colors.black),
        label: const Text(
          "Cambiar estados",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  /// 🔹 Título de sección para darle más organización
  Widget _sectionTitle(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
      ),
    );
  }

  Widget _buildUserContainer() {
    switch (userState) {
      case ViewState.initial:
        return const UserInitial();
      case ViewState.loading:
        return const UserLoading();
      case ViewState.success:
        return const UserSuccess();
      case ViewState.error:
        return const UserFail();
    }
  }

  Widget _buildTaskContainer() {
    switch (taskState) {
      case ViewState.initial:
        return const TaskInitial();
      case ViewState.loading:
        return const TaskLoading();
      case ViewState.success:
        return const TaskSuccess();
      case ViewState.error:
        return const TaskFail();
    }
  }
}
