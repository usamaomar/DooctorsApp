import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'drawer_component_model.dart';
export 'drawer_component_model.dart';

class DrawerComponentWidget extends StatefulWidget {
  const DrawerComponentWidget({
    super.key,
    required this.pageNameEnum,
  });

  final PageNameEnum? pageNameEnum;

  @override
  State<DrawerComponentWidget> createState() => _DrawerComponentWidgetState();
}

class _DrawerComponentWidgetState extends State<DrawerComponentWidget> {
  late DrawerComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DrawerComponentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFFDFDFD),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 20.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(0.0),
              child: Image.network(
                'https://picsum.photos/seed/297/600',
                width: 200.0,
                height: 85.0,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Divider(
            thickness: 1.0,
            indent: 15.0,
            endIndent: 15.0,
            color: FlutterFlowTheme.of(context).tertiary,
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(15.0, 15.0, 15.0, 15.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: SvgPicture.asset(
                    'assets/images/Mask_Group_22.svg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Text(
                FFLocalizations.of(context).getText(
                  'dor348c3' /* Hello World */,
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Almarai',
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      useGoogleFonts:
                          GoogleFonts.asMap().containsKey('Almarai'),
                    ),
              ),
            ],
          ),
          Flexible(
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
              child: Container(
                decoration: BoxDecoration(
                  color: widget.pageNameEnum == PageNameEnum.PatientInformation
                      ? FlutterFlowTheme.of(context).tertiary
                      : FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(15.0, 18.0, 15.0, 18.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Flexible(
                        child: Icon(
                          Icons.people_alt,
                          color: widget.pageNameEnum ==
                                  PageNameEnum.PatientInformation
                              ? FlutterFlowTheme.of(context).secondaryBackground
                              : FlutterFlowTheme.of(context).tertiary,
                          size: 24.0,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            10.0, 0.0, 10.0, 0.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            '06v7pdlb' /* Patient Information */,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Almarai',
                                color: widget.pageNameEnum ==
                                        PageNameEnum.PatientInformation
                                    ? FlutterFlowTheme.of(context)
                                        .secondaryBackground
                                    : FlutterFlowTheme.of(context).primaryText,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                useGoogleFonts:
                                    GoogleFonts.asMap().containsKey('Almarai'),
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
