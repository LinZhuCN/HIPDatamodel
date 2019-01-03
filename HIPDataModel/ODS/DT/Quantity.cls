/// A measured amount (or an amount that can potentially be measured). Note that measured amounts include amounts that are not precisely quantified, including amounts involving arbitrary units and floating currencies.<br>
/// If the element is present, it must have a value for at least one of the defined elements, an @id referenced from the Narrative, or extensions
Class ODS.DT.Quantity Extends (%SerialObject, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter XMLNAME = "Quantity";

Parameter XMLSEQUENCE = 1;

/// The value of the measured amount. The value includes an implicit precision in the presentation of the value.
Property value As %Decimal(XMLNAME = "value", XMLPROJECTION = "ELEMENT");

/// How the value should be understood and represented - whether the actual value is greater or less than the stated value due to measurement issues; e.g. if the comparator is "<" , then the real value is < stated value.
/// Property comparator As HS.FHIR.vSTU3.Model.Base.QuantityComparator(XMLNAME = "comparator", XMLPROJECTION = "ELEMENT");
/// A human-readable form of the unit.
Property unit As %String(XMLNAME = "unit", XMLPROJECTION = "ELEMENT");

/// The identification of the system that provides the coded form of the unit.
Property system As %String(XMLNAME = "system", XMLPROJECTION = "ELEMENT");

/// A computer processable form of the unit in some unit representation system.
Property code As ODS.DT.Coding(XMLNAME = "code", XMLPROJECTION = "ELEMENT");

Storage Default
{
<Data name="QuantityState">
<Value name="1">
<Value>value</Value>
</Value>
<Value name="2">
<Value>comparator</Value>
</Value>
<Value name="3">
<Value>unit</Value>
</Value>
<Value name="4">
<Value>system</Value>
</Value>
<Value name="5">
<Value>code</Value>
</Value>
</Data>
<State>QuantityState</State>
<StreamLocation>^ODS.DT.QuantityS</StreamLocation>
<Type>%Library.CacheSerialState</Type>
}

}
