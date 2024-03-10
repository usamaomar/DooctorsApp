import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/drawer_component/drawer_component_widget.dart';
import 'patient_information_page_widget.dart' show PatientInformationPageWidget;
import 'package:flutter/material.dart';

class PatientInformationPageModel
    extends FlutterFlowModel<PatientInformationPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for DrawerComponent component.
  late DrawerComponentModel drawerComponentModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    drawerComponentModel = createModel(context, () => DrawerComponentModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    drawerComponentModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
