/// 患者
Class ODS.Patient Extends (%Persistent, %XML.Adaptor)
{

Property Identifier As list of ODS.DT.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

Property Active As %Boolean(XMLNAME = "active", XMLPROJECTION = "ELEMENT");

/// DE02.01.039.00	姓名	个体在公安管理部门正式登记注册的姓氏和名称
Property Name As list Of ODS.DT.HumanName(XMLNAME = "name", XMLPROJECTION = "ELEMENT");

// Property telecom As list Of HS.FHIR.vSTU3.Model.Base.ContactPoint(XMLNAME = "telecom", XMLPROJECTION = "ELEMENT");

/// DE02.01.040.00	性别代码	个体生理性别在特定编码体系中的代码.
Property Gender As %String(XMLNAME = "gender", XMLPROJECTION = "ELEMENT");

/// DE02.01.005.01 出生日期	个体出生当日的公元纪年日期.
Property BirthDate As %Date(XMLNAME = "birthDate", XMLPROJECTION = "ELEMENT");

/// DE02.01.005.02 出生日期时间	个体出生当日的公元纪年日期和时间的完整描述
Property BirthTime As %TimeStamp(XMLNAME = "birthTime", XMLPROJECTION = "ELEMENT");

/// 死亡
Property Deceased As %Boolean(XMLNAME = "deceasedBoolean", XMLPROJECTION = "ELEMENT") [ InitialExpression = "0" ];

/// DE02.01.034.00	死亡地点类别代码	个体死亡时所在地点类别在特定编码体系中的代码
Property DeceasedPlaceType As ODS.DT.Coding(XMLNAME = "deceasedPlaceType", XMLPROJECTION = "ELEMENT");

/// DE02.01.035.00	死亡日期	个体死亡当日的公元纪年日期
/// DE02.01.036.00	死亡日期时间	个体死亡当日的公元纪年日期和时间的完整描述
Property DeceasedDateTime As %TimeStamp(XMLNAME = "deceasedDateTime", XMLPROJECTION = "ELEMENT");

/// DE02.01.009	地址.
Property Address As list Of ODS.DT.Address(XMLNAME = "address", XMLPROJECTION = "ELEMENT");

/// DE02.01.018.00	婚姻状况代码	个体当前婚姻状况代码.
Property MaritalStatus As ODS.DT.Coding(XMLNAME = "maritalStatus", XMLPROJECTION = "ELEMENT");

/// DE02.01.015.00	国籍	个体所属国籍在特定编码体系中的代码
Property Nationality As ODS.DT.Coding(XMLNAME = "nationality", XMLPROJECTION = "ELEMENT");

/// DE02.01.025.00	民族	个体所属民族类别在特定编码体系中的代码.
Property Ethnic As ODS.DT.Coding(XMLNAME = "ethnic", XMLPROJECTION = "ELEMENT");

/// 职业
Property Occupation As list Of ODS.DT.Occupation(XMLNAME = "occupation", XMLPROJECTION = "ELEMENT");

Property MultipleBirthBoolean As %Boolean(XMLNAME = "multipleBirthBoolean", XMLPROJECTION = "ELEMENT");

Property MultipleBirthInteger As %Integer(XMLNAME = "multipleBirthInteger", XMLPROJECTION = "ELEMENT");

/// VIP
Property VIP As list Of ODS.DT.VIP(XMLNAME = "vip", XMLPROJECTION = "ELEMENT");

// Property photo As list Of HS.FHIR.vSTU3.Model.Base.Attachment(XMLNAME = "photo", XMLPROJECTION = "ELEMENT");

// Property contact As list Of HS.FHIR.vSTU3.Model.Resource.Patient.Contact(XMLNAME = "contact", XMLPROJECTION = "ELEMENT");

// Property animal As HS.FHIR.vSTU3.Model.Resource.Patient.Animal(XMLNAME = "animal", XMLPROJECTION = "ELEMENT");

// Property communication As list Of HS.FHIR.vSTU3.Model.Resource.Patient.Communication(XMLNAME = "communication", XMLPROJECTION = "ELEMENT");

// Property generalPractitioner As list Of HS.FHIR.vSTU3.Model.Base.Reference(XMLNAME = "generalPractitioner", XMLPROJECTION = "ELEMENT");

// Property managingOrganization As HS.FHIR.vSTU3.Model.Base.Reference(XMLNAME = "managingOrganization", XMLPROJECTION = "ELEMENT");

// Property link As list Of HS.FHIR.vSTU3.Model.Resource.Patient.Link(XMLNAME = "link", XMLPROJECTION = "ELEMENT");

Relationship Encounters As ODS.Encounter [ Cardinality = many, Inverse = Subject ];

/// Image of the patient.
/// A contact party (e.g. guardian, partner, friend) for the patient.
/// This patient is known to be an animal.
/// Languages which may be used to communicate with the patient about his or her health.
/// Patient's nominated care provider.
/// Organization that is the custodian of the patient record.
/// Link to another patient resource that concerns the same actual patient.
Storage Default
{
<Data name="PatientDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Identifier</Value>
</Value>
<Value name="3">
<Value>Active</Value>
</Value>
<Value name="4">
<Value>Name</Value>
</Value>
<Value name="5">
<Value>gender</Value>
</Value>
<Value name="6">
<Value>BirthDate</Value>
</Value>
<Value name="7">
<Value>Deceased</Value>
</Value>
<Value name="8">
<Value>deceasedDateTime</Value>
</Value>
<Value name="9">
<Value>address</Value>
</Value>
<Value name="10">
<Value>maritalStatus</Value>
</Value>
<Value name="11">
<Value>multipleBirthBoolean</Value>
</Value>
<Value name="12">
<Value>multipleBirthInteger</Value>
</Value>
<Value name="13">
<Value>Gender</Value>
</Value>
<Value name="14">
<Value>DeceasedDateTime</Value>
</Value>
<Value name="15">
<Value>Address</Value>
</Value>
<Value name="16">
<Value>MaritalStatus</Value>
</Value>
<Value name="17">
<Value>MultipleBirthBoolean</Value>
</Value>
<Value name="18">
<Value>MultipleBirthInteger</Value>
</Value>
<Value name="19">
<Value>VIP</Value>
</Value>
<Value name="20">
<Value>BirthTime</Value>
</Value>
<Value name="21">
<Value>Ethnic</Value>
</Value>
<Value name="22">
<Value>Occupation</Value>
</Value>
<Value name="23">
<Value>Nationality</Value>
</Value>
<Value name="24">
<Value>DeceasedPlaceType</Value>
</Value>
</Data>
<DataLocation>^ODS.PatientD</DataLocation>
<DefaultData>PatientDefaultData</DefaultData>
<Description>
<![CDATA[Image of the patient.
A contact party (e.g. guardian, partner, friend) for the patient.
This patient is known to be an animal.
Languages which may be used to communicate with the patient about his or her health.
Patient's nominated care provider.
Organization that is the custodian of the patient record.
Link to another patient resource that concerns the same actual patient.]]></Description>
<IdLocation>^ODS.PatientD</IdLocation>
<IndexLocation>^ODS.PatientI</IndexLocation>
<StreamLocation>^ODS.PatientS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
