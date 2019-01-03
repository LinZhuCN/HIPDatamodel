Class ODS.MedicationRequest Extends (%Persistent, %XML.Adaptor)
{

Parameter XMLNAME = "MedicationRequest";

Parameter XMLSEQUENCE = 1;

/// Identifiers assigned to this order instance by the orderer and/or the receiver and/or order fulfiller.
/// 医嘱号
Property Identifier As ODS.DT.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

Storage Default
{
<Data name="MedicationRequestDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Identifier</Value>
</Value>
</Data>
<DataLocation>^ODS.MedicationRequestD</DataLocation>
<DefaultData>MedicationRequestDefaultData</DefaultData>
<IdLocation>^ODS.MedicationRequestD</IdLocation>
<IndexLocation>^ODS.MedicationRequestI</IndexLocation>
<StreamLocation>^ODS.MedicationRequestS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
