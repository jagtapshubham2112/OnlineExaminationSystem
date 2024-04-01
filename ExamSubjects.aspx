<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.master" AutoEventWireup="true" CodeFile="ExamSubjects.aspx.cs" Inherits="ExamSubjects" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1> <asp:Label ID="LblMessage" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="Red"></asp:Label></h1>
    <div class="Exam Subjects">
        <h1> Examination Subjects</h1>

        <table style="width:100%; border:solid 1px #0ff; background-color:lightcyan;">
            <tr>
                <td>
                    <asp:DataList ID="DtLstSubject" runat="server" RepeatColumns="4" OnItemCommand="DtLstSubject_ItemCommand">
                        <ItemTemplate>
                            <table style="width:100%; margin: auto 0; text-align:center;">
                                <tr>
                                    <td>
                                        <asp:Label ID="LblSubjectName" runat="server" Text ='<%# Eval("Subject_Name") %>' Font-Size="Large" ForeColor="Blue"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:ImageButton ID="ImgBtnSubjectImage" CommandArgument="SelectSubject" runat="server" Height="75px" Width="215px"  ImageUrl ='<%# Eval("Subject_Image")%>' AlternateText='<%# Eval("Subject_Id")%>' BorderColor="#FF9900" BorderStyle="Solid" BorderWidth="1px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td> 
                                        <asp:Label ID="LblSubjectTitle" runat="server" Text = '<%# Eval("Subject_Title") %>' Font-Size="X-Large" ForeColor="#006600"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:DataList>
                </td>
            </tr>
        </table>
    </div>
    <div class="col-md-12">
        <div class="card">
            <div class="card-header">
                <asp:Panel ID="panel_questshow_warning" runat="server" Visible="false">
                    <br />
                    <div class="alert alert-danger text-center">
                        <asp:Label ID="lbl_questshowwarning" runat="server" />
                    </div>
                </asp:Panel>
            </div>
        </div>
    </div>
</asp:Content>

