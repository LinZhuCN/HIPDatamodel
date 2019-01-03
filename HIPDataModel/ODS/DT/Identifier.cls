Class ODS.DT.Identifier Extends (%SerialObject, %XML.Adaptor)
{

/// The purpose of this identifier.
/// Property Use As HS.FHIR.vSTU3.Model.Base.IdentifierUse(XMLNAME = "use", XMLPROJECTION = "ELEMENT");
/// A coded type for the identifier that can be used to determine which identifier to use for a specific purpose.
Property Type As ODS.DT.Coding(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// Establishes the namespace for the value - that is, a URL that describes a set values that are unique.
Property System As %String(XMLNAME = "system", XMLPROJECTION = "ELEMENT");

/// The portion of the identifier typically relevant to the user and which is unique within the context of the system.
Property Value As %String(XMLNAME = "value", XMLPROJECTION = "ELEMENT");

/// Time period during which identifier is/was valid for use.
Property Period As ODS.DT.Period(XMLNAME = "period", XMLPROJECTION = "ELEMENT");

/// Organization that issued/manages the identifier.
/// Property Assigner As HS.FHIR.vSTU3.Model.Base.Reference(XMLNAME = "assigner", XMLPROJECTION = "ELEMENT");
Storage Default
{
<Data name="IdentifierState">
<Value name="1">
<Value>Type</Value>
</Value>
<Value name="2">
<Value>System</Value>
</Value>
<Value name="3">
<Value>Value</Value>
</Value>
<Value name="4">
<Value>Period</Value>
</Value>
</Data>
<Description>
<![CDATA[Organization that issued/manages the identifier.
Property Assigner As HS.FHIR.vSTU3.Model.Base.Reference(XMLNAME = "assigner", XMLPROJECTION = "ELEMENT");]]></Description>
<State>IdentifierState</State>
<StreamLocation>^ODS.DT.IdentifierS</StreamLocation>
<Type>%Library.CacheSerialState</Type>
}

}
