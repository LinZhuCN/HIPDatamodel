Class ODS.DT.HumanName Extends ODS.DT.EmbeddedDataType
{

/// Identifies the purpose for this name.
/// Property Use As HS.FHIR.vSTU3.Model.Base.NameUse(XMLNAME = "use", XMLPROJECTION = "ELEMENT");
/// A full text representation of the name.
Property Text As %String(XMLNAME = "text", XMLPROJECTION = "ELEMENT");

/// The part of a name that links to the genealogy. In some cultures (e.g. Eritrea) the family name of a son is the first name of his father.
Property Family As %String(XMLNAME = "family", XMLPROJECTION = "ELEMENT");

/// Given name.
Property Given As %String(XMLNAME = "given", XMLPROJECTION = "ELEMENT");

/// 曾用名
Property UsedName As list Of %String(XMLNAME = "prefix", XMLPROJECTION = "ELEMENT");

/// Part of the name that is acquired as a title due to academic, legal, employment or nobility status, etc. and that appears at the start of the name.
Property Prefix As %String(XMLNAME = "prefix", XMLPROJECTION = "ELEMENT");

/// Part of the name that is acquired as a title due to academic, legal, employment or nobility status, etc. and that appears at the end of the name.
Property Suffix As %String(XMLNAME = "suffix", XMLPROJECTION = "ELEMENT");

/// Indicates the period of time when this name was valid for the named person.
Property Period As %String(XMLNAME = "period", XMLPROJECTION = "ELEMENT");



Storage Default
{
<Data name="HumanNameState">
<Value name="1">
<Value>Text</Value>
</Value>
<Value name="2">
<Value>Family</Value>
</Value>
<Value name="3">
<Value>Given</Value>
</Value>
<Value name="4">
<Value>UsedName</Value>
</Value>
<Value name="5">
<Value>Prefix</Value>
</Value>
<Value name="6">
<Value>Suffix</Value>
</Value>
<Value name="7">
<Value>Period</Value>
</Value>
</Data>
<State>HumanNameState</State>
<StreamLocation>^ODS.DT.HumanNameS</StreamLocation>
<Type>%Library.CacheSerialState</Type>
}

}
