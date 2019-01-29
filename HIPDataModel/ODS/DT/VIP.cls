Class ODS.DT.VIP Extends ODS.DT.EmbeddedDataType
{

Property Type As %String;

Property Level As %String;




Storage Default
{
<Data name="VIPState">
<Value name="1">
<Value>Type</Value>
</Value>
<Value name="2">
<Value>Level</Value>
</Value>
</Data>
<State>VIPState</State>
<StreamLocation>^ODS.DT.VIPS</StreamLocation>
<Type>%Library.CacheSerialState</Type>
}

}
