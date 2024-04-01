<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="AddCity.aspx.cs" Inherits="Admin_AddCity" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 32px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="LblCityForm" runat="server" Text="City Form"></asp:Label>
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
                <asp:Label ID="LblCityName" runat="server" Text="City Name"></asp:Label>
            </td>
            <td class="auto-style2"></td>
            <td class="auto-style2">
                <asp:TextBox ID="TxtCityName" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style2">
            <asp:RequiredFieldValidator ID="RfvCityName" runat="server" ErrorMessage="Please Enter City Name" ValidationGroup="VgrpSubmit" ControlToValidate="TxtCityName" ForeColor="Red" EnableTheming="True"></asp:RequiredFieldValidator>
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
                <asp:Label ID="LblTalukaName" runat="server" Text="Taluka Name"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>
                <asp:DropDownList ID="DdlTalukaName" runat="server">
                </asp:DropDownList>
            </td>
            <td>
            <asp:RequiredFieldValidator ID="RfvTalukaName" runat="server" ControlToValidate="DdlTalukaName" ErrorMessage="Please Choose Taluka Name" ForeColor="Red" InitialValue="0" ValidationGroup="VgrpSubmit" EnableTheming="True"></asp:RequiredFieldValidator>
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
                <asp:Label ID="LblPincode" runat="server" Text="Pincode"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>
                <asp:TextBox ID="TxtPincode" runat="server"></asp:TextBox>
            </td>
            <td>
            <asp:RequiredFieldValidator ID="RfvPincodeName0" runat="server" ErrorMessage="Please Enter Pincode Name" ValidationGroup="VgrpSubmit" ControlToValidate="TxtPincode" ForeColor="Red" EnableTheming="True"></asp:RequiredFieldValidator>
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
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

