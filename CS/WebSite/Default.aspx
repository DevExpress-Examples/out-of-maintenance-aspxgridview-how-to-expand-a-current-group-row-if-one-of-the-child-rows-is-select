<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ExpandIfSelected._Default" %>

<%@ Register assembly="DevExpress.Web.ASPxGridView.v9.3, Version=9.3.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxEditors.v9.3, Version=9.3.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <dx:aspxgridview ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="AccessDataSource1" KeyFieldName="ProductID" 
        ondatabound="ASPxGridView1_DataBound">
        <columns>
            <dx:gridviewcommandcolumn ShowSelectCheckbox="True" VisibleIndex="0">
            </dx:gridviewcommandcolumn>
            <dx:gridviewdatatextcolumn FieldName="ProductID" ReadOnly="True" 
                VisibleIndex="1">
                <editformsettings Visible="False" />
            </dx:gridviewdatatextcolumn>
            <dx:gridviewdatatextcolumn FieldName="ProductName" VisibleIndex="2">
            </dx:gridviewdatatextcolumn>
            <dx:gridviewdatatextcolumn FieldName="UnitPrice" VisibleIndex="3">
            </dx:gridviewdatatextcolumn>
            <dx:gridviewdatatextcolumn FieldName="CategoryID" VisibleIndex="4">
            </dx:gridviewdatatextcolumn>
        </columns>
        <settings ShowGroupPanel="True" />
    </dx:aspxgridview>
    <asp:accessdatasource ID="AccessDataSource1" runat="server" 
        DataFile="~/App_Data/nwind.mdb" 
        SelectCommand="SELECT [ProductID], [ProductName], [UnitPrice], [CategoryID] FROM [Products]">
    </asp:accessdatasource>
    </form>
</body>
</html>
