/// 记录患者在一次就诊期间在病区间的移动
/// An interaction between a patient and healthcare provider(s) for the purpose of providing healthcare service(s) or assessing the health status of a patient.
Class ODS.Encounter.Location Extends (%SerialObject, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter XMLNAME = "Encounter.Location";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Encounter.Location";

/// The location where the encounter takes place.本次所在病区,例如手术室、ICU、心内一病区.
Property Location As ODS.Location(XMLNAME = "location", XMLPROJECTION = "ELEMENT") [ Required ];

/// The status of the participants' presence at the specified location during the period specified. If the participant is is no longer at the location, then the period will have an end date/time.
Property Status As ODS.DT.Coding(XMLNAME = "status", XMLPROJECTION = "ELEMENT");

/// Time period during which the patient was present at the location.
Property Period As ODS.DT.Period(XMLNAME = "period", XMLPROJECTION = "ELEMENT");

Storage Default
{
<Data name="LocationState">
<Value name="1">
<Value>Location</Value>
</Value>
<Value name="2">
<Value>Status</Value>
</Value>
<Value name="3">
<Value>Period</Value>
</Value>
</Data>
<State>LocationState</State>
<StreamLocation>^ODS.Encounter.LocationS</StreamLocation>
<Type>%Library.CacheSerialState</Type>
}

}
