Class ODS.BatchObservation Extends ODS.DT.AbstractResource 
{
	
	Parameter XMLNAME = "BatchObservation";

	Parameter XMLSEQUENCE = 1;

/// An encounter or episode of care that provides additional information about the healthcare context in which this request is made.
/// 就诊
Property Encounter As ODS.Encounter(XMLNAME = "encounter");

/// An encounter or episode of care that provides additional information about the healthcare context in which this request is made.
/// 就诊
Property Observations As list of  ODS.Observation (XMLNAME = "observations");
	
Storage Default
{
<Data name="BatchObservationDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>ResourceId</Value>
</Value>
<Value name="3">
<Value>Patient</Value>
</Value>
<Value name="4">
<Value>Encounter</Value>
</Value>
<Value name="5">
<Value>Observations</Value>
</Value>
</Data>
<DataLocation>^ODS.BatchObservationD</DataLocation>
<DefaultData>BatchObservationDefaultData</DefaultData>
<IdLocation>^ODS.BatchObservationD</IdLocation>
<IndexLocation>^ODS.BatchObservationI</IndexLocation>
<StreamLocation>^ODS.BatchObservationS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}