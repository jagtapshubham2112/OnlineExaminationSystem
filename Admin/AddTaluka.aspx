<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="AddTaluka.aspx.cs" Inherits="Admin_AddTaluka" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 33px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="LblTalukaForm" runat="server" Text="Taluka Form"></asp:Label>
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
                <asp:Label ID="LblTalukaName" runat="server" Text="Taluka Name"></asp:Label>
            </td>
            <td class="auto-style2"></td>
            <td class="auto-style2">
                <asp:TextBox ID="TxtTalukaName" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style2">
            <asp:RequiredFieldValidator ID="RfvTalukaName" runat="server" ErrorMessage="Please Enter Taluka Name" ValidationGroup="VgrpSubmit" ControlToValidate="TxtTalukaName" ForeColor="Red"></asp:RequiredFieldValidator>
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
                <asp:Label ID="LblDistrictName" runat="server" Text="District Name"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>
                <asp:DropDownList ID="DdlDistrictName" runat="server">
                </asp:DropDownList>
            </td>
            <td>
            <asp:RequiredFieldValidator ID="RfvDistrictName" runat="server" ControlToValidate="DdlDistrictName" ErrorMessage="Please Choose District Name" ForeColor="Red" InitialValue="0" ValidationGroup="VgrpSubmit"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
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
                <asp:Button ID="BtnCancel" runat="server" Text="Cancel" OnClick="BtnCancel_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

