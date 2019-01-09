Class ODS.ServiceRequest.Extension Extends (%SerialObject, %XML.Adaptor) [ ProcedureBlock ]
{

// To contain 条码

Property Barcode As %String(XMLNAME = "barcode", XMLPROJECTION = "ELEMENT");

// To Contain ORC-5

Property OrderStatus As %String(XMLNAME = "orderstatus", XMLPROJECTION = "ELEMENT");

Storage Default
{
<Data name="ExtensionState">
<Value name="1">
<Value>Barcode</Value>
</Value>
<Value name="2">
<Value>OrderStatus</Value>
</Value>
</Data>
<State>ExtensionState</State>
<StreamLocation>^ODS.ServiceRequest.ExtensionS</StreamLocation>
<Type>%Library.CacheSerialState</Type>
}

}
