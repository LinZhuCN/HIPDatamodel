/// 住院记录
Class ODS.Hospitalization Extends ODS.DT.AbstractResource
{

Parameter XMLNAME = "Encounter.Hospitalization";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Encounter.Hospitalization";

/// Pre-admission identifier.
Property preAdmissionIdentifier As HS.FHIR.Model.Base.Identifier(XMLNAME = "preAdmissionIdentifier");

/// The location from which the patient came before admission.
Property origin As ODS.Location(XMLNAME = "origin");

/// From where patient was admitted (physician referral, transfer).
Property AdmitSource As ODS.DT.CodeableConcept(XMLNAME = "admitSource");

/// Whether this hospitalization is a readmission and why if known.
Property ReAdmission As ODS.DT.CodeableConcept(XMLNAME = "reAdmission");

/// Diet preferences reported by the patient.
Property DietPreference As list Of ODS.DT.CodeableConcept(XMLNAME = "dietPreference", XMLPROJECTION = "ELEMENT");

/// Special courtesies (VIP, board member).
Property specialCourtesy As list Of ODS.DT.CodeableConcept(XMLNAME = "specialCourtesy", XMLPROJECTION = "ELEMENT");

/// Wheelchair, translator, stretcher, etc.
Property specialArrangement As list Of ODS.DT.CodeableConcept(XMLNAME = "specialArrangement", XMLPROJECTION = "ELEMENT");

/// Location to which the patient is discharged.
Property Destination As ODS.Location(XMLNAME = "destination");

/// Category or kind of location after discharge.
Property dischargeDisposition As ODS.DT.CodeableConcept(XMLNAME = "dischargeDisposition");


Storage Default
{
<Data name="HospitalizationDefaultData">
<Subscript>"1"</Subscript>
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
</Data>
<Data name="HospitalizationState">
<Value name="1">
<Value>ResourceId</Value>
</Value>
<Value name="2">
<Value>preAdmissionIdentifier</Value>
</Value>
<Value name="3">
<Value>origin</Value>
</Value>
<Value name="4">
<Value>AdmitSource</Value>
</Value>
<Value name="5">
<Value>ReAdmission</Value>
</Value>
<Value name="6">
<Value>DietPreference</Value>
</Value>
<Value name="7">
<Value>specialCourtesy</Value>
</Value>
<Value name="8">
<Value>specialArrangement</Value>
</Value>
<Value name="9">
<Value>Destination</Value>
</Value>
<Value name="10">
<Value>dischargeDisposition</Value>
</Value>
</Data>
<DataLocation>^ODS.HospitalizationD</DataLocation>
<DefaultData>HospitalizationDefaultData</DefaultData>
<IdLocation>^ODS.HospitalizationD</IdLocation>
<IndexLocation>^ODS.HospitalizationI</IndexLocation>
<State>HospitalizationState</State>
<StreamLocation>^ODS.HospitalizationS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
