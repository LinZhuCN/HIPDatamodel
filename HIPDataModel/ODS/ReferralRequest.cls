/// 转诊请求
Class ODS.ReferralRequest Extends ODS.DT.AbstractResource
{

/// The workflow status of the referral or transfer of care request.
Property Status As ODS.DT.Coding(XMLNAME = "status") [ Required ];

/// Business identifier that uniquely identifies the referral/care transfer request instance.
Property Identifier As HS.FHIR.Model.Base.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// Date/DateTime of creation for draft requests and date of activation for active requests.
Property Date As %TimeStamp(XMLNAME = "date") [ SqlFieldName = _date ];

/// An indication of the type of referral (or where applicable the type of transfer of care) request.
Property Type As ODS.DT.Coding(XMLNAME = "type");

/// Indication of the clinical domain or discipline to which the referral or transfer of care request is sent.  For example: Cardiology Gastroenterology Diabetology.
Property Specialty As ODS.DT.Coding(XMLNAME = "specialty");

/// An indication of the urgency of referral (or where applicable the type of transfer of care) request.
Property Priority As ODS.DT.Coding(XMLNAME = "priority");

/// The patient who is the subject of a referral or transfer of care request.
Property Patient As ODS.Patient(XMLNAME = "patient");

/// The healthcare provider or provider organization who/which initiated the referral/transfer of care request. Can also be  Patient (a self referral).
/// Property requester As HS.FHIR.Model.Base.Reference(XMLNAME = "requester");
/// The healthcare provider(s) or provider organization(s) who/which is to receive the referral/transfer of care request.
/// Property recipient As list Of HS.FHIR.Model.Base.Reference(XMLNAME = "recipient", XMLPROJECTION = "ELEMENT");
/// The encounter at which the request for referral or transfer of care is initiated.
Property Encounter As ODS.Encounter(XMLNAME = "encounter");

/// Date/DateTime the request for referral or transfer of care is sent by the author.
Property DateSent As %TimeStamp(XMLNAME = "dateSent");

/// Description of clinical condition indicating why referral/transfer of care is requested.  For example:  Pathological Anomalies, Disabled (physical or mental),  Behavioral Management.
Property Reason As ODS.DT.Coding(XMLNAME = "reason");

/// The reason element gives a short description of why the referral is being made, the description expands on this to support a more complete clinical summary.
Property Description As %String(XMLNAME = "description");

/// The service(s) that is/are requested to be provided to the patient.  For example: cardiac pacemaker insertion.
Property ServiceRequested As list Of ODS.DT.Coding(XMLNAME = "serviceRequested", XMLPROJECTION = "ELEMENT");

/// Any additional (administrative, financial or clinical) information required to support request for referral or transfer of care.  For example: Presenting problems/chief complaints Medical History Family History Alerts Allergy/Intolerance and Adverse Reactions Medications Observations/Assessments (may include cognitive and fundtional assessments) Diagnostic Reports Care Plan.
/// Property supportingInformation As list Of HS.FHIR.Model.Base.Reference(XMLNAME = "supportingInformation", XMLPROJECTION = "ELEMENT");
/// The period of time within which the services identified in the referral/transfer of care is specified or required to occur.
Property FulfillmentTime As ODS.DT.Period(XMLNAME = "fulfillmentTime");





Storage Default
{
<Data name="ReferralRequestDefaultData">
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
<Value>Date</Value>
</Value>
<Value name="5">
<Value>Type</Value>
</Value>
<Value name="6">
<Value>Specialty</Value>
</Value>
<Value name="7">
<Value>Priority</Value>
</Value>
<Value name="8">
<Value>Patient</Value>
</Value>
<Value name="9">
<Value>Encounter</Value>
</Value>
<Value name="10">
<Value>DateSent</Value>
</Value>
<Value name="11">
<Value>Reason</Value>
</Value>
<Value name="12">
<Value>Description</Value>
</Value>
<Value name="13">
<Value>ServiceRequested</Value>
</Value>
<Value name="14">
<Value>FulfillmentTime</Value>
</Value>
<Value name="15">
<Value>Status</Value>
</Value>
</Data>
<DataLocation>^ODS.ReferralRequestD</DataLocation>
<DefaultData>ReferralRequestDefaultData</DefaultData>
<IdLocation>^ODS.ReferralRequestD</IdLocation>
<IndexLocation>^ODS.ReferralRequestI</IndexLocation>
<StreamLocation>^ODS.ReferralRequestS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
