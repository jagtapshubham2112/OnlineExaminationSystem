<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="LblContactUs" runat="server" Text="Contact Us" Font-Bold="True" Font-Size="Large"></asp:Label>
    <table style="width: 100%;">
        <tr>
            <td>


                &nbsp;</td>

            <td>

                <table style="width: 100%;">
                    <tr>
                        <td>
                            <asp:Label ID="LblContactForm" runat="server" Text="Contact Form " Font-Bold="True" Font-Size="Medium"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="LblFullName" runat="server" Text="Full Name :" Font-Size="Medium"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TxtFullName" runat="server" Width="200px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RfvFullName" runat="server" ControlToValidate="TxtFullName" ErrorMessage="Pls Enter Your Full Name " ForeColor="Red" ValidationGroup="VgrpSubmit"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="LblEmail1" runat="server" Text="Email :" Font-Size="Medium"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TxtEmail1" runat="server" Width="200px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RfvEmail" runat="server" ControlToValidate="TxtEmail1" ErrorMessage="Pls Enter Your Email" ForeColor="Red" ValidationGroup="VgrpSubmit"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            <asp:Label ID="LblMessage" runat="server" Text="Message :" Font-Size="Medium"></asp:Label>
                        </td>
                        <td class="auto-style1">
                            <asp:TextBox ID="TxtMessage" runat="server" Height="141px" TextMode="MultiLine" Width="205px"></asp:TextBox>
                        </td>
                        <td class="auto-style1">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:Label ID="LblMessage1" runat="server" ForeColor="Red" Font-Size="Medium"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Button ID="BtnCancel" runat="server" Text="Cancel" OnClick="BtnCancel_Click" Width="100px" />
                            <asp:Button ID="BtnSubmit" runat="server" Text="Submit" OnClick="BtnCancel_Click" Width="100px" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </td>


        </tr>
    </table>
</asp:Content>

