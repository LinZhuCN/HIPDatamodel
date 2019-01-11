Class ODS.ServiceRequest.Extension Extends (%SerialObject, %XML.Adaptor) [ ProcedureBlock ]
{

// To Contain ORC-5

Property OrderStatus As %String(XMLNAME = "orderstatus", XMLPROJECTION = "ELEMENT");

// To Contain ActionBy

Property ActionBy As ODS.Practitioner(XMLNAME = "actionby", XMLPROJECTION = "ELEMENT");

Property BloodTransfusionExtension As ODS.ServiceRequest.Extension.BloodTransfusionExtension(XMLNAME = "bloodtransfusionextension", XMLPROJECTION = "ELEMENT");

Storage Default
{
<Data name="ExtensionState">
<Value name="1">
<Value>Barcode</Value>
</Value>
<Value name="2">
<Value>OrderStatus</Value>
</Value>
<Value name="3">
<Value>ActionBy</Value>
</Value>
<Value name="4">
<Value>BloodTransfusionExtension</Value>
</Value>
</Data>
<State>ExtensionState</State>
<StreamLocation>^ODS.ServiceRequest.ExtensionS</StreamLocation>
<Type>%Library.CacheSerialState</Type>
}

}
