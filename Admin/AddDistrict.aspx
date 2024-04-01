<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="AddDistrict.aspx.cs" Inherits="Admin_AddDitrict" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 33px;
        }
        .auto-style3 {
            height: 29px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="LblDistrictForm" runat="server" Text="District Form"></asp:Label>
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
                <asp:Label ID="LblDistrictName" runat="server" Text="District Name"></asp:Label>
            </td>
            <td class="auto-style2"></td>
            <td class="auto-style2">
                <asp:TextBox ID="TxtDistrictName" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style2">
            <asp:RequiredFieldValidator ID="RfvDistrictName" runat="server" ErrorMessage="Please Enter District Name" ValidationGroup="VgrpSubmit" ControlToValidate="TxtDistrictName" ForeColor="Red"></asp:RequiredFieldValidator>
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
                <asp:Label ID="LblStateName" runat="server" Text="State Name"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>
                <asp:DropDownList ID="DdlStateName" runat="server">
                </asp:DropDownList>
            </td>
            <td>
            <asp:RequiredFieldValidator ID="RfvStateName" runat="server" ControlToValidate="DdlStateName" ErrorMessage="Please Choose State Name" ForeColor="Red" InitialValue="0" ValidationGroup="VgrpSubmit"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3"></td>
            <td class="auto-style3">
                <asp:Label ID="LblMessage" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td class="auto-style3"></td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="BtnSubmit" runat="server" Text="Submit" OnClick="BtnSubmit_Click" ValidationGroup="VgrpSubmit"  />
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

