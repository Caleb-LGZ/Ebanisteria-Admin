import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'success_model.dart';
export 'success_model.dart';

class SuccessWidget extends StatefulWidget {
  const SuccessWidget({super.key});

  @override
  _SuccessWidgetState createState() => _SuccessWidgetState();
}

class _SuccessWidgetState extends State<SuccessWidget> {
  late SuccessModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SuccessModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Material(
      color: Colors.transparent,
      elevation: 5.0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
      ),
      child: Container(
        width: double.infinity,
        height: 300.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(0.0),
            bottomRight: Radius.circular(0.0),
            topLeft: Radius.circular(16.0),
            topRight: Radius.circular(16.0),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: MediaQuery.sizeOf(context).height * 0.3,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).success,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.price_check_outlined,
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        size: 32.0,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Su pago se ha realizado con éxito.',
                            style: FlutterFlowTheme.of(context)
                                .headlineSmall
                                .override(
                                  fontFamily: 'Raleway',
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Numero de orden',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Raleway',
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                    Text(
                      'Order Number',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Raleway',
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ],
                ),
                Text(
                  'A la brevedad recibirá su comprobante de pago',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Raleway',
                        color: const Color(0xFF707B81),
                        fontWeight: FontWeight.w300,
                      ),
                ),
              ].divide(const SizedBox(height: 20.0)),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 40.0),
              child: FFButtonWidget(
                onPressed: () {
                  print('Button pressed ...');
                },
                text: 'Volver a la tienda',
                options: FFButtonOptions(
                  width: MediaQuery.sizeOf(context).width * 0.4,
                  height: 40.0,
                  padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  iconPadding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Raleway',
                        color: FlutterFlowTheme.of(context).secondaryText,
                      ),
                  elevation: 3.0,
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).secondaryText,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
