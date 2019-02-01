Class ODS.Observation.Specimen Extends ODS.DT.EmbeddedDataType
{

Parameter XMLNAME = "Observation.Specimen";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Observation.Specimen";

Property Type As ODS.DT.Coding(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

Property ResultFlag As %String(XMLNAME = "resultFlag", XMLPROJECTION = "ELEMENT");

Property LowLevel As %String(XMLNAME = "lowLevel", XMLPROJECTION = "ELEMENT");

Property HighLevel As %String(XMLNAME = "highLevel", XMLPROJECTION = "ELEMENT");



Storage Default
{
<Data name="SpecimenState">
<Value name="1">
<Value>Type</Value>
</Value>
<Value name="2">
<Value>ResultFlag</Value>
</Value>
<Value name="3">
<Value>LowLevel</Value>
</Value>
<Value name="4">
<Value>HighLevel</Value>
</Value>
</Data>
<State>SpecimenState</State>
<StreamLocation>^ODS.Observation.SpecimenS</StreamLocation>
<Type>%Library.CacheSerialState</Type>
}

}
