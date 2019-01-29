Class ODS.VitalSign Extends ODS.Observation
{

Property Category As %String(VALUELIST = ",VitalSign", XMLNAME = "category", XMLPROJECTION = "ELEMENT") [ InitialExpression = "VitalSign" ];




Storage Default
{
<Type>%Library.CacheStorage</Type>
}

}
