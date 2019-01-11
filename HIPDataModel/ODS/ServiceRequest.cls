/// 医嘱(非药嘱)
Class ODS.ServiceRequest Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter XMLNAME = "ServiceRequest";

Parameter XMLSEQUENCE = 1;

/// Identifiers assigned to this order instance by the orderer and/or the receiver and/or order fulfiller.
/// 医嘱号
Property Identifier As ODS.DT.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// 医嘱数量
Property OrderQuantity As %Integer;

/// Protocol or definition followed by this request.
/// Property definition As list Of HS.FHIR.vSTU3.Model.Base.Reference(XMLNAME = "definition", XMLPROJECTION = "ELEMENT");
/// Plan/proposal/order fulfilled by this request.
/// Property basedOn As list Of HS.FHIR.vSTU3.Model.Base.Reference(XMLNAME = "basedOn", XMLPROJECTION = "ELEMENT");
/// The request takes the place of the referenced completed or terminated request(s).
/// Property replaces As list Of HS.FHIR.vSTU3.Model.Base.Reference(XMLNAME = "replaces", XMLPROJECTION = "ELEMENT");
/// A shared identifier common to all procedure or diagnostic requests that were authorized more or less simultaneously by a single author, representing the composite or group identifier.
Property Requisition As ODS.DT.Identifier(XMLNAME = "requisition", XMLPROJECTION = "ELEMENT");

/// The status of the order.
/// 医嘱状态
Property Status As ODS.DT.Coding(XMLNAME = "status", XMLPROJECTION = "ELEMENT") [ Required ];

/// 医嘱状态历史
Property StatusHistory As list Of ODS.DT.StatusHistory(XMLNAME = "statusHistory", XMLPROJECTION = "ELEMENT");

/*
/// 上次医嘱状态，计算属性
Property PreviousStatus As ODS.DT.Coding [ Calculated ];*/
/// Whether the request is a proposal, plan, an original order or a reflex order.
Property Intent As ODS.DT.Coding(XMLNAME = "intent", XMLPROJECTION = "ELEMENT") [ Required ];

/// Indicates how quickly the ProcedureRequest should be addressed with respect to other requests.
/// 医嘱优先级
Property Priority As ODS.DT.Coding(XMLNAME = "priority", XMLPROJECTION = "ELEMENT");

/// Set this to true if the record is saying that the procedure should NOT be performed.
Property DoNotPerform As %Boolean(XMLNAME = "doNotPerform", XMLPROJECTION = "ELEMENT");

/// A code that classifies the procedure for searching, sorting and display purposes (e.g. "Surgical Procedure").
/// 医嘱大类
Property Category As list Of ODS.DT.Coding(XMLNAME = "category", XMLPROJECTION = "ELEMENT");

/// A code that identifies a particular procedure, diagnostic investigation, or panel of investigations, that have been requested.
/// 医嘱代码
Property Code As ODS.DT.Coding(XMLNAME = "code", XMLPROJECTION = "ELEMENT") [ Required ];

/// 医嘱数量
Property QuantityQuantity As ODS.DT.Quantity(XMLNAME = "quantityQuantity", XMLPROJECTION = "ELEMENT");

/// On whom or what the procedure or diagnostic is to be performed. This is usually a human patient, but can also be requested on animals, groups of humans or animals, devices such as dialysis machines, or even locations (typically for environmental scans).
/// 医嘱目标患者
Property Subject As ODS.Patient(XMLNAME = "subject", XMLPROJECTION = "ELEMENT") [ Required ];

/// An encounter or episode of care that provides additional information about the healthcare context in which this request is made.
/// 就诊
Relationship Encounter As ODS.Encounter(XMLNAME = "encounter", XMLPROJECTION = "ELEMENT", XMLREFERENCE = "ID") [ Cardinality = parent, Inverse = ServiceRequests ];

Property OccurrenceDateTime As %TimeStamp(XMLNAME = "occurrenceDateTime", XMLPROJECTION = "ELEMENT");

Property OccurrencePeriod As ODS.DT.Period(XMLNAME = "occurrencePeriod", XMLPROJECTION = "ELEMENT");

/// Property OccurrenceTiming As HS.FHIR.vSTU3.Model.Base.Timing(XMLNAME = "occurrenceTiming", XMLPROJECTION = "ELEMENT");
/// Property asNeededBoolean As %Boolean(XMLNAME = "asNeededBoolean", XMLPROJECTION = "ELEMENT");
/// Property asNeededCodeableConcept As ODS.DT.CodeableConcept(XMLNAME = "asNeededCodeableConcept", XMLPROJECTION = "ELEMENT");
/// When the request transitioned to being actionable.
Property AuthoredOn As %TimeStamp(XMLNAME = "authoredOn", XMLPROJECTION = "ELEMENT");

/// The individual who initiated the request and has responsibility for its activation.
/// 下达医嘱医生
Property Requester As ODS.Practitioner(XMLNAME = "requester", XMLPROJECTION = "ELEMENT");

/// Desired type of performer for doing the diagnostic testing.
/// 医嘱执行人类型
Property PerformerType As ODS.DT.Coding(XMLNAME = "performerType", XMLPROJECTION = "ELEMENT");

/// The desired perfomer for doing the diagnostic testing.  For example, the surgeon, dermatopathologist, endoscopist, etc.
/// 医嘱执行人
Property Performer As ODS.Practitioner(XMLNAME = "performer", XMLPROJECTION = "ELEMENT");

/// An explanation or justification for why this diagnostic investigation is being requested in coded or textual form.   This is often for billing purposes.  May relate to the resources referred to in supportingInformation.
/// 医嘱下达原因
Property ReasonCode As list Of ODS.DT.Coding(XMLNAME = "reasonCode", XMLPROJECTION = "ELEMENT");

/// Indicates another resource that provides a justification for why this diagnostic investigation is being requested.   May relate to the resources referred to in supportingInformation.
/// Property ReasonReference As list Of HS.FHIR.vSTU3.Model.Base.Reference(XMLNAME = "reasonReference", XMLPROJECTION = "ELEMENT");
/// Additional clinical information about the patient or specimen that may influence the procedure or diagnostics or their interpretations.     This information includes diagnosis, clinical findings and other observations.  In laboratory ordering these are typically referred to as "ask at order entry questions (AOEs)".  This includes observations explicitly requested by the producer (filler) to provide context or supporting information needed to complete the order. For example,  reporting the amount of inspired oxygen for blood gas measurements.
/// Property supportingInfo As list Of HS.FHIR.vSTU3.Model.Base.Reference(XMLNAME = "supportingInfo", XMLPROJECTION = "ELEMENT");
/// One or more specimens that the laboratory procedure will use.
/// Property specimen As list Of HS.FHIR.vSTU3.Model.Base.Reference(XMLNAME = "specimen", XMLPROJECTION = "ELEMENT");
/// Anatomic location where the procedure should be performed. This is the target site.
/// 身体部位
Property BodySite As list Of ODS.DT.Coding(XMLNAME = "bodySite", XMLPROJECTION = "ELEMENT");

/// Any other notes and comments made about the service request. For example, letting provider know that "patient hates needles" or other provider instructions.
/// 医嘱说明
Property Note As list Of %String(XMLNAME = "note", XMLPROJECTION = "ELEMENT");

/// Extension added
Property Extension As ODS.ServiceRequest.Extension(XMLNAME = "extension", XMLPROJECTION = "ELEMENT");

/// 下达医嘱的地点（科室、病房等）
Property Location As ODS.ServiceRequest.Location(XMLNAME = "location", XMLPROJECTION = "ELEMENT");

Index EncounterIndex On Encounter;

Storage Default
{
<Data name="ServiceRequestDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Identifier</Value>
</Value>
<Value name="3">
<Value>OrderQuantity</Value>
</Value>
<Value name="4">
<Value>Requisition</Value>
</Value>
<Value name="5">
<Value>Status</Value>
</Value>
<Value name="6">
<Value>Intent</Value>
</Value>
<Value name="7">
<Value>Priority</Value>
</Value>
<Value name="8">
<Value>DoNotPerform</Value>
</Value>
<Value name="9">
<Value>Category</Value>
</Value>
<Value name="10">
<Value>Code</Value>
</Value>
<Value name="11">
<Value>Subject</Value>
</Value>
<Value name="12">
<Value>Encounter</Value>
</Value>
<Value name="13">
<Value>OccurrenceDateTime</Value>
</Value>
<Value name="14">
<Value>OccurrencePeriod</Value>
</Value>
<Value name="15">
<Value>OccurrenceTiming</Value>
</Value>
<Value name="16">
<Value>AuthoredOn</Value>
</Value>
<Value name="17">
<Value>Requester</Value>
</Value>
<Value name="18">
<Value>PerformerType</Value>
</Value>
<Value name="19">
<Value>Performer</Value>
</Value>
<Value name="20">
<Value>ReasonCode</Value>
</Value>
<Value name="21">
<Value>BodySite</Value>
</Value>
<Value name="22">
<Value>Note</Value>
</Value>
<Value name="23">
<Value>StatusHistory</Value>
</Value>
<Value name="24">
<Value>Extension</Value>
</Value>
<Value name="25">
<Value>LocationReference</Value>
</Value>
<Value name="26">
<Value>Location</Value>
</Value>
<Value name="27">
<Value>QuantityQuantity</Value>
</Value>
</Data>
<DataLocation>^ODS.ServiceRequestD</DataLocation>
<DefaultData>ServiceRequestDefaultData</DefaultData>
<IdLocation>^ODS.ServiceRequestD</IdLocation>
<IndexLocation>^ODS.ServiceRequestI</IndexLocation>
<StreamLocation>^ODS.ServiceRequestS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
