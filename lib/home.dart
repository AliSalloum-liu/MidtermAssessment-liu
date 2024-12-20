import 'package:flutter/material.dart';
import 'service_provider.dart';

class HomeScreen extends StatefulWidget {
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String selectedType = "Any";
  String selectedProfession = "Plumber";
  ServiceProvider? selectedProvider;

  List<ServiceProvider> getFilteredProviders() {
    return providers.where((provider) {
      final isTypeMatch = selectedType == "Any" ||
          (selectedType == "Individual" && provider.isIndividual) ||
          (selectedType == "Company" && !provider.isIndividual);
      final isProfessionMatch = provider.profession == selectedProfession;
      return isTypeMatch && isProfessionMatch;
    }).toList();
  }


  Widget build(BuildContext context) {
    final filteredProviders = getFilteredProviders();

    return Scaffold(
      appBar: AppBar(
        title: Text("Service Providers"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text("Individual"),
                Radio(
                  value: "Individual",
                  groupValue: selectedType,
                  onChanged: (value) {
                    setState(() {
                      selectedType = value as String;
                      selectedProvider = null;
                    });
                  },
                ),
                Text("Company"),
                Radio(
                  value: "Company",
                  groupValue: selectedType,
                  onChanged: (value) {
                    setState(() {
                      selectedType = value as String;
                      selectedProvider = null;
                    });
                  },
                ),
                Text("Any"),
                Radio(
                  value: "Any",
                  groupValue: selectedType,
                  onChanged: (value) {
                    setState(() {
                      selectedType = value as String;
                      selectedProvider = null;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 16),

            DropdownButton<String>(
              value: selectedProfession,
              onChanged: (value) {
                setState(() {
                  selectedProfession = value!;
                  selectedProvider = null;
                });
              },
              items: ["Plumber", "Electrician", "Carpenter"].map((profession) {
                return DropdownMenuItem<String>(
                  value: profession,
                  child: Text(profession),
                );
              }).toList(),
            ),
            SizedBox(height: 16),

            DropdownButton<ServiceProvider>(
              value: selectedProvider,
              hint: Text("Select Provider"),
              onChanged: (value) {
                setState(() {
                  selectedProvider = value;
                });
              },
              items: filteredProviders.map((provider) {
                return DropdownMenuItem<ServiceProvider>(
                  value: provider,
                  child: Text(provider.name),
                );
              }).toList(),
            ),
            SizedBox(height: 16),

            if (selectedProvider != null)
              Text(
                selectedProvider!.toString(),
                style: TextStyle(fontSize: 16),
              ),
          ],
        ),
      ),
    );
  }
}
