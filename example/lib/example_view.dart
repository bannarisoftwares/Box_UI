import 'package:box_ui/box_ui.dart';
import 'package:flutter/material.dart';

class ExampleView extends StatelessWidget {
  var controller = BoxDashInputController();

  ExampleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
        children: [
          BoxText.headingOne('Design System'),
          verticalSpaceSmall,
          Divider(),
          verticalSpaceSmall,
          ...buttonWidgets,
          ...textWidgets,
          ...inputFields,
          ...widgets
        ],
      ),
    );
  }

  List<Widget> get textWidgets => [
        // BoxText.headline('Text Styles'),
        verticalSpaceMedium,
        BoxText.headingOne('Heading One'),
        verticalSpaceMedium,
        BoxText.headingTwo('Heading Two'),
        verticalSpaceMedium,
        BoxText.headingThree('Heading Three'),
        verticalSpaceMedium,
        BoxText.bodyOne(
            'Body one, Body Text that will be used for the general body'),
        verticalSpaceMedium,
        BoxText.bodyTwo(
            'Body two, Body Text that will be used for the general body'),
        verticalSpaceMedium,
        BoxText.bodyThree(
            'Body three, Body Text that will be used for the general body'),
        verticalSpaceMedium,
      ];

  List<Widget> get buttonWidgets => [
        BoxText.headingTwo('Buttons'),
        verticalSpaceMedium,
        BoxText.bodyTwo('Normal'),
        verticalSpaceSmall,
        BoxButton(
          title: 'SIGN IN',
          onTap: () {
            controller.setHintIcon();
          },
        ),
        verticalSpaceSmall,
        BoxText.bodyTwo('Disabled'),
        verticalSpaceSmall,
        BoxButton(
          title: 'SIGN IN',
          disabled: true,
        ),
        verticalSpaceSmall,
        BoxText.bodyTwo('Busy'),
        verticalSpaceSmall,
        BoxButton(
          title: 'SIGN IN',
          busy: true,
        ),
        verticalSpaceSmall,
        BoxText.bodyTwo('Outline'),
        verticalSpaceSmall,
        BoxButton.outline(
          title: 'Select location',
          leading: Icon(
            Icons.send,
            color: kcPrimaryColor,
          ),
        ),
        verticalSpaceMedium,
      ];

  List<Widget> get inputFields => [
        BoxText.headingOne('Input Field'),
        verticalSpaceSmall,
        BoxText.bodyTwo('Normal'),
        verticalSpaceSmall,
        BoxInputField(
          controller: TextEditingController(),
          placeholder: 'Enter Password',
        ),
        verticalSpaceSmall,
        BoxText.bodyTwo('Leading Icon'),
        verticalSpaceSmall,
        BoxInputField(
          controller: TextEditingController(),
          leading: Icon(Icons.reset_tv),
          placeholder: 'Enter TV Code',
        ),
        verticalSpaceSmall,
        BoxText.bodyTwo('Trailing Icon'),
        verticalSpaceSmall,
        BoxInputField(
          controller: TextEditingController(),
          trailing: Icon(Icons.search),
          placeholder: 'Search for things',
        )
      ];

  List<Widget> get widgets => [
        verticalSpaceMedium,
        BoxInput(),
        Space.vertical(20),
        BoxSearch(),
        Space.vertical(20),
        BoxDashInput(
          controller: controller,
        ),
        Space.vertical(20),
        BoxFieldDropDown()
      ];
}
