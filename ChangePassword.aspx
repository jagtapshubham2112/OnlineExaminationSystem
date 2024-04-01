<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.master" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="ChangePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <table style="width:100%;">
        <tr>
            <td>
                <asp:Label ID="LblChangepassword" runat="server" Text="Changepassword"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LblOldpassword" runat="server" Text="Oldpassword:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TxtOldpassword" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtOldPassword" ErrorMessage="Please Enter OldPassword" ForeColor="Red" ValidationGroup="VGrpSave"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LblNewpassword" runat="server" Text="Newpassword:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TxtNewPassword" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RfvNewPassword" runat="server" ControlToValidate="TxtNewPassword" ErrorMessage="Please Enter New Password" ForeColor="Red" ValidationGroup="VGrpSubmit"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LblConfirmpassword" runat="server" Text="Confirmpassword:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TxtConfirmPassword" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RevConfirmPassword" runat="server" ControlToValidate="TxtConfirmPassword" ErrorMessage="Check Password" ForeColor="Red"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LblMessage" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="BtnSave" runat="server" Text="Save" OnClick="BtnSave_Click" />
                <asp:Button ID="BtnReset" runat="server" Text="Reset" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

