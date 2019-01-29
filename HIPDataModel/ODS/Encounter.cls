/// 一次就诊
Class ODS.Encounter Extends ODS.DT.AbstractResource
{

/// If the resource need a univers unique and required id, overide ResourceId as required
Property ResourceId As %String(XMLNAME = "ResourceId", XMLPROJECTION = "ELEMENT")[required];


/// Identifier(s) by which this encounter is known.
Property Identifier As ODS.DT.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

// Property Status As ODS.DT.Coding(XMLNAME = "status", XMLPROJECTION = "ELEMENT") [ Required ];

/// 就诊状态 planned | arrived | triaged | in-progress | onleave | finished | cancelled +.
/// The status history permits the encounter resource to contain the status history without needing to read through the historical versions of the resource, or even have the server store them.
/// 就诊状态历史
//Property StatusHistory As list Of ODS.DT.StatusHistory(XMLNAME = "statusHistory", XMLPROJECTION = "ELEMENT");

/*/// 上次就诊状态，计算属性
Property PreviousStatus As ODS.DT.Coding [ Calculated ];*/
/// 就诊类型 inpatient | outpatient | ambulatory | emergency +.
Property Class As ODS.DT.Coding(XMLNAME = "class", XMLPROJECTION = "ELEMENT");

/// The class history permits the tracking of the encounters transitions without needing to go  through the resource history.This would be used for a case where an admission starts of as an emergency encounter, then transisions into an inpatient scenario. Doing this and not restarting a new encounter ensures that any lab/diagnostic results can more easily follow the patient and not require re-processing and not get lost or cancelled during a kindof discharge from emergency to inpatient.
/// Property ClassHistory As list Of HS.FHIR.vSTU3.Model.Resource.Encounter.ClassHistory(XMLNAME = "classHistory", XMLPROJECTION = "ELEMENT");
/// Specific type of encounter (e.g. e-mail consultation, surgical day-care, skilled nursing, rehabilitation).
Property Type As list Of ODS.DT.Coding(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// Indicates the urgency of the encounter.
Property Priority As ODS.DT.Coding(XMLNAME = "priority", XMLPROJECTION = "ELEMENT");

/// The patient ro group present at the encounter.
Property Subject As ODS.Patient(XMLNAME = "subject", XMLPROJECTION = "ELEMENT");

/// Where a specific encounter should be classified as a part of a specific episode(s) of care this field should be used. This association can facilitate grouping of related encounters together for a specific purpose, such as government reporting, issue tracking, association via a common problem.  The association is recorded on the encounter as these are typically created after the episode of care, and grouped on entry rather than editing the episode of care to append another encounter to it (the episode of care could span years).
/// Property episodeOfCare As list Of HS.FHIR.vSTU3.Model.Base.Reference(XMLNAME = "episodeOfCare", XMLPROJECTION = "ELEMENT");
/// The referral request this encounter satisfies (incoming referral).
Property IncomingReferral As list Of ODS.ReferralRequest(XMLNAME = "incomingReferral", XMLPROJECTION = "ELEMENT");

/// The list of people responsible for providing the service.
Property Participant As list Of ODS.Practitioner(XMLNAME = "participant", XMLPROJECTION = "ELEMENT");

/// The appointment that scheduled this encounter.
/// Property Appointment As HS.FHIR.vSTU3.Model.Base.Reference(XMLNAME = "appointment", XMLPROJECTION = "ELEMENT");
/// The start and end time of the encounter.
Property Period As ODS.DT.Period(XMLNAME = "period", XMLPROJECTION = "ELEMENT");

/// Quantity of time the encounter lasted. This excludes the time during leaves of absence.
Property Length As ODS.DT.Duration(XMLNAME = "length", XMLPROJECTION = "ELEMENT");

/// Reason the encounter takes place, expressed as a code. For admissions, this can be used for a coded admission diagnosis.
Property Reason As list Of ODS.DT.Coding(XMLNAME = "reason", XMLPROJECTION = "ELEMENT");

/// The set of accounts that may be used for billing for this Encounter.
/// Property account As list Of HS.FHIR.vSTU3.Model.Base.Reference(XMLNAME = "account", XMLPROJECTION = "ELEMENT");
/// Details about the admission to a healthcare service.
Property Hospitalization As ODS.Hospitalization(XMLNAME = "hospitalization", XMLPROJECTION = "ELEMENT");

/// List of locations where  the patient has been during this encounter.
Property Location As list Of ODS.Encounter.Location(XMLNAME = "location", XMLPROJECTION = "ELEMENT");

/// Extension added
Property Extension As ODS.Encounter.Extension(XMLNAME = "extension", XMLPROJECTION = "ELEMENT");

/// Another Encounter of which this encounter is a part of (administratively or in time).
/// Property partOf As HS.FHIR.vSTU3.Model.Base.Reference(XMLNAME = "partOf", XMLPROJECTION = "ELEMENT");
Index SubjectIndex On Subject;

Property ServiceRequests As list of ODS.ServiceRequest(XMLNAME = "servicerequest", XMLPROJECTION = "ELEMENT") ;

Property Observations As list of ODS.Observation(XMLNAME = "observation", XMLPROJECTION = "ELEMENT") ;

/// The list of diagnosis relevant to this encounter.
Property Diagnoses As ODS.Diagnosis(XMLNAME = "diagnosis", XMLPROJECTION = "ELEMENT") ;


Storage Default
{
<Data name="EncounterDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>ResourceId</Value>
</Value>
<Value name="3">
<Value>Identifier</Value>
</Value>
<Value name="4">
<Value>Class</Value>
</Value>
<Value name="5">
<Value>Type</Value>
</Value>
<Value name="6">
<Value>Priority</Value>
</Value>
<Value name="7">
<Value>Subject</Value>
</Value>
<Value name="8">
<Value>IncomingReferral</Value>
</Value>
<Value name="9">
<Value>Participant</Value>
</Value>
<Value name="10">
<Value>Period</Value>
</Value>
<Value name="11">
<Value>Length</Value>
</Value>
<Value name="12">
<Value>Reason</Value>
</Value>
<Value name="13">
<Value>Hospitalization</Value>
</Value>
<Value name="14">
<Value>Location</Value>
</Value>
<Value name="15">
<Value>Extension</Value>
</Value>
<Value name="16">
<Value>ServiceRequests</Value>
</Value>
<Value name="17">
<Value>Observations</Value>
</Value>
<Value name="18">
<Value>Diagnoses</Value>
</Value>
</Data>
<DataLocation>^ODS.EncounterD</DataLocation>
<DefaultData>EncounterDefaultData</DefaultData>
<IdLocation>^ODS.EncounterD</IdLocation>
<IndexLocation>^ODS.EncounterI</IndexLocation>
<StreamLocation>^ODS.EncounterS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
