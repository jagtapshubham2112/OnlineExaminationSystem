<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="AddQuestion.aspx.cs" Inherits="Admin_AddQuestion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="LblAddQuestion" runat="server" Text="AddQuestion"></asp:Label>
            </td>
            <td>&nbsp;</td>
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
                <asp:Label ID="LblSubject" runat="server" Text="Subject"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DdlSubject" runat="server">
                    <asp:ListItem Value="1">Java</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2"></td>
            <td class="auto-style2">
                <asp:Label ID="LblQuestion0" runat="server" Text="Question"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="TxtQuestion" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style2">
            <asp:RequiredFieldValidator ID="RfvQuestion" runat="server" ErrorMessage="Please Enter Question" ValidationGroup="VgrpSubmit" ControlToValidate="TxtQuestion" ForeColor="Red"></asp:RequiredFieldValidator>
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
                <asp:Label ID="LblOption1" runat="server" Text="Option1"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TxtOption1" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
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
                <asp:Label ID="LblOption2" runat="server" Text="Option2"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TxtOption2" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
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
                <asp:Label ID="LblOption3" runat="server" Text="Option3"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TxtOption3" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
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
                <asp:Label ID="LblOption4" runat="server" Text="Option4"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TxtOption4" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3"></td>
            <td class="auto-style3"></td>
            <td class="auto-style3"></td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style3">
                <asp:Label ID="LblAnswer" runat="server" Text="Answer"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="TxtAnswer" runat="server" TextMode="Number"></asp:TextBox>
            </td>
            <td class="auto-style3">
                <asp:RangeValidator ID="RRvAnswer" runat="server" ControlToValidate="TxtAnswer" ErrorMessage="Select Option 1, 2, 3 Or 4 Only " ForeColor="Red" MaximumValue="4" MinimumValue="1"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style3">
                <asp:Button ID="BtnSubmit" runat="server" Text="Submit" OnClick="BtnSubmit_Click" ValidationGroup="VgrpSubmit"  />
            </td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style3">
                <asp:Button ID="BtnCancel" runat="server" Text="Cancel" OnClick="BtnCancel_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style3">
                <asp:Label ID="LblMessage" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

