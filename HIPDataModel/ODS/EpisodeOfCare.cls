/// 针对一个疾病或分组的发生医疗接触的一段时间，可能期间有多次就诊（Encounter），例如针对某个疾病的转诊
Class ODS.EpisodeOfCare Extends (%Persistent, %XML.Adaptor)
{

Storage Default
{
<Data name="EpisodeOfCareDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
</Data>
<DataLocation>^ODS.EpisodeOfCareD</DataLocation>
<DefaultData>EpisodeOfCareDefaultData</DefaultData>
<IdLocation>^ODS.EpisodeOfCareD</IdLocation>
<IndexLocation>^ODS.EpisodeOfCareI</IndexLocation>
<StreamLocation>^ODS.EpisodeOfCareS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
