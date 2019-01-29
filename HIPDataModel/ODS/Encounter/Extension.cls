Class ODS.Encounter.Extension Extends ODS.DT.EmbeddedDataType
{

Property VisitIndicator As %String(XMLNAME = "visitindicator", XMLPROJECTION = "ELEMENT");




Storage Default
{
<Data name="ExtensionState">
<Value name="1">
<Value>VisitIndicator</Value>
</Value>
</Data>
<State>ExtensionState</State>
<StreamLocation>^ODS.Encounter.ExtensionS</StreamLocation>
<Type>%Library.CacheSerialState</Type>
}

}
