import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'item_detail_model.dart';
export 'item_detail_model.dart';

class ItemDetailWidget extends StatefulWidget {
  const ItemDetailWidget({
    super.key,
    required this.productRef,
  });

  final ProductosRecord? productRef;

  @override
  _ItemDetailWidgetState createState() => _ItemDetailWidgetState();
}

class _ItemDetailWidgetState extends State<ItemDetailWidget> {
  late ItemDetailModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ItemDetailModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return StreamBuilder<ProductosRecord>(
      stream: ProductosRecord.getDocument(widget.productRef!.reference),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        final itemDetailProductosRecord = snapshot.data!;
        return GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).primary,
              automaticallyImplyLeading: false,
              leading: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 60.0,
                icon: const Icon(
                  Icons.arrow_back_rounded,
                  color: Colors.white,
                  size: 30.0,
                ),
                onPressed: () async {
                  context.pop();
                },
              ),
              title: Text(
                'Detalles',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Raleway',
                      color: Colors.white,
                      fontSize: 22.0,
                    ),
              ),
              actions: const [],
              centerTitle: true,
              elevation: 2.0,
            ),
            body: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 40.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        itemDetailProductosRecord.name,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Raleway',
                              fontSize: 26.0,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      Text(
                        itemDetailProductosRecord.material,
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Raleway',
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                      Text(
                        itemDetailProductosRecord.price.toString(),
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Raleway',
                              fontSize: 24.0,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Material(
                        color: Colors.transparent,
                        elevation: 5.0,
                        child: Container(
                          decoration: const BoxDecoration(),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.network(
                              itemDetailProductosRecord.allImages.first,
                              width: 300.0,
                              height: 200.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Material(
                        color: Colors.transparent,
                        elevation: 4.0,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(0.0),
                            bottomRight: Radius.circular(30.0),
                            topLeft: Radius.circular(30.0),
                            topRight: Radius.circular(0.0),
                          ),
                        ),
                        child: Container(
                          width: 80.0,
                          height: 80.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(0.0),
                              bottomRight: Radius.circular(30.0),
                              topLeft: Radius.circular(30.0),
                              topRight: Radius.circular(0.0),
                            ),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.network(
                              itemDetailProductosRecord.allImages[0],
                              width: 200.0,
                              height: 250.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Material(
                        color: Colors.transparent,
                        elevation: 4.0,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(0.0),
                            bottomRight: Radius.circular(30.0),
                            topLeft: Radius.circular(30.0),
                            topRight: Radius.circular(0.0),
                          ),
                        ),
                        child: Container(
                          width: 80.0,
                          height: 80.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(0.0),
                              bottomRight: Radius.circular(30.0),
                              topLeft: Radius.circular(30.0),
                              topRight: Radius.circular(0.0),
                            ),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.network(
                              itemDetailProductosRecord.allImages[1],
                              width: 200.0,
                              height: 250.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Material(
                        color: Colors.transparent,
                        elevation: 4.0,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(0.0),
                            bottomRight: Radius.circular(30.0),
                            topLeft: Radius.circular(30.0),
                            topRight: Radius.circular(0.0),
                          ),
                        ),
                        child: Container(
                          width: 80.0,
                          height: 80.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(0.0),
                              bottomRight: Radius.circular(30.0),
                              topLeft: Radius.circular(30.0),
                              topRight: Radius.circular(0.0),
                            ),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.network(
                              itemDetailProductosRecord.allImages[2],
                              width: 200.0,
                              height: 250.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ].divide(const SizedBox(width: 20.0)),
                  ),
                  Flexible(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Flexible(
                            child: Text(
                              itemDetailProductosRecord.description,
                              textAlign: TextAlign.start,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Raleway',
                                    color: const Color(0xFF707B81),
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ].divide(const SizedBox(height: 0.0)),
              ),
            ),
          ),
        );
      },
    );
  }
}
