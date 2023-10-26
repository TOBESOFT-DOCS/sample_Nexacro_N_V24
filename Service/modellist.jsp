<%@ page contentType = "text/xml" %>
<%
	String str_group = request.getParameter("group")==null?"":request.getParameter("group");
	String str_id = request.getParameter("id")==null?"":request.getParameter("id");
	if(str_id.equals("")) 
	{
		if(str_group.equals("/"))
		{
%>
<Root>
  <ErrorCode>0</ErrorCode>
  <ErrorMsg>Success</ErrorMsg>

  <ModelGroup id="ModelGroup_1" type="group"/>
  <ModelGroup id="ModelGroup_2" type="group"/>
</Root>

<%
		} else if(str_group.equals("ModelGroup_1")){
%>
<Root>
  <ErrorCode>0</ErrorCode>
  <ErrorMsg>Success</ErrorMsg>

  <ModelGroup id="ModelGroup_1">
	<ModelGroup id="ModelGroup_1_1" type="group"/>
	<ModelGroup id="ModelGroup_1_2" type="group"/>
  </ModelGroup>		
</Root>
<%
		} else if(str_group.equals("ModelGroup_1/ModelGroup_1_1")){
%>
<Root>
  <ErrorCode>0</ErrorCode>
  <ErrorMsg>Success</ErrorMsg>

  <ModelGroup id="ModelGroup_1_1">
	<ModelGroup id="ModelService_1" type="service"/>
	<ModelGroup id="ModelService_2" type="service"/>
  </ModelGroup>		
</Root>
<%
		} else if(str_group.equals("ModelGroup_2")){
%>
<Root>
  <ErrorCode>0</ErrorCode>
  <ErrorMsg>Success</ErrorMsg>

  <ModelGroup id="ModelGroup_2">
	<ModelGroup id="ModelService_3" type="service"/>
	<ModelGroup id="ModelService_4" type="service"/>
  </ModelGroup>		
</Root>
<%
		} else {
%>
<Root>
  <ErrorCode>-1</ErrorCode>
  <ErrorMsg>Error</ErrorMsg>
</Root>
<%
		}
	} else if(str_id.equals("ModelService_1")){
%>
<Root>
  <ErrorCode>0</ErrorCode>
  <ErrorMsg>Success</ErrorMsg>

<ModelInfo version="1.2">
<Models>
<Model id="dataset_1" name="dataset_1" iotype="input" p1="TEST">
    <Field id="name" datatype="STRING" datasize="50"  label="Name"  fieldType="FreeText"  description=""  required="true"  p1="TEST"  p2="" />
    <Field id="company" datatype="STRING" datasize="50"  label="Company"  fieldType="FreeText"  description=""  required="true"  p1=""  p2="TEST" />
<FieldUserAttributes>
    <Attribute name="p1" edittype="String"/>
    <Attribute name="p2" edittype="String"/>
</FieldUserAttributes>
<ModelUserAttributes>
	<Attribute name="p1" edittype="String"/>
</ModelUserAttributes>
</Model>
<Model id="dataset_2" name="dataset_2" iotype="output">
    <Field id="B1" datatype="INT" datasize="10"  label="1"  fieldType="FreeText"  description=""  required="true" />
    <Field id="B2" datatype="STRING" datasize="50"  label="1"  fieldType="FreeText"  description=""  required="true" />
</Model>
</Models>
<Service id="svcSearchEmployee" name="SearchEmployee" url="http://localhost:8080/searchEmployeeInfo.jsp?" svc_attr01=""/>
    <ServiceUserAttributes>
       <Attribute name="svc_attr01" edittype="String"/>
    </ServiceUserAttributes>
</ModelInfo>	
</Root>
<%
	} else if(str_id.equals("ModelService_3")){
%>
<Root>
  <ErrorCode>0</ErrorCode>
  <ErrorMsg>Success</ErrorMsg>

<ModelInfo version="1.2">
<Models>
<Model id="dataset_1" name="dataset_1" iotype="input">
    <Field id="name" datatype="STRING" datasize="50"  label="Name"  fieldType="FreeText"  description=""  required="true" />
    <Field id="company" datatype="STRING" datasize="50"  label="Company"  fieldType="FreeText"  description=""  required="true" />
</Model>
</Models>
</ModelInfo>	
</Root>
<%
	} else {
%>
<Root>
  <ErrorCode>-1</ErrorCode>
  <ErrorMsg>Error</ErrorMsg>
</Root>
<%
	}
%>  