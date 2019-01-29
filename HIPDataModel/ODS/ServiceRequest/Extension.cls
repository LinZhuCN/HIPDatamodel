Class ODS.ServiceRequest.Extension Extends ODS.DT.EmbeddedDataType
{

// To Contain ORC-5

Property OrderStatus As %String(XMLNAME = "orderstatus", XMLPROJECTION = "ELEMENT");

// To Contain ActionBy

Property ActionBy As ODS.Practitioner(XMLNAME = "actionby", XMLPROJECTION = "ELEMENT");

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
<Value>BloodTransfusionExtension</Value>
</Value>
</Data>
<State>ExtensionState</State>
<StreamLocation>^ODS.ServiceRequest.ExtensionS</StreamLocation>
<Type>%Library.CacheSerialState</Type>
}

}
