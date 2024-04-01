<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.master" AutoEventWireup="true" CodeFile="StudentRegistration.aspx.cs" Inherits="StudentRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%; margin:auto;">
        <tr>
            <td class="auto-style1">
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
            <td class="auto-style20">
                &nbsp;</td>
            <td class="auto-style24">
                &nbsp;</td>
            <td class="auto-style24">
                <asp:Label ID="LblStudentRegistration" runat="server" Text="Student Registration"></asp:Label>
            </td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style1"></td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1"></td>
            <td class="auto-style20"></td>
            <td class="auto-style24">
                <asp:Label ID="LblPrnNo" runat="server" Text="PRN No."></asp:Label>
            </td>
            <td class="auto-style24">
                <asp:TextBox ID="TxtPrnNo" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style24">
            <asp:RequiredFieldValidator ID="RfvPrnNo" runat="server" ErrorMessage="Please Enter PRN No." ValidationGroup="VgrpSubmit" ControlToValidate="TxtPrnNo" ForeColor="Red" EnableTheming="True"></asp:RequiredFieldValidator>
                <br />
            </td>
            <td class="auto-style1">
                &nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
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
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
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
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style30"></td>
            <td class="auto-style28"></td>
            <td class="auto-style29">
                <asp:Label ID="LblGender" runat="server" Text="Gender"></asp:Label>
            </td>
            <td class="auto-style29">
                <asp:RadioButton ID="RbtnMale" runat="server" Text="Male" />
                <asp:RadioButton ID="RbtnFemale" runat="server" Text="Female" />
            </td>
            <td class="auto-style29"></td>
            <td class="auto-style30"></td>
            <td class="auto-style30">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style25">
                <asp:Label ID="LblPassword" runat="server" Text="Password"></asp:Label>
            </td>
            <td class="auto-style25">
                <asp:TextBox ID="TxtPassword" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td class="auto-style25">
            <asp:RequiredFieldValidator ID="RfvPassword" runat="server" ErrorMessage="Please Enter Password" ValidationGroup="VgrpSubmit" ControlToValidate="TxtPassword" ForeColor="Red" EnableTheming="True"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style25">
                <asp:Label ID="LblConfirmPassword" runat="server" Text="Confirm Password"></asp:Label>
            </td>
            <td class="auto-style25">
                <asp:TextBox ID="TxtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td class="auto-style25">
            <asp:RequiredFieldValidator ID="RfvConfirmPassword" runat="server" ErrorMessage="Please Enter Confirm Password" ValidationGroup="VgrpSubmit" ControlToValidate="TxtConfirmPassword" ForeColor="Red" EnableTheming="True"></asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:CompareValidator ID="CvConfirmPassword" runat="server" ControlToCompare="TxtPassword" ControlToValidate="TxtConfirmPassword" ErrorMessage="MissMatch Password" ForeColor="Red" ValidationGroup="VgrpSubmit"></asp:CompareValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
      
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
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
            <td>&nbsp;</td>
        </tr>
       
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style25">
                <asp:Label ID="LblCountry" runat="server" Text="Country"></asp:Label>
            </td>
            <td class="auto-style25">
                <asp:UpdatePanel ID="UPnDdlCountry" runat="server">
                <ContentTemplate>
                    <asp:DropDownList ID="DdlCountry" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DdlCountry_SelectedIndexChanged">
                    </asp:DropDownList>
                </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="DdlCountry" />
                    </Triggers>
                </asp:UpdatePanel>
            </td>
            <td class="auto-style25">
            <asp:RequiredFieldValidator ID="RfvCountryName0" runat="server" ControlToValidate="DdlCountry" ErrorMessage="Please Choose Country Name" ForeColor="Red" InitialValue="0" ValidationGroup="VgrpSubmit" EnableTheming="True"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
     
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style25">
                <asp:Label ID="LblState" runat="server" Text="State"></asp:Label>
            </td>
            <td class="auto-style25">
                <asp:UpdatePanel ID="UPnDdlState" runat="server">
                <ContentTemplate>
                <asp:DropDownList ID="DdlState" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DdlState_SelectedIndexChanged">
                </asp:DropDownList>
                    </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="DdlState" />
                    </Triggers>
                </asp:UpdatePanel>
            </td>
            <td class="auto-style25">
            <asp:RequiredFieldValidator ID="RfvStateName" runat="server" ControlToValidate="DdlState" ErrorMessage="Please Choose State Name" ForeColor="Red" InitialValue="0" ValidationGroup="VgrpSubmit" EnableTheming="True"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
      
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style25">
                <asp:Label ID="LblDistrict" runat="server" Text="District"></asp:Label>
            </td>
            <td class="auto-style25">
                <asp:UpdatePanel ID="UPnDdlDistrict" runat="server">
                <ContentTemplate>
                <asp:DropDownList ID="DdlDistrict" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DdlDistrict_SelectedIndexChanged">
                </asp:DropDownList>
                    </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="DdlDistrict" />
                    </Triggers>
                </asp:UpdatePanel>
            </td>
            <td class="auto-style25">
            <asp:RequiredFieldValidator ID="RfvDistrictName" runat="server" ControlToValidate="DdlDistrict" ErrorMessage="Please Choose District Name" ForeColor="Red" InitialValue="0" ValidationGroup="VgrpSubmit" EnableTheming="True"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
       
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style25">
                <asp:Label ID="LblTaluka" runat="server" Text="Taluka"></asp:Label>
            </td>
            <td class="auto-style25">
                <asp:UpdatePanel ID="UPnDdlTaluka" runat="server">
                <ContentTemplate>
                <asp:DropDownList ID="DdlTaluka" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DdlTaluka_SelectedIndexChanged">
                </asp:DropDownList>
                    </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="DdlTaluka" />
                    </Triggers>
                </asp:UpdatePanel>
            </td>
            <td class="auto-style25">
            <asp:RequiredFieldValidator ID="RfvTalukaName0" runat="server" ControlToValidate="DdlTaluka" ErrorMessage="Please Choose Taluka Name" ForeColor="Red" InitialValue="0" ValidationGroup="VgrpSubmit" EnableTheming="True"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
      
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
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
            <td>&nbsp;</td>
        </tr>
      
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
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
            <td>&nbsp;</td>
        </tr>
       
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
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
            <td>&nbsp;</td>
        </tr>
       
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
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
            <td>&nbsp;</td>
        </tr>
      
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style25">
                <asp:Label ID="LblClass" runat="server" Text="Class"></asp:Label>
            </td>
            <td class="auto-style25">
                <asp:TextBox ID="TxtClass" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style25">
            <asp:RequiredFieldValidator ID="RfvClass" runat="server" ErrorMessage="Please Enter Class" ValidationGroup="VgrpSubmit" ControlToValidate="TxtClass" ForeColor="Red" EnableTheming="True"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
     
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style25">
                <asp:Label ID="LblYear" runat="server" Text="Year"></asp:Label>
            </td>
            <td class="auto-style25">
                <asp:TextBox ID="TxtYear" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style25">
            <asp:RequiredFieldValidator ID="RfvYear" runat="server" ErrorMessage="Please Enter Year" ValidationGroup="VgrpSubmit" ControlToValidate="TxtYear" ForeColor="Red" EnableTheming="True"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
       
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style25">
                <asp:Label ID="LblSemister" runat="server" Text="Semister"></asp:Label>
            </td>
            <td class="auto-style25">
                <asp:TextBox ID="TxtSemister" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style25">
            <asp:RequiredFieldValidator ID="RfvSemister" runat="server" ErrorMessage="Please Enter Semister" ValidationGroup="VgrpSubmit" ControlToValidate="TxtSemister" ForeColor="Red" EnableTheming="True"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
       
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style23"></td>
            <td class="auto-style27">
                <asp:Label ID="LblAcademicYear" runat="server" Text="AcademicYear"></asp:Label>
            </td>
            <td class="auto-style27">
                <asp:TextBox ID="TxtAcademicYear" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style27">
            <asp:RequiredFieldValidator ID="RfvAcademicYear" runat="server" ErrorMessage="Please Enter Academic Year" ValidationGroup="VgrpSubmit" ControlToValidate="TxtAcademicYear" ForeColor="Red" EnableTheming="True"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style7"></td>
            <td class="auto-style7">&nbsp;</td>
        </tr>
        
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style25">
                <asp:Label ID="LblPhoto" runat="server" Text="Photo"></asp:Label>
            </td>
            <td class="auto-style25">
                <asp:FileUpload ID="FuPhoto" runat="server" />
            </td>
            <td class="auto-style25">
            <asp:RequiredFieldValidator ID="RfvPhoto" runat="server" ErrorMessage="Please Upload Photo" ValidationGroup="VgrpSubmit" ControlToValidate="FuPhoto" ForeColor="Red" EnableTheming="True"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
       
        <tr>
            <td>&nbsp;</td>
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
            <td>&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style25">
                &nbsp;</td>
            <td class="auto-style25">
                <asp:Button ID="BtnCancel" runat="server" Text="Cancel" OnClick="BtnCancel_Click" />
                <asp:Button ID="BtnSubmit" runat="server" Text="Submit" OnClick="BtnSubmit_Click" ValidationGroup="VgrpSubmit" />
            </td>
            <td class="auto-style25">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

