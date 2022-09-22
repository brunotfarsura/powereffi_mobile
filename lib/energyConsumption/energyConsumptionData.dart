import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:powereffi_mobile/energyConsumption/DropDownButtonWidget.dart';
import 'package:powereffi_mobile/model/energyProfile.dart';
import 'package:powereffi_mobile/model/person.dart';

class EnergyConsumptionData extends StatelessWidget {
  EnergyConsumptionData({super.key});

  final Text title = const Text("Cadastro pessoal");

  final _formKey = GlobalKey<FormState>();

  TextEditingController _distributionCompanyNameController = TextEditingController();
  final TextEditingController _installationNumberController = TextEditingController();
  final TextEditingController _clientNameController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _groupController = TextEditingController();
  final TextEditingController _subGroupController = TextEditingController();
  final TextEditingController _classDistributionController = TextEditingController();
  final TextEditingController _subClassDistributionController = TextEditingController();
  final TextEditingController _supplyTypeController = TextEditingController();
  final TextEditingController _tariffModalityController = TextEditingController();
  final TextEditingController _energyConsumptionFirstMonthController = TextEditingController();
  final TextEditingController _energyConsumptionSecondMonthController = TextEditingController();
  final TextEditingController _energyConsumptionThirdMonthController = TextEditingController();
  final TextEditingController _energyConsumptionFourthMonthController = TextEditingController();

  @override
  Widget build(BuildContext context) {
      return Scaffold(
      appBar: AppBar(
        title: const Text("Personal data"),
        ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const DropDownButtonWidget(),
                TextFormField(
                  decoration: const InputDecoration(
                      hintText: "Installation number", labelText: "Installation number"),
                  controller: _installationNumberController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Insert the installation number';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(
                      hintText: "Client name", labelText: "Client name"),
                  controller: _clientNameController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Insert the client name';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(
                      hintText: "Insert installation address", labelText: "Insert installation address"),
                  controller: _addressController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Insert installation address';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(
                      hintText: "Group", labelText: "Group"),
                  controller: _groupController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Insert the group';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(
                      hintText: "Subgroup", labelText: "Subgroup"),
                  controller: _subGroupController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Insert the subgroup';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(
                      hintText: "Class distribution", labelText: "Class distribution"),
                  controller: _classDistributionController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Insert the class distribution';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(
                      hintText: "Subclass distribution", labelText: "Subclass distribution"),
                  controller: _subClassDistributionController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Insert the subclass distribution';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(
                      hintText: "Supply type", labelText: "Supply type"),
                  controller: _supplyTypeController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Insert the supply type';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(
                      hintText: "Tariff modality", labelText: "Tariff modality"),
                  controller: _tariffModalityController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Insert the tariff modality';
                    }
                    return null;
                  },
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        EnergyProfile energy = EnergyProfile(
                          distributionCompanyName: _distributionCompanyNameController.text,
                          installationNumber: _installationNumberController.text,
                          clientName: _clientNameController.text,
                          address: _addressController.text,
                          group: _groupController.text,
                          subGroup: _subGroupController.text,
                          classDistribution: _classDistributionController.text,
                          subClassDistribution: _subClassDistributionController.text,
                          supplyType: _supplyTypeController.text,
                          tariffModality: _tariffModalityController.text
                          //allEnergyConsumption: 
                        );

                      //Navigator.pop(context, person);
                        Navigator.pushNamed(context, "/consumptionProfile");
                      }
                    },
                    child: const Text('Save'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}