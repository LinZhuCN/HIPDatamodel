/// 住院记录
Class ODS.Hospitalization Extends (%SerialObject, %XML.Adaptor)
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
<Data name="HospitalizationState">
<Value name="1">
<Value>OriginLocation</Value>
</Value>
<Value name="2">
<Value>FromTime</Value>
</Value>
<Value name="3">
<Value>ToTime</Value>
</Value>
<Value name="4">
<Value>SpecialCourtesy</Value>
</Value>
<Value name="5">
<Value>Location</Value>
</Value>
<Value name="6">
<Value>Encounter</Value>
</Value>
<Value name="7">
<Value>preAdmissionIdentifier</Value>
</Value>
<Value name="8">
<Value>origin</Value>
</Value>
<Value name="9">
<Value>AdmitSource</Value>
</Value>
<Value name="10">
<Value>admittingDiagnosis</Value>
</Value>
<Value name="11">
<Value>ReAdmission</Value>
</Value>
<Value name="12">
<Value>DietPreference</Value>
</Value>
<Value name="13">
<Value>specialCourtesy</Value>
</Value>
<Value name="14">
<Value>specialArrangement</Value>
</Value>
<Value name="15">
<Value>destination</Value>
</Value>
<Value name="16">
<Value>dischargeDisposition</Value>
</Value>
<Value name="17">
<Value>dischargeDiagnosis</Value>
</Value>
<Value name="18">
<Value>Destination</Value>
</Value>
</Data>
<State>HospitalizationState</State>
<StreamLocation>^ODS.HospitalizationS</StreamLocation>
<Type>%Library.CacheSerialState</Type>
}

}
