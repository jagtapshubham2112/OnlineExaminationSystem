<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.master" AutoEventWireup="true" CodeFile="ForgotPassword.aspx.cs" Inherits="ForgotPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <table style="width:100%;">
        <tr>
            <td>
                <asp:Label ID="LblUserForgotpassword" runat="server" Text="UserForgotpassword"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="LblUserName" runat="server" Text="UserName:"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="TxtUserName" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td class="auto-style1">
                <asp:RequiredFieldValidator ID="RfvUserName" runat="server" ControlToValidate="TxtUserName" ErrorMessage="Please Enter UseName" ForeColor="Red" ValidationGroup="VGrpSubmit"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LblMobile" runat="server" Text="Mobile:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TxtMobile" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RfvMobile" runat="server" ControlToValidate="TxtMobile" ErrorMessage="Please Enter Mobile Number" ForeColor="Red" ValidationGroup="VGrpSubmit"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LblEmail" runat="server" Text="Email:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TxtEmail" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RfvEmail" runat="server" ControlToValidate="TxtEmail" ErrorMessage="Please Enter Email" ForeColor="Red" ValidationGroup="VGrpSubmit"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RevEmail" runat="server" ControlToValidate="TxtEmail" ErrorMessage="Invalid Email" ForeColor="Red" ValidationGroup="VGrpSubmit" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:LinkButton ID="LnkBtnSendOTP" runat="server" OnClick="LnkBtnSendOTP_Click">SendOTP</asp:LinkButton>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="LblOTP" runat="server" Text="OTP:"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="TxtOTP" runat="server" Width="200px" ></asp:TextBox>
                <asp:Label ID="LblOTPValue" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:RequiredFieldValidator ID="RfvOTP" runat="server" ControlToValidate="TxtOTP" ErrorMessage="Please Enter OTP" ForeColor="Red" ValidationGroup="VGrpSubmit"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LblMessage" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td>
                <asp:Button ID="BtnSubmit" runat="server" Text="Submit" OnClick="BtnSubmit_Click" ValidationGroup="VGrpSubmit" Height="25px" />
                <asp:Button ID="BtnCancel" runat="server" Text="Cancel" OnClick="BtnCancel_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                &nbsp;</td>
            <td class="auto-style1">
            </td>
            <td class="auto-style1"></td>
        </tr>
        </table>
    <asp:Panel ID="PnlChange" runat="server" visible="false">
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
                    <asp:Label ID="LblNewpassword" runat="server" Text="Newpassword:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtPassword" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="LblConfirmpassword" runat="server" Text="Confirmpassword:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtConfirmpassword" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="LblMessage2" runat="server" ForeColor="Red"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="BtnSave" runat="server" Text="Save" OnClick="BtnSave_Click" />
                    <asp:Button ID="BtnReset" runat="server" Text="Reset" OnClick="BtnReset_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

