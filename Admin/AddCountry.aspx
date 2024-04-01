<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="AddCountry.aspx.cs" Inherits="Admin_AddCountry" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <style type="text/css">
        .auto-style1 {
            height: 29px;
        }
    </style>
    
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="Width:58%; margin:0 auto;">
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Label ID="LblCountryForm" runat="server" Text="Country Form"></asp:Label>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="LblCountryName" runat="server" Text="Country Name"></asp:Label>
        </td>
        <td>&nbsp;</td>
        <td>
            <asp:TextBox ID="TxtCountryName" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RfvCountryName" runat="server" ControlToValidate="TxtCountryName" ErrorMessage="Please Enter Country Name" ForeColor="Red" ValidationGroup="VgrpSubmit"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style1"></td>
        <td class="auto-style1"></td>
        <td class="auto-style1"></td>
        <td class="auto-style1"></td>
    </tr>
    <tr>
        <td class="auto-style1"></td>
        <td class="auto-style1">
            <asp:Label ID="LblMessage" runat="server" ForeColor="Red"></asp:Label>
        </td>
        <td class="auto-style1"></td>
        <td class="auto-style1">&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:Button ID="BtnSubmit" runat="server" Text="Submit" OnClick="BtnSubmit_Click" ValidationGroup="VgrpSubmit" />
        </td>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="BtnCancel" runat="server" Text="Cancel" OnClick="BtnCancel_Click1" />
        </td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

