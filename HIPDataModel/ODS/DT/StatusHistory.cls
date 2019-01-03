Class ODS.DT.StatusHistory Extends (%SerialObject, %XML.Adaptor)
{

/// 记录时间戳/序号.
Property SequenceNo As %String(XMLNAME = "sequenceno", XMLPROJECTION = "ELEMENT") [ Required ];

/// planned | arrived | trigged | in-progress | onleave | finished | cancelled +.
Property Status As ODS.DT.Coding(XMLNAME = "status", XMLPROJECTION = "ELEMENT") [ Required ];

/// The time that the episode was in the specified status.
Property Period As ODS.DT.Period(XMLNAME = "period", XMLPROJECTION = "ELEMENT") [ Required ];

/// 记录状态变化的机构、系统和时间戳.
Property Recorder As %String(XMLNAME = "recorder", XMLPROJECTION = "ELEMENT");

Storage Default
{
<Data name="StatusHistoryState">
<Value name="1">
<Value>SequenceNo</Value>
</Value>
<Value name="2">
<Value>Status</Value>
</Value>
<Value name="3">
<Value>Period</Value>
</Value>
<Value name="4">
<Value>Recorder</Value>
</Value>
</Data>
<State>StatusHistoryState</State>
<StreamLocation>^ODS.DT.StatusHistoryS</StreamLocation>
<Type>%Library.CacheSerialState</Type>
}

}
