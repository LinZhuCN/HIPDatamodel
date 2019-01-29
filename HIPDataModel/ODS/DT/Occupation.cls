/// 职业
Class ODS.DT.Occupation Extends ODS.DT.EmbeddedDataType
{

/// DE02.01.050.00	职称级别代码	个体职称所属级别在特定分类中的代码	S2	N1	1.高级职称 2.中级职称 3.初级职称	DE02.01.050.00
Property Title As %String;

/// DE02.01.052.00	职业类别代码	个体从事职业所属类别在特定编码体系中的代码	S3	N2	GB/T 2261.4	GB/T 2261.4 
Property Code As ODS.DT.CodeableConcept;

/// DE02.01.051.00	职业开始日期	个体开始从事某职业首日的公元纪年日期	D	D8		
/// DE02.01.053.00	职业终止日期	个体终止从事某职业的公元纪年日期	D	D8	
Property Period As ODS.DT.Period;

/// DE02.01.054.00	中文域名	个人或机构互联网中文域名的全称，不包含www	S1
Property OrganizationWeb As %String;

/// DE02.01.056.00	专业技术职务资格	个体的专业技术资格的名称在特定编码体系中的代码
Property Specialty As %String;




Storage Default
{
<Data name="OccupationState">
<Value name="1">
<Value>Title</Value>
</Value>
<Value name="2">
<Value>Code</Value>
</Value>
<Value name="3">
<Value>Period</Value>
</Value>
<Value name="4">
<Value>OrganizationWeb</Value>
</Value>
<Value name="5">
<Value>Specialty</Value>
</Value>
</Data>
<State>OccupationState</State>
<StreamLocation>^ODS.DT.OccupationS</StreamLocation>
<Type>%Library.CacheSerialState</Type>
}

}
