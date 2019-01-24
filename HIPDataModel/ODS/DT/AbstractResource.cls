Class ODS.DT.AbstractResource Extends (%Persistent, %XML.Adaptor)[Abstract]
{
///If the resource need a univers unique and required id, overide ResourceId as required
Property ResourceId As %String(XMLNAME = "ResourceId", XMLPROJECTION = "ELEMENT");

Index ResourceIdIdx On ResourceId [ Unique ] ;

Storage Default
{
<Data name="AbstractResourceDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>ResourceId</Value>
</Value>
</Data>
<DataLocation>^ODS.DT.AbstractResourceD</DataLocation>
<DefaultData>AbstractResourceDefaultData</DefaultData>
<IdLocation>^ODS.DT.AbstractResourceD</IdLocation>
<IndexLocation>^ODS.DT.AbstractResourceI</IndexLocation>
<StreamLocation>^ODS.DT.AbstractResourceS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}