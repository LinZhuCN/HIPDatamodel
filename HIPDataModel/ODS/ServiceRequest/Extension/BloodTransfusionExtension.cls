Class ODS.ServiceRequest.Extension.BloodTransfusionExtension Extends (%SerialObject, %XML.Adaptor) [ ProcedureBlock ]
{

/// The required blood product
/// 要使用的血制品
Property Product As ODS.DT.Coding(XMLNAME = "product", XMLPROJECTION = "ELEMENT");

/// 处理要求
Property HandlingRequest As ODS.DT.Coding(XMLNAME = "handlingrequest", XMLPROJECTION = "ELEMENT");

/// 请求发放时间
Property RequestedDispenseTime As %TimeStamp(XMLNAME = "requesteddispensetime", XMLPROJECTION = "ELEMENT");

// To contain 条码

Property Barcode As %String(XMLNAME = "barcode", XMLPROJECTION = "ELEMENT");

Storage Default
{
<Data name="BloodTransfusionExtensionState">
<Value name="1">
<Value>Product</Value>
</Value>
<Value name="2">
<Value>HandlingRequest</Value>
</Value>
<Value name="3">
<Value>RequestedDispenseTime</Value>
</Value>
<Value name="4">
<Value>reason</Value>
</Value>
<Value name="5">
<Value>Barcode</Value>
</Value>
</Data>
<State>BloodTransfusionExtensionState</State>
<StreamLocation>^ODS.Servic7B8C.BloodTransf1343S</StreamLocation>
<Type>%Library.CacheSerialState</Type>
}

}
