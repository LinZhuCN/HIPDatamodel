/// Details and position information for a physical place where services are provided and resources and participants may be stored, found, contained or accommodated.
Class ODS.Location Extends ODS.DT.AbstractResource
{

Parameter XMLNAME = "Location";

Parameter XMLSEQUENCE = 1;

/// Unique code or number identifying the location to its users.
Property Identifier As list Of ODS.DT.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// active | suspended | inactive.
Property Status As ODS.DT.Coding(XMLNAME = "status");

/// The Operational status of the location (typically only for a bed/room)
Property OperationalStatus As ODS.DT.Coding(XMLNAME = "operationalStatus");

/// Name of the location as used by humans. Does not need to be unique.
Property Name As %String(XMLNAME = "name");

/// Description of the Location, which helps in finding or referencing the place.
Property Description As %String(XMLNAME = "description");

/// Indicates whether a resource instance represents a specific location or a class of locations.
Property Mode As ODS.DT.Coding(XMLNAME = "mode");

/// Indicates the type of function performed at the location.
Property Type As ODS.DT.CodeableConcept(XMLNAME = "type");

/// The contact details of communication devices available at the location. This can include phone numbers, fax numbers, mobile numbers, email addresses and web sites.
/// Property telecom As list Of HS.FHIR.Model.Base.ContactPoint(XMLNAME = "telecom", XMLPROJECTION = "ELEMENT");
/// Physical location.
Property Address As ODS.DT.Address(XMLNAME = "address");

/// Physical form of the location, e.g. building, room, vehicle, road.
Property PhysicalType As ODS.DT.CodeableConcept(XMLNAME = "physicalType");


Storage Default
{
<Data name="LocationDefaultData">
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
<Value>Status</Value>
</Value>
<Value name="5">
<Value>OperationalStatus</Value>
</Value>
<Value name="6">
<Value>Name</Value>
</Value>
<Value name="7">
<Value>Description</Value>
</Value>
<Value name="8">
<Value>Mode</Value>
</Value>
<Value name="9">
<Value>Type</Value>
</Value>
<Value name="10">
<Value>Address</Value>
</Value>
<Value name="11">
<Value>PhysicalType</Value>
</Value>
</Data>
<DataLocation>^ODS.LocationD</DataLocation>
<DefaultData>LocationDefaultData</DefaultData>
<IdLocation>^ODS.LocationD</IdLocation>
<IndexLocation>^ODS.LocationI</IndexLocation>
<StreamLocation>^ODS.LocationS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
