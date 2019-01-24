Class ODS.Procedure Extends (%Persistent,%XML.Adaptor)
{

Storage Default
{
<Data name="ProcedureDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
</Data>
<DataLocation>^ODS.ProcedureD</DataLocation>
<DefaultData>ProcedureDefaultData</DefaultData>
<IdLocation>^ODS.ProcedureD</IdLocation>
<IndexLocation>^ODS.ProcedureI</IndexLocation>
<StreamLocation>^ODS.ProcedureS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}