<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="AddSubjects.aspx.cs" Inherits="Admin_AddSubjects" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 69%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td class="auto-style2">
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
            <td class="auto-style20">
                &nbsp;</td>
            <td class="auto-style24">
                &nbsp;</td>
            <td class="auto-style24">
                <asp:Label ID="LblAddSubject" runat="server" Text="Add Subject"></asp:Label>
            </td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style1"></td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style25">
                <asp:Label ID="LblSubjectName" runat="server" Text="Subject Name"></asp:Label>
            </td>
            <td class="auto-style25">
                <asp:TextBox ID="TxtSubjectName" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style25">
            <asp:RequiredFieldValidator ID="RfvSubjectName" runat="server" ErrorMessage="Please Enter Full Name" ValidationGroup="VgrpSubmit" ControlToValidate="TxtSubjectName" ForeColor="Red" EnableTheming="True"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2"></td>
            <td class="auto-style28"></td>
            <td class="auto-style29"></td>
            <td class="auto-style29"></td>
            <td class="auto-style29"></td>
            <td class="auto-style30"></td>
            <td class="auto-style30">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style25">
                <asp:Label ID="LblSubjectType" runat="server" Text="Subject Type"></asp:Label>
            </td>
            <td class="auto-style25">
                <asp:TextBox ID="TxtSubjectType" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style25">
            <asp:RequiredFieldValidator ID="RfvSubjectType" runat="server" ErrorMessage="Please Enter Subject Type" ValidationGroup="VgrpSubmit" ControlToValidate="TxtSubjectType" ForeColor="Red" EnableTheming="True"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style25">
                <asp:Label ID="LblSubjectTitle" runat="server" Text="Subject Title"></asp:Label>
            </td>
            <td class="auto-style25">
                <asp:TextBox ID="TxtSubjectTitle" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style25">
            <asp:RequiredFieldValidator ID="RfvSubjectTitle" runat="server" ErrorMessage="Please Enter Subject Title" ValidationGroup="VgrpSubmit" ControlToValidate="TxtSubjectType" ForeColor="Red" EnableTheming="True"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style25">
                <asp:Label ID="LblSubjectMarks" runat="server" Text="Subject Marks"></asp:Label>
            </td>
            <td class="auto-style25">
                <asp:TextBox ID="TxtSubjectMarks" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style25">
            <asp:RequiredFieldValidator ID="RfvSubjectMarks" runat="server" ErrorMessage="Please Enter Subject Marks" ValidationGroup="VgrpSubmit" ControlToValidate="TxtSubjectType" ForeColor="Red" EnableTheming="True"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style25">
                <asp:Label ID="LblCourseID" runat="server" Text="Course ID"></asp:Label>
            </td>
            <td class="auto-style25">
                
                    <asp:DropDownList ID="DdlCourseID" runat="server" AutoPostBack="True" >
                        <asp:ListItem Value="1">BSc</asp:ListItem>
                    </asp:DropDownList>
                
            </td>
            <td class="auto-style25">
            <asp:RequiredFieldValidator ID="RfvCourseID" runat="server" ControlToValidate="DdlCourseID" ErrorMessage="Please Choose Course ID" ForeColor="Red" InitialValue="0" ValidationGroup="VgrpSubmit" EnableTheming="True"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style25">
                <asp:Label ID="LblSemister" runat="server" Text="Semister"></asp:Label>
            </td>
            <td class="auto-style25">
                
                <asp:DropDownList ID="DdlSemister" runat="server" AutoPostBack="True" >
                    <asp:ListItem Value="1">Sem-I</asp:ListItem>
                    <asp:ListItem Value="1">Sem -II</asp:ListItem>
                    <asp:ListItem Value="1">Sem -III</asp:ListItem>
                    <asp:ListItem Value="1">Sem -IV</asp:ListItem>
                    <asp:ListItem Value="1">Sem -V</asp:ListItem>
                    <asp:ListItem Value="1">Sem -VI</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                    
            </td>
            <td class="auto-style25">
            <asp:RequiredFieldValidator ID="RfvSemister" runat="server" ControlToValidate="DdlSemister" ErrorMessage="Please Choose Semister" ForeColor="Red" InitialValue="0" ValidationGroup="VgrpSubmit" EnableTheming="True"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style25">
                <asp:Label ID="LblSubjectPhoto" runat="server" Text="Subject Photo"></asp:Label>
            </td>
            <td class="auto-style25">
                <asp:FileUpload ID="FuSubjectPhoto" runat="server" />
            </td>
            <td class="auto-style25">
            <asp:RequiredFieldValidator ID="RfvSubjectPhoto" runat="server" ErrorMessage="Please Upload Subject Photo" ValidationGroup="VgrpSubmit" ControlToValidate="FuSubjectPhoto" ForeColor="Red" EnableTheming="True"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style25">
                &nbsp;</td>
            <td class="auto-style25">
                &nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style25">
                &nbsp;</td>
            <td>
                <asp:Label ID="LblMessage" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style25">
                <asp:Button ID="BtnSubmit" runat="server" Text="Submit" OnClick="BtnSubmit_Click" ValidationGroup="VgrpSubmit" />
            </td>
            <td class="auto-style25">
                <asp:Button ID="BtnCancel" runat="server" Text="Cancel" OnClick="BtnCancel_Click" />
            </td>
            <td class="auto-style25">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

