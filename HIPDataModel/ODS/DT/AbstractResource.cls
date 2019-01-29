Class ODS.DT.AbstractResource Extends (%Persistent, %XML.Adaptor) [ Abstract, NoExtent, ProcedureBlock ]
{

/// If the resource need a univers unique and required id, overide ResourceId as required
Property ResourceId As %String(XMLNAME = "ResourceId", XMLPROJECTION = "ELEMENT");

// Index ResourceIdIdx On ResourceId [ Unique ];

}
