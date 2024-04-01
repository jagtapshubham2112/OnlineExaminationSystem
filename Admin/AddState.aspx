<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="AddState.aspx.cs" Inherits="Admin_AddState" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 31px;
        }
        .auto-style2 {
            height: 33px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <table style="width:100%;">
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Label ID="LblStateForm" runat="server" Text="State Form"></asp:Label>
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
        <td class="auto-style2">
            <asp:Label ID="LblStateName" runat="server" Text="State Name"></asp:Label>
        </td>
        <td class="auto-style2"></td>
        <td class="auto-style2">
            <asp:TextBox ID="TxtStateName" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style2">
            <asp:RequiredFieldValidator ID="RfvStateName" runat="server" ErrorMessage="Please Enter State Name" ValidationGroup="VgrpSubmit" ControlToValidate="TxtStateName" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
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
            <asp:DropDownList ID="DdlCountryName" runat="server">
            </asp:DropDownList>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RfvCountryName" runat="server" ControlToValidate="DdlCountryName" ErrorMessage="Please Choose Country Name" ForeColor="Red" InitialValue="0" ValidationGroup="VgrpSubmit"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style1"></td>
        <td class="auto-style1"></td>
        <td class="auto-style1"></td>
        <td class="auto-style1">&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Label ID="LblMessage" runat="server" ForeColor="Red"></asp:Label>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2"></td>
        <td class="auto-style2"></td>
        <td class="auto-style2"></td>
        <td class="auto-style2">&nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:Button ID="BtnSubmit" runat="server" Text="Submit" OnClick="BtnSubmit_Click" ValidationGroup="VgrpSubmit" />
        </td>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="BtnCancel" runat="server" Text="Cancel" OnClick="BtnCancel_Click" />
        </td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

