import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:powereffi_mobile/energyConsumption/DropDownButtonWidget.dart';
import 'package:powereffi_mobile/model/energyConsumption.dart';
import 'package:powereffi_mobile/model/energyProfile.dart';
import 'package:powereffi_mobile/model/person.dart';

class EnergyConsumptionData extends StatelessWidget {
  EnergyConsumptionData({super.key});

  final Text title = const Text("Cadastro de Perfil Energético");

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
  final TextEditingController _monthOneConsumptionController = TextEditingController();
  final TextEditingController _yearOneConsumptionController = TextEditingController();
  final TextEditingController _energyConsumptionSecondMonthController = TextEditingController();
  final TextEditingController _monthTwoConsumptionController = TextEditingController();
  final TextEditingController _yearTwoConsumptionController = TextEditingController();
  final TextEditingController _energyConsumptionThirdMonthController = TextEditingController();
  final TextEditingController _monthThreeConsumptionController = TextEditingController();
  final TextEditingController _yearThreeConsumptionController = TextEditingController();
  @override
  Widget build(BuildContext context) {
      return Scaffold(
      appBar: AppBar(
        title: const Text("Energy profile Data"),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flexible(child: 
                      TextFormField(
                        decoration: const InputDecoration(
                        hintText: "Year of consumption", labelText: "Year of consumption"),
                        keyboardType: TextInputType.number,
                        controller: _yearOneConsumptionController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Insert the year of energy consumption';
                          }
                          return null;
                        },
                    )),
                    Flexible(child: 
                      TextFormField(
                        decoration: const InputDecoration(
                        hintText: "Month of consumption", labelText: "Month of consumption"),
                        keyboardType: TextInputType.number,
                        controller: _monthOneConsumptionController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Insert the month of energy consumption';
                          }
                          return null;
                        },
                    )),
                    Flexible(child: 
                      TextFormField(
                        decoration: const InputDecoration(
                        hintText: "Energy consumption", labelText: "Energy consumption"),
                        keyboardType: TextInputType.number,
                        controller: _energyConsumptionFirstMonthController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Insert the energy consumption';
                          }
                          return null;
                        },
                    ))
                ]),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flexible(child: 
                      TextFormField(
                        decoration: const InputDecoration(
                        hintText: "Year of consumption", labelText: "Year of consumption"),
                        keyboardType: TextInputType.number,
                        controller: _yearTwoConsumptionController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Insert the year of energy consumption';
                          }
                          return null;
                        },
                    )),
                    Flexible(child: 
                      TextFormField(
                        decoration: const InputDecoration(
                        hintText: "Month of consumption", labelText: "Month of consumption"),
                        keyboardType: TextInputType.number,
                        controller: _monthTwoConsumptionController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Insert the month of energy consumption';
                          }
                          return null;
                        },
                    )),
                    Flexible(child: 
                      TextFormField(
                        decoration: const InputDecoration(
                        hintText: "Energy consumption", labelText: "Energy consumption"),
                        keyboardType: TextInputType.number,
                        controller: _energyConsumptionSecondMonthController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Insert the energy consumption';
                          }
                          return null;
                        },
                    ))
                ]),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flexible(child: 
                      TextFormField(
                        decoration: const InputDecoration(
                        hintText: "Year of consumption", labelText: "Year of consumption"),
                        keyboardType: TextInputType.number,
                        controller: _yearThreeConsumptionController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Insert the year of energy consumption';
                          }
                          return null;
                        },
                    )),
                    Flexible(child: 
                      TextFormField(
                        decoration: const InputDecoration(
                        hintText: "Month of consumption", labelText: "Month of consumption"),
                        keyboardType: TextInputType.number,
                        controller: _monthThreeConsumptionController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Insert the month of energy consumption';
                          }
                          return null;
                        },
                    )),
                    Flexible(child: 
                      TextFormField(
                        decoration: const InputDecoration(
                          hintText: "Energy consumption",
                          labelText: "Energy consumption"
                        ),
                        keyboardType: TextInputType.number,
                        controller: _energyConsumptionThirdMonthController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Insert the energy consumption';
                          }
                          return null;
                        },
                    ))
                ]),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        EnergyProfile energyProfile = EnergyProfile(
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

                        EnergyConsumption energyConsumption1 = EnergyConsumption(
                          profileId: energyProfile.id!,
                          month: int.parse(_yearOneConsumptionController.text),
                          year: int.parse(_monthOneConsumptionController.text),
                          energyConsumption: int.parse(_energyConsumptionFirstMonthController.text));

                        EnergyConsumption energyConsumption2 = EnergyConsumption(
                          profileId: energyProfile.id!,
                          month: int.parse(_yearOneConsumptionController.text),
                          year: int.parse(_monthOneConsumptionController.text),
                          energyConsumption: int.parse(_energyConsumptionFirstMonthController.text));

                        EnergyConsumption energyConsumption3 = EnergyConsumption(
                          profileId: energyProfile.id!,
                          month: int.parse(_yearOneConsumptionController.text),
                          year: int.parse(_monthOneConsumptionController.text),
                          energyConsumption: int.parse(_energyConsumptionFirstMonthController.text));
                        
                        Navigator.pop(context, energyProfile);
                        //Navigator.pushNamed(context, "/consumptionProfile");
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