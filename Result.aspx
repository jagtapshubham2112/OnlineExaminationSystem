<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.master" AutoEventWireup="true" CodeFile="Result.aspx.cs" Inherits="Result" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="notice">
        <asp:DataList ID="DtLstStudent" runat="server" CellPadding="4" Font-Size="Medium" ForeColor="#333333" Width="900px">
            <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" BorderStyle="Dotted" BorderWidth="1px" />
            <ItemTemplate>
                <table style="width: 100%;" >


                    <tr>
                        <td style="width:30%;">PRN NO:
                        </td>
                        <td>
                            <asp:Label ID="LblStudentPRN" runat="server" Text='<%# Eval("Student_PRNNO")%>' ForeColor="Green"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>NAME:
                        </td>
                        <td>
                            <asp:Label ID="LblStudentName" runat="server" Text='<%# Eval("Student_FullName")%>' Font-Bold="true" ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>CLASS:
                        </td>
                        <td>
                            <asp:Label ID="LblStudentClass" runat="server" Text='<%# Eval("Student_Class")%>' Font-Bold="true" ForeColor="Blue"></asp:Label>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
            <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        </asp:DataList>
    </div>
    <div id="Div1">

        <asp:DataList ID="DtLstSubject" runat="server" CellPadding="4" Font-Size="Medium" ForeColor="#333333" Width="900px">
            <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" BorderStyle="Dotted" BorderWidth="1px" />
            <ItemTemplate>
                <table style="width: 100%;">
                    <tr>
                       <td style="width:30%;">
                           SUBECT NAME:
                        </td>
                        <td>
                            <asp:Label ID="LblSubjectName" runat="server" Text='<%# Eval("Subject_Name")%>' ForeColor="Green"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>SUBJECT TYPE:
                        </td>
                        <td>
                            <asp:Label ID="SubjectType" runat="server" Text='<%# Eval("Subject_Type")%>' Font-Bold="true" ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>SUBJECT TITLE:
                        </td>
                        <td>
                            <asp:Label ID="LblSubjectTitle" runat="server" Text='<%# Eval("Subject_Title")%>' Font-Bold="true" ForeColor="Blue"></asp:Label>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
            <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        </asp:DataList>

    </div>
    <div id="Div2">

        <asp:DataList ID="DtLstResult" runat="server" CellPadding="4" Font-Size="Medium" ForeColor="#333333" Width="900px">
            <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" BorderStyle="Dotted" BorderWidth="1px" />
            <ItemTemplate>
                <table style="width: 100%;">
                    <tr>
                         <td style="width:30%;">
                            EXAM DATE:
                        </td>
                        <td>
                            <asp:Label ID="LblExamDate" runat="server" Text='<%# Eval("Exam_Date")%>' Font-Bold="true" ForeColor="Blue"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>RIGHT ANSWERS:
                        </td>
                        <td>
                            <asp:Label ID="LblRightAns" runat="server" Text='<%# Eval("Right_Ans")%>' ForeColor="Green"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>WRONG ANSWERS:
                        </td>
                        <td>
                            <asp:Label ID="LblWrongAns" runat="server" Text='<%# Eval("Wrong_Ans")%>' Font-Bold="true" ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>TOTAL MARKS OBTAINED:
                        </td>
                        <td>
                            <asp:Label ID="LblTotalMarks" runat="server" Text='<%# Eval("Total_Marks")%>' Font-Bold="true" ForeColor="Blue"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>RESULT OF THIS SUBJECT:
                        </td>
                        <td>
                            <asp:Label ID="LblResult" runat="server" Text='<%# Eval("Result")%>' Font-Bold="true" ForeColor="Blue"></asp:Label>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
            <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        </asp:DataList>
        <asp:Button ID="BtnBackToHome" runat="server" Text="Back To Home" Width="300px" BackColor="Aqua" ForeColor="#000099" Height="40px" PostBackUrl="~/Home.aspx"  />
         <asp:Button ID="BtnBackToAnotherExam" runat="server" Text="Back To Another Exam" Width="300px" BackColor="Aqua" ForeColor="#000099" Height="40px" PostBackUrl="~/ExamSubjects.aspx" />
    </div>
    <div>
        <asp:Label ID="LblMessage" runat="server" Text="" ForeColor="Red"></asp:Label>
    </div>
</asp:Content>

