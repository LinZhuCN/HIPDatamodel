/// A length of time.<br>
/// If the element is present, it must have a value for at least one of the defined elements, an @id referenced from the Narrative, or extensions
Class ODS.DT.Duration Extends ODS.DT.Quantity [ ProcedureBlock ]
{

Parameter XMLNAME = "Duration";

Parameter XMLSEQUENCE = 1;

Storage Default
{
<Type>%Library.CacheSerialState</Type>
}

}
