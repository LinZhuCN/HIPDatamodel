/// 观察结果
Class ODS.Observation Extends (%Persistent, %XML.Adaptor)
{

Index ukObsNo On ObsId [ Unique ];

/// 观察结果序号
Property ObsId As %String;

/// A unique identifier assigned to this observation.
Property Identifier As ODS.DT.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// 子项序号
/// An id that ties together different parts of a result<br> 
/// (e.g. multiple organisms in a culture battery, multiple diagnostic impressions of a chest x-ray)<br>
/// HL7:  OBX-4 : SubId<br>
/// HSDB: lab.HS.EPVisitTestSetData(VISTDMachineDR)
Property SubId As %String(MAXLEN = 30);

/// A plan, proposal or order that is fulfilled in whole or in part by this event.
/// Property basedOn As list Of HS.FHIR.vSTU3.Model.Base.Reference(XMLNAME = "basedOn", XMLPROJECTION = "ELEMENT");
/// The status of the result value.
/// 观察结果状态
/// HL7:  OBX-11 : ObservationResultStatus<br>
/// HSDB: lab.HS.EPVisitTestSetData(VISTDResultStatus)<br>
/// Values as defined for HL7, with descriptions in StandardType "TestItemStatusHealthShare"<br>
/// C is converted to K<br>
/// User-defined values are possible if defined in StandardType "TestItemStatusHealthShare"<br>
/// If "" on update, value unchanged (except for corrections - see below)<br>
/// If "" on add, value is defaulted according to ResultStatus P->P, F->F, X->X, else->R<br>
/// If ResultValue or Range is changed, and previous TestItemStatus is F or K then status="K"
///  and ResultStatus is updated to K.<br>
/// Except into Access Gateway, when the TestItemStatus is stored unchanged
Property Status As ODS.DT.Coding(XMLNAME = "status", XMLPROJECTION = "ELEMENT") [ Required ];

/// 观察结果状态历史
Property StatusHistory As list Of ODS.DT.StatusHistory(XMLNAME = "statusHistory", XMLPROJECTION = "ELEMENT");

/// 上次观察结果状态，计算属性
Property PreviousStatus As ODS.DT.Coding [ Calculated ];

/// A code that classifies the general type of observation being made.
/// 观察结果组：化验,镜检,体征,B超,影像...
Property Category As %String(XMLNAME = "category", XMLPROJECTION = "ELEMENT");

/// Describes what was observed. Sometimes this is called the observation "name".
/// 观察结果编码
/// Observation code<br>
/// SDATableName=Observation, HSDBClass=User.HS.MRCObservationItem<br>
/// HL7:  OBX-3  : ObservationIdentifier<br>
/// HSDB: User.HS.MRObservations(OBSItemDR)
Property Code As ODS.DT.Coding(XMLNAME = "code", XMLPROJECTION = "ELEMENT") [ Required ];

/// The patient, or group of patients, location, or device whose characteristics (direct or indirect) are described by the observation and into whose record the observation is placed.  Comments: Indirect characteristics may be those of a specimen, fetus, donor,  other observer (for example a relative or EMT), or any observation made about the subject.
/// 患者
Property Subject As ODS.Patient(XMLNAME = "subject", XMLPROJECTION = "ELEMENT");

/// The healthcare event  (e.g. a patient and healthcare provider interaction) during which this observation is made.
Relationship Encounter As ODS.Encounter(XMLNAME = "encounter", XMLPROJECTION = "ELEMENT", XMLREFERENCE = "ID") [ Cardinality = one, Inverse = Observations ];

Index EncounterIndex On Encounter;

Property EffectiveDateTime As %TimeStamp(XMLNAME = "effectiveDateTime", XMLPROJECTION = "ELEMENT");

Property EffectivePeriod As ODS.DT.Period(XMLNAME = "effectivePeriod", XMLPROJECTION = "ELEMENT");

/// The date and time this observation was made available to providers, typically after the results have been reviewed and verified.
/// Property issued As HS.FHIR.vSTU3.Model.Datatype.Instant(XMLNAME = "issued", XMLPROJECTION = "ELEMENT");
/// Who was responsible for asserting the observed value as "true".
/// 执行人
/// PerformedAt / ProducersID<br>
/// SDATableName=Organization, HSDBClass=User.HS.CTHospital<br>
/// HL7:  OBX-15 : ProducersID<br>
/// HSDB: lab.HS.EPVisitTestSetData(VISTDPerformedAtDR)<br>
/// This can be used to specify the external organization that actually did the test.
Property Performer As list Of ODS.Practitioner(XMLNAME = "performer", XMLPROJECTION = "ELEMENT");

/// 结果类型:数值型(NM)、文本型(FT)、链接型(RP)、字符串(ST)
Property ValueType As %String [ InitialExpression = "NM" ];

/// 观察结果值
/// Value of observation<br>
/// HL7:  OBX-5  : ObservationValue<br>
/// HSDB: User.HS.MRObservations(OBSValue)
Property ValueQuantity As ODS.DT.Quantity(XMLNAME = "valueQuantity", XMLPROJECTION = "ELEMENT");

Property ValueCodeableConcept As ODS.DT.Coding(XMLNAME = "valueCodeableConcept", XMLPROJECTION = "ELEMENT");

Property ValueString As %String(XMLNAME = "valueString", XMLPROJECTION = "ELEMENT");

Property ValueBoolean As %Boolean(XMLNAME = "valueBoolean", XMLPROJECTION = "ELEMENT");

/// Property valueRange As HS.FHIR.vSTU3.Model.Base.Range(XMLNAME = "valueRange", XMLPROJECTION = "ELEMENT");
/// Property valueRatio As HS.FHIR.vSTU3.Model.Base.Ratio(XMLNAME = "valueRatio", XMLPROJECTION = "ELEMENT");
/// Property valueSampledData As HS.FHIR.vSTU3.Model.Base.SampledData(XMLNAME = "valueSampledData", XMLPROJECTION = "ELEMENT");
/// Property valueAttachment As HS.FHIR.vSTU3.Model.Base.Attachment(XMLNAME = "valueAttachment", XMLPROJECTION = "ELEMENT");
/// 观察结果时间 - 时间戳格式
/// Time of observation<br>
/// HL7:  OBX-14 : DateTimeoftheObservation<br>
/// HSDB: User.HS.MRObservations(OBSDate) + User.HS.MRObservations(OBSDate)<br>
/// Default EnteredOn then 'today,0'
Property ValueTime As %TimeStamp(XMLNAME = "valueTime", XMLPROJECTION = "ELEMENT");

/// 观察结果时间 - 时间戳格式
Property ValueDateTime As %TimeStamp(XMLNAME = "valueDateTime", XMLPROJECTION = "ELEMENT");

Property ValuePeriod As ODS.DT.Period(XMLNAME = "valuePeriod", XMLPROJECTION = "ELEMENT");

/// Provides a reason why the expected value in the element Observation.value[x] is missing.
Property DataAbsentReason As ODS.DT.Coding(XMLNAME = "dataAbsentReason", XMLPROJECTION = "ELEMENT");

/// The assessment made based on the result of the observation.  Intended as a simple compact code often placed adjacent to the result value in reports and flow sheets to signal the meaning/normalcy status of the result. Otherwise known as abnormal flag.
/// 观察结果描述
/// HL7:  OBX-8 : AbnormalFlags<br>
/// HSDB: User.HS.OEOrdItem(OEORIAbnormal)<br>
/// For a text result (all instances of OBX-2 = TX or FT), this is set to "A" for "Abnormal"<br>
/// if any of the OBX Abnormal Flags (OBX-8) = "A".  Any other values of OBX-8 are ignored.<br>
/// This property is not used in a LabResult with atomic results.
Property Interpretation As ODS.DT.Coding(XMLNAME = "interpretation", XMLPROJECTION = "ELEMENT");

/// May include statements about significant, unexpected or unreliable values, or information about the source of the value where this may be relevant to the interpretation of the result.
/// 说明
/// Comments on observation<br>
/// HL7:  NTE-3  : Comment<br>
/// HSDB: User.HS.MRObservations(OBSShortDesc)<br>
/// No delimiters
Property Comment As %String(MAXLEN = 1000, XMLNAME = "comment", XMLPROJECTION = "ELEMENT");

/// 身体部位
/// Indicates the site on the subject's body where the observation was made (i.e. the target site).
Property BodySite As ODS.DT.Coding(XMLNAME = "bodySite", XMLPROJECTION = "ELEMENT");

/// Indicates the mechanism used to perform the observation.
Property Method As ODS.DT.Coding(XMLNAME = "method", XMLPROJECTION = "ELEMENT");

/// The specimen that was used when this observation was made.
/// Property specimen As HS.FHIR.vSTU3.Model.Base.Reference(XMLNAME = "specimen", XMLPROJECTION = "ELEMENT");
/// The device used to generate the observation data.
/// Property device As HS.FHIR.vSTU3.Model.Base.Reference(XMLNAME = "device", XMLPROJECTION = "ELEMENT");
/// Guidance on how to interpret the value by comparison to a normal or recommended range.
/// Property referenceRange As list Of HS.FHIR.vSTU3.Model.Resource.Observation.ReferenceRange(XMLNAME = "referenceRange", XMLPROJECTION = "ELEMENT");
/// A  reference to another resource (usually another Observation) whose relationship is defined by the relationship type code.
/// Property related As list Of HS.FHIR.vSTU3.Model.Resource.Observation.Related(XMLNAME = "related", XMLPROJECTION = "ELEMENT");
/// Some observations have multiple component observations.  These component observations are expressed as separate code value pairs that share the same attributes.  Examples include systolic and diastolic component observations for blood pressure measurement and multiple component observations for genetics observations.
/// Property component As list Of HS.FHIR.vSTU3.Model.Resource.Observation.Component(XMLNAME = "component", XMLPROJECTION = "ELEMENT");
/// 观察结果值单位
/// Units of result value<br>
/// HL7:  OBX-6 : Units<br>
/// HSDB: User.HS.CTTestCode(CTTCUnits)<br>
/// Not stored for Antibiotic Sensitivities<br>
/// $c(16) is stripped out
Property ValueUnits As %String(MAXLEN = 30);

/// 记录医生
/// Clinician who made the observation<br>
/// SDATableName=CareProvider, HSDBClass=User.HS.CTCareProv<br>
/// HSDB: User.HS.MRObservations(OBSCTCPDR)<br>
/// .Name<br>
/// .Address<br>
/// .ContactInfo<br>
/// .CareProviderType<br>
Property Clinician As %String;

/// Relationship Result As CDR.Result [ Cardinality = one, Inverse = ResultItems ];
/// Index ResultIndex On Result;
Storage Default
{
<Data name="ObservationDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>ObsId</Value>
</Value>
<Value name="3">
<Value>ObservationTime</Value>
</Value>
<Value name="4">
<Value>ObservationGroup</Value>
</Value>
<Value name="5">
<Value>ObservationCode</Value>
</Value>
<Value name="6">
<Value>ObservationDesc</Value>
</Value>
<Value name="7">
<Value>ResultInterpretation</Value>
</Value>
<Value name="8">
<Value>BodySite</Value>
</Value>
<Value name="9">
<Value>ResultType</Value>
</Value>
<Value name="10">
<Value>Value</Value>
</Value>
<Value name="11">
<Value>ValueUnits</Value>
</Value>
<Value name="12">
<Value>SubId</Value>
</Value>
<Value name="13">
<Value>Comments</Value>
</Value>
<Value name="14">
<Value>Clinician</Value>
</Value>
<Value name="15">
<Value>PerformedAt</Value>
</Value>
<Value name="16">
<Value>Status</Value>
</Value>
<Value name="17">
<Value>Encounter</Value>
</Value>
<Value name="18">
<Value>identifier</Value>
</Value>
<Value name="19">
<Value>basedOn</Value>
</Value>
<Value name="20">
<Value>Category</Value>
</Value>
<Value name="21">
<Value>Code</Value>
</Value>
<Value name="22">
<Value>subject</Value>
</Value>
<Value name="23">
<Value>effectiveDateTime</Value>
</Value>
<Value name="24">
<Value>effectivePeriod</Value>
</Value>
<Value name="25">
<Value>issued</Value>
</Value>
<Value name="26">
<Value>performer</Value>
</Value>
<Value name="27">
<Value>valueQuantity</Value>
</Value>
<Value name="28">
<Value>valueCodeableConcept</Value>
</Value>
<Value name="29">
<Value>valueString</Value>
</Value>
<Value name="30">
<Value>valueBoolean</Value>
</Value>
<Value name="31">
<Value>valueRange</Value>
</Value>
<Value name="32">
<Value>valueRatio</Value>
</Value>
<Value name="33">
<Value>valueSampledData</Value>
</Value>
<Value name="34">
<Value>valueAttachment</Value>
</Value>
<Value name="35">
<Value>valueTime</Value>
</Value>
<Value name="36">
<Value>valueDateTime</Value>
</Value>
<Value name="37">
<Value>valuePeriod</Value>
</Value>
<Value name="38">
<Value>dataAbsentReason</Value>
</Value>
<Value name="39">
<Value>interpretation</Value>
</Value>
<Value name="40">
<Value>comment</Value>
</Value>
<Value name="41">
<Value>Method</Value>
</Value>
<Value name="42">
<Value>specimen</Value>
</Value>
<Value name="43">
<Value>device</Value>
</Value>
<Value name="44">
<Value>referenceRange</Value>
</Value>
<Value name="45">
<Value>related</Value>
</Value>
<Value name="46">
<Value>component</Value>
</Value>
<Value name="47">
<Value>Identifier</Value>
</Value>
<Value name="48">
<Value>Subject</Value>
</Value>
<Value name="49">
<Value>EffectiveDateTime</Value>
</Value>
<Value name="50">
<Value>EffectivePeriod</Value>
</Value>
<Value name="51">
<Value>Performer</Value>
</Value>
<Value name="52">
<Value>ValueType</Value>
</Value>
<Value name="53">
<Value>ValueQuantity</Value>
</Value>
<Value name="54">
<Value>ValueCodeableConcept</Value>
</Value>
<Value name="55">
<Value>ValueString</Value>
</Value>
<Value name="56">
<Value>ValueBoolean</Value>
</Value>
<Value name="57">
<Value>ValueTime</Value>
</Value>
<Value name="58">
<Value>ValueDateTime</Value>
</Value>
<Value name="59">
<Value>ValuePeriod</Value>
</Value>
<Value name="60">
<Value>DataAbsentReason</Value>
</Value>
<Value name="61">
<Value>Interpretation</Value>
</Value>
<Value name="62">
<Value>Comment</Value>
</Value>
<Value name="63">
<Value>StatusHistory</Value>
</Value>
</Data>
<DataLocation>^ODS.ObservationD</DataLocation>
<DefaultData>ObservationDefaultData</DefaultData>
<Description>
<![CDATA[Relationship Result As CDR.Result [ Cardinality = one, Inverse = ResultItems ];
Index ResultIndex On Result;]]></Description>
<IdLocation>^ODS.ObservationD</IdLocation>
<IndexLocation>^ODS.ObservationI</IndexLocation>
<StreamLocation>^ODS.ObservationS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
