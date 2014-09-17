﻿<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="EmployeeDirectory._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h2>Search for Employees here</h2>
            </hgroup>
            <p>
                Enter what you are looking for in the fields, then click "Search".
            </p>
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h3></h3>
    <ol class="round">
        <li class="one">
            <h5></h5>
            <table>
                <tr>
                    <td>
                        <asp:Label runat="server" ID="Label1">First Name</asp:Label><br />
                        <asp:TextBox runat="server" ID="txtFirst" ></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label runat="server" ID="Label2">Last Name</asp:Label><br />
                        <asp:TextBox runat="server" ID="txtLast"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server" ID="Label3">Employee ID</asp:Label><br />
                        <asp:TextBox runat="server" ID="txtEmpId" TextMode="Number" ></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label runat="server" ID="Label4">Email</asp:Label><br />
                        <asp:TextBox runat="server" ID="txtEmail" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label runat="server" ID="Label5">Location:</asp:Label>
                        <asp:DropDownList runat="server" ID="ddlLocation"></asp:DropDownList>
                        <asp:Label runat="server" ID="Label6">Role:</asp:Label>
                        <asp:DropDownList runat="server" ID="ddlRole"></asp:DropDownList>
                        <asp:Label runat="server" ID="Label7">Status:</asp:Label>
                        <asp:DropDownList runat="server" ID="ddlStatus"></asp:DropDownList>
                    </td>
                </tr>
            </table>
            <asp:Button ID="btnSearch" runat="server" OnClick="btnSearch_Click" Text="Search" />
        </li>
        <li >
            <h5>Results</h5>
            
            <asp:UpdatePanel ID="pnlGridPanel" runat="server">
                <ContentTemplate>
                    <div style="overflow: auto; width: 100%">
                    <asp:GridView ID="gvEmployee" runat="server" AutoGenerateColumns="false" AutoGenerateEditButton="true" 
                        AutoGenerateDeleteButton="false" AutoGenerateSelectButton="false" AllowPaging="true"
                        OnPageIndexChanging ="indexChanged" OnRowCommand="rowCommand" OnRowEditing="rowEdit" 
                        OnRowCancelingEdit="rowEditCancel" OnRowUpdating="rowUpdating" OnRowDataBound="gridBinding"
                        RowStyle-Wrap="false" CellSpacing="5" CellPadding="5" HeaderStyle-Wrap="false">
                        <Columns>                                                                         
                            <asp:boundfield datafield="Employee_ID" readonly="true" headertext="Employee ID" /> 
                            <asp:boundfield datafield="FirstName" readonly="false" headertext="First Name"/>                                  
                            <asp:boundfield datafield="LastName" readonly="false" headertext="Last Name"/>                                    
                            <asp:boundfield datafield="email" readonly="false" headertext="Email"/>     
                            <asp:TemplateField HeaderText="Location">    
                                <ItemTemplate>                         
                                    <asp:DropDownList runat="server" ID="ddlTLocation"></asp:DropDownList>
                                </ItemTemplate>   
                            </asp:TemplateField>                            
                            <asp:TemplateField Visible=false>
                                <ItemTemplate>
                                    <asp:Label id="lblLocation" runat ="server" text='<%# Eval("Location")%>' ></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Role">    
                                <ItemTemplate>                         
                                    <asp:DropDownList runat="server" ID="ddlTRole"></asp:DropDownList>
                                </ItemTemplate>   
                            </asp:TemplateField>                            
                            <asp:TemplateField Visible=false>
                                <ItemTemplate>
                                    <asp:Label id="lblRole" runat ="server" text='<%# Eval("Role")%>' ></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>  
                            <asp:TemplateField HeaderText="Status">    
                                <ItemTemplate>                         
                                    <asp:DropDownList runat="server" ID="ddlTStatus"></asp:DropDownList>
                                </ItemTemplate>   
                            </asp:TemplateField>                           
                            <asp:TemplateField Visible=false>
                                <ItemTemplate>
                                    <asp:Label id="lblStatus" runat ="server" text='<%# Eval("Status")%>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>   
                        </Columns>
                    </asp:GridView>
                        </div>
                </ContentTemplate>
            </asp:UpdatePanel>
        </li>
    </ol>
</asp:Content>
