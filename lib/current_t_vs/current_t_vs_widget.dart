import '/backend/backend.dart';
import '/components/create_repair_ticket_widget.dart';
import '/components/repairticketinfo_widget.dart';
import '/components/web_nav_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';
import 'current_t_vs_model.dart';
export 'current_t_vs_model.dart';

class CurrentTVsWidget extends StatefulWidget {
  const CurrentTVsWidget({super.key});

  @override
  State<CurrentTVsWidget> createState() => _CurrentTVsWidgetState();
}

class _CurrentTVsWidgetState extends State<CurrentTVsWidget> {
  late CurrentTVsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CurrentTVsModel());

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: responsiveVisibility(
          context: context,
          desktop: false,
        )
            ? AppBar(
                backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
                automaticallyImplyLeading: false,
                title: Text(
                  'Current List of TVs',
                  style: FlutterFlowTheme.of(context).displaySmall,
                ),
                actions: [],
                centerTitle: false,
                elevation: 0.0,
              )
            : null,
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  wrapWithModel(
                    model: _model.webNavModel,
                    updateCallback: () => setState(() {}),
                    child: WebNavWidget(
                      selectedPage: 2,
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: AlignmentDirectional(0.0, -1.0),
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        constraints: BoxConstraints(
                          maxWidth: 1170.0,
                          maxHeight: double.infinity,
                        ),
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                        ),
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Align(
                          alignment: AlignmentDirectional(0.0, -1.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                12.0, 0.0, 12.0, 0.0),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  if (responsiveVisibility(
                                    context: context,
                                    phone: false,
                                    tablet: false,
                                  ))
                                    Container(
                                      width: 200.0,
                                      height: 32.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                      ),
                                    ),
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          4.0, 16.0, 4.0, 16.0),
                                      child: Container(
                                        width: double.infinity,
                                        height: 750.0,
                                        constraints: BoxConstraints(
                                          maxWidth: 1170.0,
                                          maxHeight: double.infinity,
                                        ),
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 3.0,
                                              color: Color(0x33000000),
                                              offset: Offset(0.0, 1.0),
                                            )
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .lineColor,
                                          ),
                                        ),
                                        child: Builder(
                                          builder: (context) {
                                            if (MediaQuery.sizeOf(context)
                                                    .width >
                                                1000.0) {
                                              return Padding(
                                                padding: EdgeInsets.all(16.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Expanded(
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            12.0,
                                                                            0.0),
                                                                child: Text(
                                                                  'Current TVs',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineSmall,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        if (responsiveVisibility(
                                                          context: context,
                                                          phone: false,
                                                          tablet: false,
                                                        ))
                                                          Container(
                                                            width: 270.0,
                                                            child:
                                                                TextFormField(
                                                              controller: _model
                                                                  .textController1,
                                                              focusNode: _model
                                                                  .textFieldFocusNode1,
                                                              textCapitalization:
                                                                  TextCapitalization
                                                                      .sentences,
                                                              obscureText:
                                                                  false,
                                                              decoration:
                                                                  InputDecoration(
                                                                isDense: true,
                                                                hintText:
                                                                    'Search tickets...',
                                                                hintStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall,
                                                                enabledBorder:
                                                                    OutlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                                    width: 2.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                                focusedBorder:
                                                                    OutlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: Color(
                                                                        0x00000000),
                                                                    width: 2.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                                errorBorder:
                                                                    OutlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: Color(
                                                                        0x00000000),
                                                                    width: 2.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                                focusedErrorBorder:
                                                                    OutlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: Color(
                                                                        0x00000000),
                                                                    width: 2.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                                prefixIcon:
                                                                    Icon(
                                                                  Icons
                                                                      .search_rounded,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  size: 20.0,
                                                                ),
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium,
                                                              validator: _model
                                                                  .textController1Validator
                                                                  .asValidator(
                                                                      context),
                                                            ),
                                                          ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      10.0,
                                                                      0.0),
                                                          child: InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              await queryRepairTicketsRecordOnce()
                                                                  .then(
                                                                    (records) => _model
                                                                            .simpleSearchResults1 =
                                                                        TextSearch(
                                                                      records
                                                                          .map(
                                                                            (record) =>
                                                                                TextSearchItem.fromTerms(record, [
                                                                              record.repairId!,
                                                                              record.phoneNo!
                                                                            ]),
                                                                          )
                                                                          .toList(),
                                                                    )
                                                                            .search(_model
                                                                                .textController1.text)
                                                                            .map((r) =>
                                                                                r.object)
                                                                            .toList(),
                                                                  )
                                                                  .onError((_,
                                                                          __) =>
                                                                      _model.simpleSearchResults1 =
                                                                          [])
                                                                  .whenComplete(() =>
                                                                      setState(
                                                                          () {}));
                                                            },
                                                            child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                              child:
                                                                  Image.asset(
                                                                'assets/images/magnifying_glass.png',
                                                                width: 30.0,
                                                                height: 30.0,
                                                                fit: BoxFit
                                                                    .contain,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      25.0,
                                                                      0.0),
                                                          child: InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              setState(() {
                                                                _model.isShowFullList =
                                                                    true;
                                                              });
                                                              setState(() {
                                                                _model
                                                                    .textController1
                                                                    ?.clear();
                                                              });
                                                            },
                                                            child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                              child:
                                                                  Image.asset(
                                                                'assets/images/greenx.jpg',
                                                                width: 30.0,
                                                                height: 30.0,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        if (responsiveVisibility(
                                                          context: context,
                                                          phone: false,
                                                          tablet: false,
                                                        ))
                                                          Builder(
                                                            builder: (context) =>
                                                                FFButtonWidget(
                                                              onPressed:
                                                                  () async {
                                                                await showDialog(
                                                                  context:
                                                                      context,
                                                                  builder:
                                                                      (dialogContext) {
                                                                    return Dialog(
                                                                      elevation:
                                                                          0,
                                                                      insetPadding:
                                                                          EdgeInsets
                                                                              .zero,
                                                                      backgroundColor:
                                                                          Colors
                                                                              .transparent,
                                                                      alignment: AlignmentDirectional(
                                                                              0.0,
                                                                              0.0)
                                                                          .resolve(
                                                                              Directionality.of(context)),
                                                                      child:
                                                                          GestureDetector(
                                                                        onTap: () => _model.unfocusNode.canRequestFocus
                                                                            ? FocusScope.of(context).requestFocus(_model.unfocusNode)
                                                                            : FocusScope.of(context).unfocus(),
                                                                        child:
                                                                            CreateRepairTicketWidget(),
                                                                      ),
                                                                    );
                                                                  },
                                                                ).then((value) =>
                                                                    setState(
                                                                        () {}));
                                                              },
                                                              text:
                                                                  'Create Ticket',
                                                              icon: Icon(
                                                                Icons
                                                                    .add_rounded,
                                                                size: 15.0,
                                                              ),
                                                              options:
                                                                  FFButtonOptions(
                                                                height: 40.0,
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        0.0,
                                                                        16.0,
                                                                        0.0),
                                                                iconPadding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                textStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .titleSmallFamily,
                                                                      color: Colors
                                                                          .white,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              FlutterFlowTheme.of(context).titleSmallFamily),
                                                                    ),
                                                                elevation: 3.0,
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: Colors
                                                                      .transparent,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                              ),
                                                            ),
                                                          ),
                                                      ],
                                                    ),
                                                    Builder(
                                                      builder: (context) {
                                                        if (_model
                                                            .isShowFullList) {
                                                          return ListView(
                                                            padding:
                                                                EdgeInsets.zero,
                                                            shrinkWrap: true,
                                                            scrollDirection:
                                                                Axis.vertical,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            15.0,
                                                                            0.0,
                                                                            0.0),
                                                                child:
                                                                    Container(
                                                                  height: 200.0,
                                                                  decoration:
                                                                      BoxDecoration(),
                                                                  child: StreamBuilder<
                                                                      List<
                                                                          RepairTicketsRecord>>(
                                                                    stream:
                                                                        queryRepairTicketsRecord(),
                                                                    builder:
                                                                        (context,
                                                                            snapshot) {
                                                                      // Customize what your widget looks like when it's loading.
                                                                      if (!snapshot
                                                                          .hasData) {
                                                                        return Center(
                                                                          child:
                                                                              SizedBox(
                                                                            width:
                                                                                50.0,
                                                                            height:
                                                                                50.0,
                                                                            child:
                                                                                CircularProgressIndicator(
                                                                              valueColor: AlwaysStoppedAnimation<Color>(
                                                                                FlutterFlowTheme.of(context).primary,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        );
                                                                      }
                                                                      List<RepairTicketsRecord>
                                                                          dataTableRepairTicketsRecordList =
                                                                          snapshot
                                                                              .data!;
                                                                      return Container(
                                                                        width: double
                                                                            .infinity,
                                                                        child:
                                                                            DataTable2(
                                                                          columns: [
                                                                            DataColumn2(
                                                                              label: DefaultTextStyle.merge(
                                                                                softWrap: true,
                                                                                child: Text(
                                                                                  'Repair ID',
                                                                                  style: FlutterFlowTheme.of(context).labelLarge,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            DataColumn2(
                                                                              label: DefaultTextStyle.merge(
                                                                                softWrap: true,
                                                                                child: Text(
                                                                                  'CusName',
                                                                                  style: FlutterFlowTheme.of(context).labelLarge,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            DataColumn2(
                                                                              label: DefaultTextStyle.merge(
                                                                                softWrap: true,
                                                                                child: Text(
                                                                                  'Phone Number',
                                                                                  style: FlutterFlowTheme.of(context).labelLarge,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            DataColumn2(
                                                                              label: DefaultTextStyle.merge(
                                                                                softWrap: true,
                                                                                child: Text(
                                                                                  'Make/Model',
                                                                                  style: FlutterFlowTheme.of(context).labelLarge,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            DataColumn2(
                                                                              label: DefaultTextStyle.merge(
                                                                                softWrap: true,
                                                                                child: Text(
                                                                                  'Serial Number',
                                                                                  style: FlutterFlowTheme.of(context).labelLarge,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            DataColumn2(
                                                                              label: DefaultTextStyle.merge(
                                                                                softWrap: true,
                                                                                child: Text(
                                                                                  'Status',
                                                                                  style: FlutterFlowTheme.of(context).labelLarge,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            DataColumn2(
                                                                              label: DefaultTextStyle.merge(
                                                                                softWrap: true,
                                                                                child: Text(
                                                                                  'Dropoff Date',
                                                                                  style: FlutterFlowTheme.of(context).labelLarge,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            DataColumn2(
                                                                              label: DefaultTextStyle.merge(
                                                                                softWrap: true,
                                                                                child: Text(
                                                                                  'Description',
                                                                                  style: FlutterFlowTheme.of(context).labelLarge,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            DataColumn2(
                                                                              label: DefaultTextStyle.merge(
                                                                                softWrap: true,
                                                                                child: Text(
                                                                                  'More...',
                                                                                  style: FlutterFlowTheme.of(context).labelLarge,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                          rows: dataTableRepairTicketsRecordList
                                                                              .mapIndexed((dataTableIndex, dataTableRepairTicketsRecord) => [
                                                                                    Text(
                                                                                      dataTableRepairTicketsRecord.repairId,
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                    ),
                                                                                    Text(
                                                                                      dataTableRepairTicketsRecord.cusName,
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                    ),
                                                                                    Text(
                                                                                      dataTableRepairTicketsRecord.phoneNo,
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                    ),
                                                                                    Text(
                                                                                      dataTableRepairTicketsRecord.makeModel,
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                    ),
                                                                                    Text(
                                                                                      dataTableRepairTicketsRecord.serialNo,
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                    ),
                                                                                    Text(
                                                                                      dataTableRepairTicketsRecord.status,
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                    ),
                                                                                    Text(
                                                                                      dateTimeFormat('Md', dataTableRepairTicketsRecord.recievedDate!),
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                    ),
                                                                                    Text(
                                                                                      dataTableRepairTicketsRecord.description,
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                    ),
                                                                                    Builder(
                                                                                      builder: (context) => FFButtonWidget(
                                                                                        onPressed: () async {
                                                                                          await showDialog(
                                                                                            context: context,
                                                                                            builder: (dialogContext) {
                                                                                              return Dialog(
                                                                                                elevation: 0,
                                                                                                insetPadding: EdgeInsets.zero,
                                                                                                backgroundColor: Colors.transparent,
                                                                                                alignment: AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                                child: GestureDetector(
                                                                                                  onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                                  child: RepairticketinfoWidget(
                                                                                                    startDate: dataTableRepairTicketsRecord.recievedDate!,
                                                                                                    repairTicket: dataTableRepairTicketsRecord.repairId,
                                                                                                    cusName: dataTableRepairTicketsRecord.cusName,
                                                                                                    makeModel: dataTableRepairTicketsRecord.makeModel,
                                                                                                    serialNo: dataTableRepairTicketsRecord.serialNo,
                                                                                                    status: dataTableRepairTicketsRecord.status,
                                                                                                    phoneNo: dataTableRepairTicketsRecord.phoneNo,
                                                                                                    ticketchosen: dataTableRepairTicketsRecord.reference,
                                                                                                  ),
                                                                                                ),
                                                                                              );
                                                                                            },
                                                                                          ).then((value) => setState(() {}));
                                                                                        },
                                                                                        text: 'Details',
                                                                                        options: FFButtonOptions(
                                                                                          height: 40.0,
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                          iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                          color: FlutterFlowTheme.of(context).primary,
                                                                                          textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                                color: Colors.white,
                                                                                                fontSize: 12.0,
                                                                                                fontWeight: FontWeight.normal,
                                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                                              ),
                                                                                          elevation: 3.0,
                                                                                          borderSide: BorderSide(
                                                                                            color: Colors.transparent,
                                                                                            width: 1.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(8.0),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ].map((c) => DataCell(c)).toList())
                                                                              .map((e) => DataRow(cells: e))
                                                                              .toList(),
                                                                          headingRowColor:
                                                                              MaterialStateProperty.all(
                                                                            FlutterFlowTheme.of(context).primaryBackground,
                                                                          ),
                                                                          headingRowHeight:
                                                                              56.0,
                                                                          dataRowColor:
                                                                              MaterialStateProperty.all(
                                                                            FlutterFlowTheme.of(context).secondaryBackground,
                                                                          ),
                                                                          dataRowHeight:
                                                                              56.0,
                                                                          border:
                                                                              TableBorder(
                                                                            borderRadius:
                                                                                BorderRadius.circular(0.0),
                                                                          ),
                                                                          dividerThickness:
                                                                              2.0,
                                                                          showBottomBorder:
                                                                              true,
                                                                          minWidth:
                                                                              49.0,
                                                                        ),
                                                                      );
                                                                    },
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          );
                                                        } else {
                                                          return ListView(
                                                            padding:
                                                                EdgeInsets.zero,
                                                            shrinkWrap: true,
                                                            scrollDirection:
                                                                Axis.vertical,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            15.0,
                                                                            0.0,
                                                                            0.0),
                                                                child:
                                                                    Container(
                                                                  height: 500.0,
                                                                  decoration:
                                                                      BoxDecoration(),
                                                                  child:
                                                                      Builder(
                                                                    builder:
                                                                        (context) {
                                                                      final tvSearchResults = _model
                                                                          .simpleSearchResults1
                                                                          .toList();
                                                                      return Container(
                                                                        width: double
                                                                            .infinity,
                                                                        height:
                                                                            750.0,
                                                                        child:
                                                                            DataTable2(
                                                                          columns: [
                                                                            DataColumn2(
                                                                              label: DefaultTextStyle.merge(
                                                                                softWrap: true,
                                                                                child: Text(
                                                                                  'Repair ID',
                                                                                  style: FlutterFlowTheme.of(context).labelLarge,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            DataColumn2(
                                                                              label: DefaultTextStyle.merge(
                                                                                softWrap: true,
                                                                                child: Text(
                                                                                  'CusName',
                                                                                  style: FlutterFlowTheme.of(context).labelLarge,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            DataColumn2(
                                                                              label: DefaultTextStyle.merge(
                                                                                softWrap: true,
                                                                                child: Visibility(
                                                                                  visible: responsiveVisibility(
                                                                                    context: context,
                                                                                    phone: false,
                                                                                    tablet: false,
                                                                                  ),
                                                                                  child: Text(
                                                                                    'Phone Number',
                                                                                    style: FlutterFlowTheme.of(context).labelLarge,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            DataColumn2(
                                                                              label: DefaultTextStyle.merge(
                                                                                softWrap: true,
                                                                                child: Visibility(
                                                                                  visible: responsiveVisibility(
                                                                                    context: context,
                                                                                    phone: false,
                                                                                    tablet: false,
                                                                                  ),
                                                                                  child: Text(
                                                                                    'Make/Model',
                                                                                    style: FlutterFlowTheme.of(context).labelLarge,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            DataColumn2(
                                                                              label: DefaultTextStyle.merge(
                                                                                softWrap: true,
                                                                                child: Visibility(
                                                                                  visible: responsiveVisibility(
                                                                                    context: context,
                                                                                    phone: false,
                                                                                    tablet: false,
                                                                                  ),
                                                                                  child: Text(
                                                                                    'Serial Number',
                                                                                    style: FlutterFlowTheme.of(context).labelLarge,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            DataColumn2(
                                                                              label: DefaultTextStyle.merge(
                                                                                softWrap: true,
                                                                                child: Text(
                                                                                  'Status',
                                                                                  style: FlutterFlowTheme.of(context).labelLarge,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            DataColumn2(
                                                                              label: DefaultTextStyle.merge(
                                                                                softWrap: true,
                                                                                child: Visibility(
                                                                                  visible: responsiveVisibility(
                                                                                    context: context,
                                                                                    phone: false,
                                                                                    tablet: false,
                                                                                  ),
                                                                                  child: Text(
                                                                                    'Dropoff Date',
                                                                                    style: FlutterFlowTheme.of(context).labelLarge,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            DataColumn2(
                                                                              label: DefaultTextStyle.merge(
                                                                                softWrap: true,
                                                                                child: Visibility(
                                                                                  visible: responsiveVisibility(
                                                                                    context: context,
                                                                                    phone: false,
                                                                                    tablet: false,
                                                                                  ),
                                                                                  child: Text(
                                                                                    'Description',
                                                                                    style: FlutterFlowTheme.of(context).labelLarge,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            DataColumn2(
                                                                              label: DefaultTextStyle.merge(
                                                                                softWrap: true,
                                                                                child: Text(
                                                                                  'Edit Header 9',
                                                                                  style: FlutterFlowTheme.of(context).labelLarge,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                          rows: tvSearchResults
                                                                              .mapIndexed((tvSearchResultsIndex, tvSearchResultsItem) => [
                                                                                    Text(
                                                                                      tvSearchResultsItem.repairId,
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                    ),
                                                                                    Text(
                                                                                      tvSearchResultsItem.cusName,
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                    ),
                                                                                    Visibility(
                                                                                      visible: responsiveVisibility(
                                                                                        context: context,
                                                                                        phone: false,
                                                                                        tablet: false,
                                                                                      ),
                                                                                      child: Text(
                                                                                        tvSearchResultsItem.phoneNo,
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                      ),
                                                                                    ),
                                                                                    Visibility(
                                                                                      visible: responsiveVisibility(
                                                                                        context: context,
                                                                                        phone: false,
                                                                                        tablet: false,
                                                                                      ),
                                                                                      child: Text(
                                                                                        tvSearchResultsItem.makeModel,
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                      ),
                                                                                    ),
                                                                                    Visibility(
                                                                                      visible: responsiveVisibility(
                                                                                        context: context,
                                                                                        phone: false,
                                                                                        tablet: false,
                                                                                      ),
                                                                                      child: Text(
                                                                                        tvSearchResultsItem.serialNo,
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                      ),
                                                                                    ),
                                                                                    Text(
                                                                                      tvSearchResultsItem.status,
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                    ),
                                                                                    Visibility(
                                                                                      visible: responsiveVisibility(
                                                                                        context: context,
                                                                                        phone: false,
                                                                                        tablet: false,
                                                                                      ),
                                                                                      child: Text(
                                                                                        dateTimeFormat('d/M', tvSearchResultsItem.recievedDate!),
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                      ),
                                                                                    ),
                                                                                    Visibility(
                                                                                      visible: responsiveVisibility(
                                                                                        context: context,
                                                                                        phone: false,
                                                                                        tablet: false,
                                                                                      ),
                                                                                      child: Text(
                                                                                        tvSearchResultsItem.description,
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                      ),
                                                                                    ),
                                                                                    Builder(
                                                                                      builder: (context) => FFButtonWidget(
                                                                                        onPressed: () async {
                                                                                          await showDialog(
                                                                                            context: context,
                                                                                            builder: (dialogContext) {
                                                                                              return Dialog(
                                                                                                elevation: 0,
                                                                                                insetPadding: EdgeInsets.zero,
                                                                                                backgroundColor: Colors.transparent,
                                                                                                alignment: AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                                child: GestureDetector(
                                                                                                  onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                                  child: RepairticketinfoWidget(
                                                                                                    startDate: tvSearchResultsItem.recievedDate!,
                                                                                                    repairTicket: tvSearchResultsItem.repairId,
                                                                                                    cusName: tvSearchResultsItem.cusName,
                                                                                                    makeModel: tvSearchResultsItem.makeModel,
                                                                                                    serialNo: tvSearchResultsItem.serialNo,
                                                                                                    status: tvSearchResultsItem.status,
                                                                                                    phoneNo: tvSearchResultsItem.phoneNo,
                                                                                                    ticketchosen: tvSearchResultsItem.reference,
                                                                                                  ),
                                                                                                ),
                                                                                              );
                                                                                            },
                                                                                          ).then((value) => setState(() {}));
                                                                                        },
                                                                                        text: 'Details',
                                                                                        options: FFButtonOptions(
                                                                                          height: 40.0,
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                          iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                          color: FlutterFlowTheme.of(context).primary,
                                                                                          textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                                color: Colors.white,
                                                                                                fontSize: 12.0,
                                                                                                fontWeight: FontWeight.normal,
                                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                                              ),
                                                                                          elevation: 3.0,
                                                                                          borderSide: BorderSide(
                                                                                            color: Colors.transparent,
                                                                                            width: 1.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(8.0),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ].map((c) => DataCell(c)).toList())
                                                                              .map((e) => DataRow(cells: e))
                                                                              .toList(),
                                                                          headingRowColor:
                                                                              MaterialStateProperty.all(
                                                                            FlutterFlowTheme.of(context).primaryBackground,
                                                                          ),
                                                                          headingRowHeight:
                                                                              56.0,
                                                                          dataRowColor:
                                                                              MaterialStateProperty.all(
                                                                            FlutterFlowTheme.of(context).secondaryBackground,
                                                                          ),
                                                                          dataRowHeight:
                                                                              65.0,
                                                                          border:
                                                                              TableBorder(
                                                                            borderRadius:
                                                                                BorderRadius.circular(0.0),
                                                                          ),
                                                                          dividerThickness:
                                                                              2.0,
                                                                          columnSpacing:
                                                                              20.0,
                                                                          showBottomBorder:
                                                                              true,
                                                                          minWidth:
                                                                              49.0,
                                                                        ),
                                                                      );
                                                                    },
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          );
                                                        }
                                                      },
                                                    ),
                                                  ],
                                                ),
                                              );
                                            } else {
                                              return Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      if (responsiveVisibility(
                                                        context: context,
                                                        desktop: false,
                                                      ))
                                                        Expanded(
                                                          child: Container(
                                                            width: 270.0,
                                                            child:
                                                                TextFormField(
                                                              controller: _model
                                                                  .textController2,
                                                              focusNode: _model
                                                                  .textFieldFocusNode2,
                                                              textCapitalization:
                                                                  TextCapitalization
                                                                      .sentences,
                                                              obscureText:
                                                                  false,
                                                              decoration:
                                                                  InputDecoration(
                                                                isDense: true,
                                                                hintText:
                                                                    'Search tickets...',
                                                                hintStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall,
                                                                enabledBorder:
                                                                    OutlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                                    width: 2.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                                focusedBorder:
                                                                    OutlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: Color(
                                                                        0x00000000),
                                                                    width: 2.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                                errorBorder:
                                                                    OutlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: Color(
                                                                        0x00000000),
                                                                    width: 2.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                                focusedErrorBorder:
                                                                    OutlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: Color(
                                                                        0x00000000),
                                                                    width: 2.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                                prefixIcon:
                                                                    Icon(
                                                                  Icons
                                                                      .search_rounded,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  size: 20.0,
                                                                ),
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium,
                                                              validator: _model
                                                                  .textController2Validator
                                                                  .asValidator(
                                                                      context),
                                                            ),
                                                          ),
                                                        ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    10.0,
                                                                    0.0),
                                                        child: InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            await queryRepairTicketsRecordOnce()
                                                                .then(
                                                                  (records) => _model
                                                                          .simpleSearchResults2 =
                                                                      TextSearch(
                                                                    records
                                                                        .map(
                                                                          (record) => TextSearchItem.fromTerms(
                                                                              record,
                                                                              [
                                                                                record.repairId!,
                                                                                record.phoneNo!
                                                                              ]),
                                                                        )
                                                                        .toList(),
                                                                  )
                                                                          .search(_model
                                                                              .textController1
                                                                              .text)
                                                                          .map((r) =>
                                                                              r.object)
                                                                          .toList(),
                                                                )
                                                                .onError((_,
                                                                        __) =>
                                                                    _model.simpleSearchResults2 =
                                                                        [])
                                                                .whenComplete(() =>
                                                                    setState(
                                                                        () {}));
                                                          },
                                                          child: ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                            child: Image.asset(
                                                              'assets/images/magnifying_glass.png',
                                                              width: 30.0,
                                                              height: 30.0,
                                                              fit: BoxFit
                                                                  .contain,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    25.0,
                                                                    0.0),
                                                        child: InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            setState(() {
                                                              _model.isShowFullList =
                                                                  true;
                                                            });
                                                            setState(() {
                                                              _model
                                                                  .textController1
                                                                  ?.clear();
                                                            });
                                                          },
                                                          child: ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                            child: Image.asset(
                                                              'assets/images/greenx.jpg',
                                                              width: 30.0,
                                                              height: 30.0,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      if (responsiveVisibility(
                                                        context: context,
                                                        tabletLandscape: false,
                                                        desktop: false,
                                                      ))
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: Builder(
                                                            builder:
                                                                (context) =>
                                                                    Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          20.0,
                                                                          0.0),
                                                              child:
                                                                  FFButtonWidget(
                                                                onPressed:
                                                                    () async {
                                                                  await showDialog(
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (dialogContext) {
                                                                      return Dialog(
                                                                        elevation:
                                                                            0,
                                                                        insetPadding:
                                                                            EdgeInsets.zero,
                                                                        backgroundColor:
                                                                            Colors.transparent,
                                                                        alignment:
                                                                            AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                        child:
                                                                            GestureDetector(
                                                                          onTap: () => _model.unfocusNode.canRequestFocus
                                                                              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
                                                                              : FocusScope.of(context).unfocus(),
                                                                          child:
                                                                              CreateRepairTicketWidget(),
                                                                        ),
                                                                      );
                                                                    },
                                                                  ).then((value) =>
                                                                      setState(
                                                                          () {}));
                                                                },
                                                                text: '',
                                                                icon: Icon(
                                                                  Icons
                                                                      .add_rounded,
                                                                  size: 15.0,
                                                                ),
                                                                options:
                                                                    FFButtonOptions(
                                                                  height: 40.0,
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          0.0,
                                                                          16.0,
                                                                          0.0),
                                                                  iconPadding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).titleSmallFamily,
                                                                        color: Colors
                                                                            .white,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                      ),
                                                                  elevation:
                                                                      4.0,
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: Colors
                                                                        .transparent,
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              4.0),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                    ],
                                                  ),
                                                  Builder(
                                                    builder: (context) {
                                                      if (_model
                                                          .isShowFullList) {
                                                        return ListView(
                                                          padding:
                                                              EdgeInsets.zero,
                                                          shrinkWrap: true,
                                                          scrollDirection:
                                                              Axis.vertical,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          15.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Container(
                                                                height: 200.0,
                                                                decoration:
                                                                    BoxDecoration(),
                                                                child: StreamBuilder<
                                                                    List<
                                                                        RepairTicketsRecord>>(
                                                                  stream:
                                                                      queryRepairTicketsRecord(),
                                                                  builder: (context,
                                                                      snapshot) {
                                                                    // Customize what your widget looks like when it's loading.
                                                                    if (!snapshot
                                                                        .hasData) {
                                                                      return Center(
                                                                        child:
                                                                            SizedBox(
                                                                          width:
                                                                              50.0,
                                                                          height:
                                                                              50.0,
                                                                          child:
                                                                              CircularProgressIndicator(
                                                                            valueColor:
                                                                                AlwaysStoppedAnimation<Color>(
                                                                              FlutterFlowTheme.of(context).primary,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      );
                                                                    }
                                                                    List<RepairTicketsRecord>
                                                                        dataTableRepairTicketsRecordList =
                                                                        snapshot
                                                                            .data!;
                                                                    return Container(
                                                                      width: double
                                                                          .infinity,
                                                                      child:
                                                                          DataTable2(
                                                                        columns: [
                                                                          DataColumn2(
                                                                            label:
                                                                                DefaultTextStyle.merge(
                                                                              softWrap: true,
                                                                              child: Text(
                                                                                'Repair ID',
                                                                                style: FlutterFlowTheme.of(context).labelLarge,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          DataColumn2(
                                                                            label:
                                                                                DefaultTextStyle.merge(
                                                                              softWrap: true,
                                                                              child: Text(
                                                                                'CusName',
                                                                                style: FlutterFlowTheme.of(context).labelLarge,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          DataColumn2(
                                                                            label:
                                                                                DefaultTextStyle.merge(
                                                                              softWrap: true,
                                                                              child: Text(
                                                                                '',
                                                                                style: FlutterFlowTheme.of(context).labelLarge,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                        rows: dataTableRepairTicketsRecordList
                                                                            .mapIndexed((dataTableIndex, dataTableRepairTicketsRecord) => [
                                                                                  Text(
                                                                                    dataTableRepairTicketsRecord.repairId,
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                  ),
                                                                                  Text(
                                                                                    dataTableRepairTicketsRecord.cusName,
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                  ),
                                                                                  Builder(
                                                                                    builder: (context) => FFButtonWidget(
                                                                                      onPressed: () async {
                                                                                        await showDialog(
                                                                                          context: context,
                                                                                          builder: (dialogContext) {
                                                                                            return Dialog(
                                                                                              elevation: 0,
                                                                                              insetPadding: EdgeInsets.zero,
                                                                                              backgroundColor: Colors.transparent,
                                                                                              alignment: AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                              child: GestureDetector(
                                                                                                onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                                child: RepairticketinfoWidget(
                                                                                                  startDate: dataTableRepairTicketsRecord.recievedDate!,
                                                                                                  repairTicket: dataTableRepairTicketsRecord.repairId,
                                                                                                  cusName: dataTableRepairTicketsRecord.cusName,
                                                                                                  makeModel: dataTableRepairTicketsRecord.makeModel,
                                                                                                  serialNo: dataTableRepairTicketsRecord.serialNo,
                                                                                                  status: dataTableRepairTicketsRecord.status,
                                                                                                  phoneNo: dataTableRepairTicketsRecord.phoneNo,
                                                                                                  ticketchosen: dataTableRepairTicketsRecord.reference,
                                                                                                ),
                                                                                              ),
                                                                                            );
                                                                                          },
                                                                                        ).then((value) => setState(() {}));
                                                                                      },
                                                                                      text: 'Details',
                                                                                      options: FFButtonOptions(
                                                                                        height: 40.0,
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                        iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                        color: FlutterFlowTheme.of(context).primary,
                                                                                        textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                              fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                              color: Colors.white,
                                                                                              fontSize: 12.0,
                                                                                              fontWeight: FontWeight.normal,
                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                                            ),
                                                                                        elevation: 3.0,
                                                                                        borderSide: BorderSide(
                                                                                          color: Colors.transparent,
                                                                                          width: 1.0,
                                                                                        ),
                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ].map((c) => DataCell(c)).toList())
                                                                            .map((e) => DataRow(cells: e))
                                                                            .toList(),
                                                                        headingRowColor:
                                                                            MaterialStateProperty.all(
                                                                          FlutterFlowTheme.of(context)
                                                                              .primaryBackground,
                                                                        ),
                                                                        headingRowHeight:
                                                                            56.0,
                                                                        dataRowColor:
                                                                            MaterialStateProperty.all(
                                                                          FlutterFlowTheme.of(context)
                                                                              .secondaryBackground,
                                                                        ),
                                                                        dataRowHeight:
                                                                            56.0,
                                                                        border:
                                                                            TableBorder(
                                                                          borderRadius:
                                                                              BorderRadius.circular(0.0),
                                                                        ),
                                                                        dividerThickness:
                                                                            2.0,
                                                                        columnSpacing:
                                                                            40.0,
                                                                        showBottomBorder:
                                                                            true,
                                                                        minWidth:
                                                                            49.0,
                                                                      ),
                                                                    );
                                                                  },
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        );
                                                      } else {
                                                        return ListView(
                                                          padding:
                                                              EdgeInsets.zero,
                                                          shrinkWrap: true,
                                                          scrollDirection:
                                                              Axis.vertical,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          15.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Container(
                                                                height: 500.0,
                                                                decoration:
                                                                    BoxDecoration(),
                                                                child: Builder(
                                                                  builder:
                                                                      (context) {
                                                                    final tvSearchResults = _model
                                                                        .simpleSearchResults1
                                                                        .toList();
                                                                    return Container(
                                                                      width: double
                                                                          .infinity,
                                                                      height:
                                                                          750.0,
                                                                      child:
                                                                          DataTable2(
                                                                        columns: [
                                                                          DataColumn2(
                                                                            label:
                                                                                DefaultTextStyle.merge(
                                                                              softWrap: true,
                                                                              child: Text(
                                                                                'Repair ID',
                                                                                style: FlutterFlowTheme.of(context).labelLarge,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          DataColumn2(
                                                                            label:
                                                                                DefaultTextStyle.merge(
                                                                              softWrap: true,
                                                                              child: Text(
                                                                                'CusName',
                                                                                style: FlutterFlowTheme.of(context).labelLarge,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          DataColumn2(
                                                                            label:
                                                                                DefaultTextStyle.merge(
                                                                              softWrap: true,
                                                                              child: Visibility(
                                                                                visible: responsiveVisibility(
                                                                                  context: context,
                                                                                  tabletLandscape: false,
                                                                                  desktop: false,
                                                                                ),
                                                                                child: Text(
                                                                                  '',
                                                                                  style: FlutterFlowTheme.of(context).labelLarge,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                        rows: tvSearchResults
                                                                            .mapIndexed((tvSearchResultsIndex, tvSearchResultsItem) => [
                                                                                  Text(
                                                                                    tvSearchResultsItem.repairId,
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                  ),
                                                                                  Text(
                                                                                    tvSearchResultsItem.cusName,
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                  ),
                                                                                  Builder(
                                                                                    builder: (context) => FFButtonWidget(
                                                                                      onPressed: () async {
                                                                                        await showDialog(
                                                                                          context: context,
                                                                                          builder: (dialogContext) {
                                                                                            return Dialog(
                                                                                              elevation: 0,
                                                                                              insetPadding: EdgeInsets.zero,
                                                                                              backgroundColor: Colors.transparent,
                                                                                              alignment: AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                              child: GestureDetector(
                                                                                                onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                                child: RepairticketinfoWidget(
                                                                                                  startDate: tvSearchResultsItem.recievedDate!,
                                                                                                  repairTicket: tvSearchResultsItem.repairId,
                                                                                                  cusName: tvSearchResultsItem.cusName,
                                                                                                  makeModel: tvSearchResultsItem.makeModel,
                                                                                                  serialNo: tvSearchResultsItem.serialNo,
                                                                                                  status: tvSearchResultsItem.status,
                                                                                                  phoneNo: tvSearchResultsItem.phoneNo,
                                                                                                  ticketchosen: tvSearchResultsItem.reference,
                                                                                                ),
                                                                                              ),
                                                                                            );
                                                                                          },
                                                                                        ).then((value) => setState(() {}));
                                                                                      },
                                                                                      text: 'Details',
                                                                                      options: FFButtonOptions(
                                                                                        height: 40.0,
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                        iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                        color: FlutterFlowTheme.of(context).primary,
                                                                                        textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                              fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                              color: Colors.white,
                                                                                              fontSize: 12.0,
                                                                                              fontWeight: FontWeight.normal,
                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                                            ),
                                                                                        elevation: 3.0,
                                                                                        borderSide: BorderSide(
                                                                                          color: Colors.transparent,
                                                                                          width: 1.0,
                                                                                        ),
                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ].map((c) => DataCell(c)).toList())
                                                                            .map((e) => DataRow(cells: e))
                                                                            .toList(),
                                                                        headingRowColor:
                                                                            MaterialStateProperty.all(
                                                                          FlutterFlowTheme.of(context)
                                                                              .primaryBackground,
                                                                        ),
                                                                        headingRowHeight:
                                                                            56.0,
                                                                        dataRowColor:
                                                                            MaterialStateProperty.all(
                                                                          FlutterFlowTheme.of(context)
                                                                              .secondaryBackground,
                                                                        ),
                                                                        dataRowHeight:
                                                                            65.0,
                                                                        border:
                                                                            TableBorder(
                                                                          borderRadius:
                                                                              BorderRadius.circular(0.0),
                                                                        ),
                                                                        dividerThickness:
                                                                            2.0,
                                                                        columnSpacing:
                                                                            29.0,
                                                                        showBottomBorder:
                                                                            true,
                                                                        minWidth:
                                                                            49.0,
                                                                      ),
                                                                    );
                                                                  },
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        );
                                                      }
                                                    },
                                                  ),
                                                ],
                                              );
                                            }
                                          },
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
