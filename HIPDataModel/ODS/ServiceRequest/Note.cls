Class ODS.ServiceRequest.Note Extends ODS.DT.EmbeddedDataType
{
	Property Seq As %String(XMLNAME = "seq", XMLPROJECTION = "ELEMENT");
	
	Property Comment As ODS.DT.Coding(XMLNAME = "comment", XMLPROJECTION = "ELEMENT");
Storage Default
{
<Data name="NoteState">
<Value name="1">
<Value>Seq</Value>
</Value>
<Value name="2">
<Value>Comment</Value>
</Value>
</Data>
<State>NoteState</State>
<StreamLocation>^ODS.ServiceRequest.NoteS</StreamLocation>
<Type>%Library.CacheSerialState</Type>
}

}