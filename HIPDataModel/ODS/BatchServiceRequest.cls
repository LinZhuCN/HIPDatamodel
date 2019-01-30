Class ODS.BatchServiceRequest Extends ODS.DT.AbstractResource 
{
	Parameter XMLNAME = "BatchServiceRequest";

	Parameter XMLSEQUENCE = 1;
	
	/// 医嘱目标患者
Property Patient As ODS.Patient(XMLNAME = "subject", XMLPROJECTION = "ELEMENT");

/// An encounter or episode of care that provides additional information about the healthcare context in which this request is made.
/// 就诊
Property Encounter As ODS.Encounter(XMLNAME = "encounter", XMLPROJECTION = "ELEMENT");

/// An encounter or episode of care that provides additional information about the healthcare context in which this request is made.
/// 就诊
Property ServiceRequests As list of  ODS.ServiceRequest(XMLNAME = "serviceRequests", XMLPROJECTION = "ELEMENT");

Storage Default
{
<Data name="BatchServiceRequestDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>ResourceId</Value>
</Value>
<Value name="3">
<Value>Subject</Value>
</Value>
<Value name="4">
<Value>Encounter</Value>
</Value>
<Value name="5">
<Value>ServiceRequests</Value>
</Value>
<Value name="6">
<Value>Patient</Value>
</Value>
</Data>
<DataLocation>^ODS.BatchServiceRequestD</DataLocation>
<DefaultData>BatchServiceRequestDefaultData</DefaultData>
<IdLocation>^ODS.BatchServiceRequestD</IdLocation>
<IndexLocation>^ODS.BatchServiceRequestI</IndexLocation>
<StreamLocation>^ODS.BatchServiceRequestS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}