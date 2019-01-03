Class ODS.DT.Period Extends (%SerialObject, %XML.Adaptor)
{

/// The start of the period. The boundary is inclusive.
Property Start As %TimeStamp(XMLNAME = "start", XMLPROJECTION = "ELEMENT");

/// The end of the period. If the end of the period is missing, it means that the period is ongoing. The start may be in the past, and the end date in the future, which means that period is expected/planned to end at that time.
Property End As %TimeStamp(XMLNAME = "end", XMLPROJECTION = "ELEMENT");

Storage Default
{
<Data name="PeriodState">
<Value name="1">
<Value>Start</Value>
</Value>
<Value name="2">
<Value>End</Value>
</Value>
</Data>
<State>PeriodState</State>
<StreamLocation>^ODS.DT.PeriodS</StreamLocation>
<Type>%Library.CacheSerialState</Type>
}

}
