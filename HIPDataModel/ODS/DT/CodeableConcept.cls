/// 术语概念
/// 一个术语概念可以使用多个编码系统，例如：
///  <concept>
///    <coding>
///      <system value="http://hl7.org/fhir/sid/icd-10" />
///      <code value="R51" />
///    </coding>
///    <coding>
///      <system value="http://snomed.info/sct" />
///      <code value="25064002" />
///      <display value="Headache" />
///      <userSelected value="true" />
///    </coding>
///    <text value="general headache" />
///  </concept>
Class ODS.DT.CodeableConcept Extends ODS.DT.EmbeddedDataType
{

/// A reference to a code defined by a terminology system.
Property coding As list Of ODS.DT.Coding(XMLNAME = "coding", XMLPROJECTION = "ELEMENT");

/// A human language representation of the concept as seen/selected/uttered by the user who entered the data and/or which represents the intended meaning of the user.
Property text As %String(XMLNAME = "text", XMLPROJECTION = "ELEMENT");




Storage Default
{
<Data name="CodeableConceptState">
<Value name="1">
<Value>coding</Value>
</Value>
<Value name="2">
<Value>text</Value>
</Value>
</Data>
<State>CodeableConceptState</State>
<StreamLocation>^ODS.DT.CodeableConceptS</StreamLocation>
<Type>%Library.CacheSerialState</Type>
}

}
