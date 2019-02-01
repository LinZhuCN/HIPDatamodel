Class ODS.Observation.ReferenceRange Extends ODS.DT.EmbeddedDataType
{

Parameter XMLNAME = "Observation.ReferenceRange";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Observation.ReferenceRange";

Property Low As %String(XMLNAME = "low", XMLPROJECTION = "ELEMENT");

Property High As %String(XMLNAME = "high", XMLPROJECTION = "ELEMENT");

Property Text As %String(XMLNAME = "text", XMLPROJECTION = "ELEMENT");

Storage Default
{
<Data name="ReferenceRangeState">
<Value name="1">
<Value>Low</Value>
</Value>
<Value name="2">
<Value>High</Value>
</Value>
<Value name="3">
<Value>Text</Value>
</Value>
</Data>
<State>ReferenceRangeState</State>
<StreamLocation>^ODS.Observa6615.ReferenceRangeS</StreamLocation>
<Type>%Library.CacheSerialState</Type>
}

}
