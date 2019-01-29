Class ODS.Practitioner Extends ODS.DT.AbstractResource 
{

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Practitioner";

Parameter XMLSEQUENCE = 1;

/// An identifier that applies to this person in this role.
Property Identifier As list Of ODS.DT.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// Whether this practitioner's record is in active use.
Property Active As %Boolean(XMLNAME = "active");

/// A name associated with the person.
Property Name As ODS.DT.HumanName(XMLNAME = "name");

/// A contact detail for the practitioner, e.g. a telephone number or an email address.
Property telecom As list Of HS.FHIR.Model.Base.ContactPoint(XMLNAME = "telecom", XMLPROJECTION = "ELEMENT");

/// The postal address where the practitioner can be found or visited or to which mail can be delivered.
Property Address As list Of ODS.DT.Address(XMLNAME = "address", XMLPROJECTION = "ELEMENT");

/// Administrative Gender - the gender that the person is considered to have for administration and record keeping purposes.
Property Gender As ODS.DT.Coding(XMLNAME = "gender");

/// The date of birth for the practitioner.
Property BirthDate As %Date(XMLNAME = "birthDate");

/// Image of the person.
Property Photo As list Of HS.FHIR.Model.Base.Attachment(XMLNAME = "photo", XMLPROJECTION = "ELEMENT");

/// The list of roles/organizations that the practitioner is associated with.
/// Property practitionerRole As list Of HS.FHIR.Model.Resource.Practitioner.PractitionerRole(XMLNAME = "practitionerRole", XMLPROJECTION = "ELEMENT");
/// Qualifications obtained by training and certification.
/// Property qualification As list Of HS.FHIR.Model.Resource.Practitioner.Qualification(XMLNAME = "qualification", XMLPROJECTION = "ELEMENT");
/// A language the practitioner is able to use in patient communication.
Property Communication As list Of ODS.DT.CodeableConcept(XMLNAME = "communication", XMLPROJECTION = "ELEMENT");




Storage Default
{
<Data name="PractitionerDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>ResourceId</Value>
</Value>
<Value name="3">
<Value>Identifier</Value>
</Value>
<Value name="4">
<Value>Active</Value>
</Value>
<Value name="5">
<Value>Name</Value>
</Value>
<Value name="6">
<Value>telecom</Value>
</Value>
<Value name="7">
<Value>Address</Value>
</Value>
<Value name="8">
<Value>Gender</Value>
</Value>
<Value name="9">
<Value>BirthDate</Value>
</Value>
<Value name="10">
<Value>Photo</Value>
</Value>
<Value name="11">
<Value>Communication</Value>
</Value>
</Data>
<DataLocation>^ODS.PractitionerD</DataLocation>
<DefaultData>PractitionerDefaultData</DefaultData>
<IdLocation>^ODS.PractitionerD</IdLocation>
<IndexLocation>^ODS.PractitionerI</IndexLocation>
<StreamLocation>^ODS.PractitionerS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
