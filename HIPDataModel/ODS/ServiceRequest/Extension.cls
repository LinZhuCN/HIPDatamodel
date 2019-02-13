Class ODS.ServiceRequest.Extension Extends ODS.DT.EmbeddedDataType
{

// To Contain ORC-5

Property OrderStatus As %String(XMLNAME = "orderstatus", XMLPROJECTION = "ELEMENT");

// To Contain ORC-6

Property AuditStatus As %String(XMLNAME = "auditstatus", XMLPROJECTION = "ELEMENT");

// To Contain ActionBy

Property ActionBy As ODS.Practitioner(XMLNAME = "actionby", XMLPROJECTION = "ELEMENT");

/// 审核人
Property AuditBy As ODS.Practitioner(XMLNAME = "auditby", XMLPROJECTION = "ELEMENT");

/// 复核人
Property CheckBy As ODS.Practitioner(XMLNAME = "checkby", XMLPROJECTION = "ELEMENT");

Property BloodTransfusionExtension As ODS.ServiceRequest.Extension.BloodTransfusionExtension(XMLNAME = "bloodtransfusionextension", XMLPROJECTION = "ELEMENT");

Parameter XMLNAME = "ServiceRequest.Extension";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ServiceRequest.Extension";




Storage Default
{
<Data name="ExtensionState">
<Value name="1">
<Value>OrderStatus</Value>
</Value>
<Value name="2">
<Value>ActionBy</Value>
</Value>
<Value name="3">
<Value>AuditBy</Value>
</Value>
<Value name="4">
<Value>CheckBy</Value>
</Value>
<Value name="5">
<Value>BloodTransfusionExtension</Value>
</Value>
<Value name="6">
<Value>AuditStatus</Value>
</Value>
</Data>
<State>ExtensionState</State>
<StreamLocation>^ODS.ServiceRequest.ExtensionS</StreamLocation>
<Type>%Library.CacheSerialState</Type>
}

}
