/// 代码系统
/// 例如： Type    System    Version    Code       Display
///        诊断    ICD10     1          A01.0      伤寒
///        诊断    SNOMED    1          67885-4    伤寒
Class ODS.DT.Coding Extends ODS.DT.EmbeddedDataType
{

/// 代码大类
Property Type As %String;

/// 代码系统.
Property System As %String(XMLNAME = "system", XMLPROJECTION = "ELEMENT");

/// 代码系统版本 The version of the code system which was used when choosing this code. Note that a well-maintained code system does not need the version reported, because the meaning of codes is consistent across versions. However this cannot consistently be assured. and when the meaning is not guaranteed to be consistent, the version SHOULD be exchanged.
Property Version As %String(XMLNAME = "version", XMLPROJECTION = "ELEMENT");

/// 代码值 A symbol in syntax defined by the system. The symbol may be a predefined code or an expression in a syntax defined by the coding system (e.g. post-coordination).
Property Code As %String(XMLNAME = "code", XMLPROJECTION = "ELEMENT");

/// 代码描述 A representation of the meaning of the code in the system, following the rules of the system.
Property Display As %String(XMLNAME = "display", XMLPROJECTION = "ELEMENT");

/// Indicates that this coding was chosen by a user directly - i.e. off a pick list of available items (codes or displays).
Property UserSelected As %Boolean(XMLNAME = "userSelected", XMLPROJECTION = "ELEMENT");




Storage Default
{
<Data name="CodingState">
<Value name="1">
<Value>Type</Value>
</Value>
<Value name="2">
<Value>System</Value>
</Value>
<Value name="3">
<Value>Version</Value>
</Value>
<Value name="4">
<Value>Code</Value>
</Value>
<Value name="5">
<Value>Display</Value>
</Value>
<Value name="6">
<Value>UserSelected</Value>
</Value>
</Data>
<State>CodingState</State>
<StreamLocation>^ODS.DT.CodingS</StreamLocation>
<Type>%Library.CacheSerialState</Type>
}

}
