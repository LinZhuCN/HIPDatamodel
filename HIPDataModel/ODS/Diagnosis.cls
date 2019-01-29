/// FHIR未定义diagnosis(通过BackboneElement来实现),ODS定义如下
Class ODS.Diagnosis Extends ODS.DT.AbstractResource
{

/// Reason the encounter takes place, as specified using information from another resource. For admissions, this is the admission diagnosis. The indication will typically be a Condition (with other resources referenced in the evidence.detail), or a Procedure.
/// Property condition As HS.FHIR.vSTU3.Model.Base.Reference(XMLNAME = "condition", XMLPROJECTION = "ELEMENT") [ Required ];
/// Role that this diagnosis has within the encounter (e.g. admission, billing, discharge …).
/// 诊断类型(入院诊断、出院诊断、初步诊断、最终诊断...)
Property Role As ODS.DT.Coding(XMLNAME = "role", XMLPROJECTION = "ELEMENT");

/// Ranking of the diagnosis (for each role type).
/// 诊断序号
Property Rank As %Integer(XMLNAME = "rank", XMLPROJECTION = "ELEMENT");

/// 诊断编码
/// The diagnosis code or description<br>
/// HL7:  DG1-3 : DiagnosisCodeDG1<br>
/// HL7:  DG1-4 : DiagnosisDescription<br>
Property Code As ODS.DT.Coding(XMLNAME = "code", XMLPROJECTION = "ELEMENT");

/// 诊断说明
Property Description As %String(MAXLEN = 1024, XMLNAME = "description", XMLPROJECTION = "ELEMENT");

/// 诊断状态: 活动、失效
/// Initial values: see file HS-Default-DiagnosisStatus.txt (A=Active, I=Inactive)
/// HL7 sets to A
Property Status As ODS.DT.Coding(XMLNAME = "status", XMLPROJECTION = "ELEMENT");

/// 诊断状态历史
Property StatusHistory As list Of ODS.DT.StatusHistory(XMLNAME = "statusHistory", XMLPROJECTION = "ELEMENT");

/// 记录时间
/// When the diagnosed condition began<br>
Property OnsetTime As %TimeStamp(XMLNAME = "onsetTime", XMLPROJECTION = "ELEMENT");

/// 是否主要诊断
Property IsPrimary As %Boolean(XMLNAME = "isPrimary", XMLPROJECTION = "ELEMENT") [ InitialExpression = 1 ];

Property Encounter As ODS.Encounter(XMLNAME = "encounter", XMLPROJECTION = "ELEMENT") ;

// Index EncounterIndex On Encounter;

Storage Default
{
<Data name="DiagnosisDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>ResourceId</Value>
</Value>
<Value name="3">
<Value>Rank</Value>
</Value>
<Value name="4">
<Value>Code</Value>
</Value>
<Value name="5">
<Value>Description</Value>
</Value>
<Value name="6">
<Value>Status</Value>
</Value>
<Value name="7">
<Value>StatusHistory</Value>
</Value>
<Value name="8">
<Value>OnsetTime</Value>
</Value>
<Value name="9">
<Value>IsPrimary</Value>
</Value>
<Value name="10">
<Value>Encounter</Value>
</Value>
<Value name="11">
<Value>Role</Value>
</Value>
</Data>
<DataLocation>^ODS.DiagnosisD</DataLocation>
<DefaultData>DiagnosisDefaultData</DefaultData>
<IdLocation>^ODS.DiagnosisD</IdLocation>
<IndexLocation>^ODS.DiagnosisI</IndexLocation>
<StreamLocation>^ODS.DiagnosisS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
