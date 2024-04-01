<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.master" AutoEventWireup="true" CodeFile="ViewProfile.aspx.cs" Inherits="ViewProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td class="auto-style24">
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">
                <asp:Label ID="LblViewProfile" runat="server" Text="View Profile"></asp:Label>
            </td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">
                <asp:Image ID="ImgStudentPhoto" runat="server" Height="196px" Width="200px" />
                <asp:Label ID="LblPhoto" runat="server"></asp:Label>
            </td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">
                <asp:LinkButton ID="LnkBtnChangePhoto" runat="server">Change Photo</asp:LinkButton>
            </td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style25">
                <asp:FileUpload ID="FuPhoto" runat="server" />
            </td>
            <td class="auto-style25">
                <asp:RequiredFieldValidator ID="RfvPhoto" runat="server" ErrorMessage="Please Upload Photo" ValidationGroup="VgrpSubmit" ControlToValidate="FuPhoto" ForeColor="Red" EnableTheming="True"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style25">
                <asp:Label ID="LblMessage1" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style24">
                <asp:Label ID="LblPrnNo" runat="server" Text="PRN No."></asp:Label>
            </td>
            <td class="auto-style24">
                <asp:TextBox ID="TxtPrnNo" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style24">
                <asp:RequiredFieldValidator ID="RfvPrnNo" runat="server" ErrorMessage="Please Enter PRN No." ValidationGroup="VgrpSubmit" ControlToValidate="TxtPrnNo" ForeColor="Red" EnableTheming="True"></asp:RequiredFieldValidator>
                <br /></td>
            <td class="auto-style1">
                <asp:RegularExpressionValidator ID="RevPrnNo" runat="server" ControlToValidate="TxtPrnNo" ErrorMessage="Invalid PRN No." ForeColor="Red" ValidationExpression="/d{16 }" ValidationGroup="VgrpSubmit"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style25">
                <asp:Label ID="LblFullName" runat="server" Text="Full Name"></asp:Label>
            </td>
            <td class="auto-style25">
                <asp:TextBox ID="TxtFullName" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style25">
                <asp:RequiredFieldValidator ID="RfvFullName" runat="server" ErrorMessage="Please Enter Full Name" ValidationGroup="VgrpSubmit" ControlToValidate="TxtFullName" ForeColor="Red" EnableTheming="True"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style25">
                <asp:Label ID="LblAddress" runat="server" Text="Address"></asp:Label>
            </td>
            <td class="auto-style25">
                <asp:TextBox ID="TxtAddress" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style25">
                <asp:RequiredFieldValidator ID="RfvAddress" runat="server" ErrorMessage="Please Enter Address" ValidationGroup="VgrpSubmit" ControlToValidate="TxtAddress" ForeColor="Red" EnableTheming="True"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style25">
                <asp:Label ID="LblCity" runat="server" Text="City"></asp:Label>
            </td>
            <td class="auto-style25">
                <asp:UpdatePanel ID="UPnDdlCity" runat="server">
                    <ContentTemplate>
                        <asp:DropDownList ID="DdlCity" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DdlCity_SelectedIndexChanged">
                        </asp:DropDownList>
                    </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="DdlCity" />
                    </Triggers>
                </asp:UpdatePanel>
            </td>
            <td class="auto-style25">
                <asp:RequiredFieldValidator ID="RfvCityName" runat="server" ControlToValidate="DdlCity" ErrorMessage="Please Choose City Name" ForeColor="Red" InitialValue="0" ValidationGroup="VgrpSubmit" EnableTheming="True"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style25">
                <asp:Label ID="LblPincode" runat="server" Text="Pincode"></asp:Label>
            </td>
            <td class="auto-style25">
                <asp:UpdatePanel ID="UPnTxtPincode" runat="server">
                    <ContentTemplate>
                        <asp:TextBox ID="TxtPincode" runat="server"></asp:TextBox>
                    </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="TxtPincode" />
                    </Triggers>
                </asp:UpdatePanel>
            </td>
            <td class="auto-style25">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style25">
                <asp:Label ID="LblMobile" runat="server" Text="Mobile No."></asp:Label>
            </td>
            <td class="auto-style25">
                <asp:TextBox ID="TxtMobile" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style25">
                <asp:RequiredFieldValidator ID="RfvMobile" runat="server" ErrorMessage="Please Enter Mobile No." ValidationGroup="VgrpSubmit" ControlToValidate="TxtMobile" ForeColor="Red" EnableTheming="True"></asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RevMobile" runat="server" ControlToValidate="TxtMobile" ErrorMessage="Invalid Mobile No." ForeColor="Red" ValidationExpression="/d{10}" ValidationGroup="VgrpSubmit"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style25">
                <asp:Label ID="LblEmail" runat="server" Text="Email"></asp:Label>
            </td>
            <td class="auto-style25">
                <asp:TextBox ID="TxtEmail" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style25">
                <asp:RequiredFieldValidator ID="RfvEmail" runat="server" ErrorMessage="Please Enter Email Address" ValidationGroup="VgrpSubmit" ControlToValidate="TxtEmail" ForeColor="Red" EnableTheming="True"></asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RevEmail" runat="server" ControlToValidate="TxtEmail" ErrorMessage="Invalid Email Address" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="VgrpSubmit"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style25">
                <asp:Label ID="LblBirthdate" runat="server" Text="Birthdate"></asp:Label>
            </td>
            <td class="auto-style25">
                <asp:TextBox ID="TxtBirthdate" runat="server"></asp:TextBox>
                <asp:ImageButton ID="ImgbtnCalender" runat="server" ImageUrl="~/Images/cal-icon2.png" OnClick="ImgbtnCalender_Click" />
                <asp:Calendar ID="CalBirthdate" runat="server" OnSelectionChanged="CalBirthdate_SelectionChanged" Visible="False"></asp:Calendar>
            </td>
            <td class="auto-style25">
                <asp:RequiredFieldValidator ID="RfvBirthdate" runat="server" ErrorMessage="Please Enter Birthdate" ValidationGroup="VgrpSubmit" ControlToValidate="TxtBirthdate" ForeColor="Red" EnableTheming="True"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style38"></td>
            <td class="auto-style38"></td>
            <td class="auto-style38"></td>
            <td class="auto-style39"></td>
        </tr>
        <tr>
            <td class="auto-style25">&nbsp;</td>
            <td>
                <asp:Label ID="LblMessage" runat="server" ForeColor="Red"></asp:Label>
                <asp:LinkButton ID="LnkBtnChangePass" runat="server" PostBackUrl="~/ChangePassword.aspx">Change Password</asp:LinkButton>
            </td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style25">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style25">
                <asp:Button ID="BtnSubmit" runat="server" Text="Submit" OnClick="BtnSubmit_Click" ValidationGroup="VgrpSubmit" />
            </td>
            <td class="auto-style25">
                <asp:Button ID="BtnCancel" runat="server" Text="Cancel" OnClick="BtnCancel_Click" />
            </td>
            <td class="auto-style25">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

