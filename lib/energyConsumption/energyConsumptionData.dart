import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:powereffi_mobile/energyConsumption/DropDownButtonWidget.dart';
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
                      hintText: "Name", labelText: "Name"),
                  controller: _distributionCompanyNameController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Insert full name';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(
                      hintText: "Email", labelText: "Email"),
                  controller: _installationNumberController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Insert your email';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(
                      hintText: "Phone number", labelText: "Phone number"),
                  controller: _clientNameController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Insert your phone number';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(
                      hintText: "Document number", labelText: "Phone number"),
                  controller: _addressController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Insert your document number';
                    }
                    return null;
                  },
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {

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