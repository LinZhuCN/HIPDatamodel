/// DE02.01.009	地址
Class ODS.DT.Address Extends (%SerialObject, %XML.Adaptor)
{

/// The purpose of this address.
/// Property Use As HS.FHIR.vSTU3.Model.Base.AddressUse(XMLNAME = "use", XMLPROJECTION = "ELEMENT");
/// Distinguishes between physical addresses (those you can visit) and mailing addresses (e.g. PO Boxes and care-of addresses). Most addresses are both.
/// Property Type As HS.FHIR.vSTU3.Model.Base.AddressType(XMLNAME = "type", XMLPROJECTION = "ELEMENT");
/// A full text representation of the address.
Property Text As %String(XMLNAME = "text", XMLPROJECTION = "ELEMENT");

/// This component contains the house number, apartment number, street name, street direction,  P.O. Box number, delivery hints, and similar address information.
Property Line As list Of %String(XMLNAME = "line", XMLPROJECTION = "ELEMENT");

/// 地址- 国家.
Property Country As %String(XMLNAME = "country", XMLPROJECTION = "ELEMENT") [ InitialExpression = "中华人民共和国" ];

/// DE02.01.009.01 地址-省(自治区、直辖市)	个体或机构地址中的省、自治区或直辖市名称	. A code may be used if codes are in common use (i.e. US 2 letter state codes).
Property State As %String(XMLNAME = "state", XMLPROJECTION = "ELEMENT");

/// DE02.01.009.02 地址-市(地区、州)	个体或机构地址中的市、地区或州的名称.
Property City As %String(XMLNAME = "city", XMLPROJECTION = "ELEMENT");

/// DE02.01.009.03	地址-县(区).
Property District As %String(XMLNAME = "district", XMLPROJECTION = "ELEMENT");

/// DE02.01.009.04	地址-乡(镇、街道办事处)	个体或机构地址中的乡、镇或城市的衔道办事处名称
Property Subdistrict As %String(XMLNAME = "subdistrict", XMLPROJECTION = "ELEMENT");

/// DE02.01.009.05	地址-村(街、路、弄等)
Property Street As %String(XMLNAME = "street", XMLPROJECTION = "ELEMENT");

/// DE02.01.009.06	地址-门牌号码	个体或机构地址中的门牌号码
Property HouseNumber As %String(XMLNAME = "houseNumber", XMLPROJECTION = "ELEMENT");

/// DE02.01.047.00	邮政编码	由阿拉伯数字组成，用来表示与地址对应的邮局及其投递区域的邮政通信代号.
Property PostalCode As %String(XMLNAME = "postalCode", XMLPROJECTION = "ELEMENT");

/// Time period when address was/is in use.
Property Period As ODS.DT.Period(XMLNAME = "period", XMLPROJECTION = "ELEMENT");

/// DE02.01.002.00 常住地类型代码:个体长期居住地所属类型在特定分类中的代码 
Property Type As %String(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// DE02.01.003.00 常住地址户籍标志Household registration	标识个体的常住地址是否为户籍所在地 
Property IsHousehold As %Boolean;

Storage Default
{
<Data name="AddressState">
<Value name="1">
<Value>Use</Value>
</Value>
<Value name="2">
<Value>Type</Value>
</Value>
<Value name="3">
<Value>Text</Value>
</Value>
<Value name="4">
<Value>Line</Value>
</Value>
<Value name="5">
<Value>City</Value>
</Value>
<Value name="6">
<Value>District</Value>
</Value>
<Value name="7">
<Value>State</Value>
</Value>
<Value name="8">
<Value>PostalCode</Value>
</Value>
<Value name="9">
<Value>Country</Value>
</Value>
<Value name="10">
<Value>Period</Value>
</Value>
<Value name="11">
<Value>IsHousehold</Value>
</Value>
<Value name="12">
<Value>Subdistrict</Value>
</Value>
<Value name="13">
<Value>Street</Value>
</Value>
<Value name="14">
<Value>HouseNumber</Value>
</Value>
</Data>
<State>AddressState</State>
<StreamLocation>^ODS.DT.AddressS</StreamLocation>
<Type>%Library.CacheSerialState</Type>
}

}
