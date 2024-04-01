<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.master" AutoEventWireup="true" CodeFile="StartExamination.aspx.cs" Inherits="StartExamination" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <asp:Panel ID="pnlRules" runat="server">
            <h2>Rules for Practice and Final Exam: </h2>
            <h2>Exam:</h2>
            <ul>
                <li>Before Starting Exam you should see your Syllabus</li>
                <li>There is no negative marking</li>
                <li>All questions are Compulsary</li>
                <li>If you have more than 40% right answers out of Total Questions then only you will get PASS </li>
                <li>There is no extra charge for online examinations.</li>
            </ul>
            <h2>Practice:</h2>
            <ul>
                <li>Before Starting Prctice you should see our Syllabus</li>
                <li>There is no negative marking</li>
                <li>All questions are Compulsary</li>
                <li>There is no extra charge for online pracitce examinations.</li>
            </ul>

            <asp:Button ID="BtnPracticeExam" runat="server" Text="Practice Exam" Font-Size="Large" Width="150px" BackColor="#66FF99" OnClick="BtnPracticeExam_Click" />
            <asp:Button ID="BtnFinalExam" runat="server" Text="Final Exam" Font-Size="Large" Width="150px" BackColor="#FFCCFF" OnClick="BtnFinalExam_Click" />
            <asp:Button ID="BtnExamTest" runat="server" BackColor="#66FFFF" Font-Size="Large"  Text="Astonish Exam" Width="150px" OnClick="BtnExamTest_Click" />
            <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
        </asp:Panel>
    </div>

</asp:Content>

