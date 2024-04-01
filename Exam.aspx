<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.master" AutoEventWireup="true" CodeFile="Exam.aspx.cs" Inherits="Exam" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <table class="style1" style="height: 422px; width: 99%">
        <tr>
            <td class="style2">
                <br />
            </td>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="LblTimerCount" runat="server" Text="0" Font-Size="Larger" ForeColor="Red"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="lblQuestionNo" runat="server" Text="Question No:"></asp:Label>

                <br />
            </td>
            <td>
                <asp:Label ID="lblNoOfQuestion" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="lblQuestion" runat="server" Text="Question:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtQuestion" runat="server" Height="24px" Width="361px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="style2">&nbsp;</td>
            <td>
                <asp:HiddenField ID="hfAns" runat="server" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="style2">&nbsp;</td>
            <td>
                <asp:RadioButtonList ID="rbtnAns" runat="server">
                    
                </asp:RadioButtonList>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Button ID="btnSkip" runat="server" Text="Skip" Width="100px" />
                </td>
            <td>
                <asp:Button ID="btnNext" runat="server" Text="Next"  Width="100px" OnClick="btnNext_Click" />
            </td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>

        <tr>
            <td class="style2">&nbsp;</td>
            <td>
                <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>

    </table> 
   
</asp:Content>

