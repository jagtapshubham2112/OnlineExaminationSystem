<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="SetEamination.aspx.cs" Inherits="Admin_SetEamination" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../css/TableStyleSheet.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <table style="width: 100%; margin:auto;" id="styled_table">
        <tr>
            <td colspan="3" style="text-align:center;">
                <asp:Label ID="LblSetExam" runat="server" Font-Size="X-Large" Text="Set Final Examination Questions"></asp:Label>
            </td>

        </tr>
        <tr>
            <td>
                <asp:Label ID="LblSelectSubject" runat="server" Font-Size="Medium" Text="Subject:"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DdlSubject" runat="server" Width="200px" AutoPostBack="True" OnSelectedIndexChanged="DdlSubject_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DdlSubject" ErrorMessage="Selecct Subject" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td>
                <asp:Label ID="LblSelectSubject0" runat="server" Font-Size="Medium" Text="Total Selected Question:"></asp:Label>
             </td>
            <td>

                <asp:Label ID="LblSetQuestions" runat="server" Font-Size="Large" Font-Bold="False" Width="200px">00</asp:Label>

             </td>
            <td>&nbsp;</td>
        </tr>
    </table>
   <table style="width: 100%; ">
       

        <tr>
            <th>Question Bank</th>
            <th>Question Paper</th>
        </tr>

        <tr>
            <td style="width:50%;">

                <asp:GridView ID="GvQuestionBank" runat="server" AutoGenerateColumns="False" Width="100%" OnSelectedIndexChanged="GvQuestionBank_SelectedIndexChanged" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <Columns>
                        <asp:BoundField DataField="QuestionBank_Id" HeaderText="QuestionBank Id" />
                        <asp:TemplateField>
                            <HeaderTemplate>
                                Question
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblQuestion" runat="server" Text='<%# Eval("Question") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:CommandField ShowSelectButton="True" />

                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#0000A9" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#000065" />
                </asp:GridView>

            </td>
            <td>
                <asp:GridView ID="GvQuestion" runat="server" AutoGenerateColumns="False" Width="100%" OnRowDeleting="GvQuestion_RowDeleting" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="Question_Id" HeaderText="Question Id" />
                        <asp:TemplateField>
                            <HeaderTemplate>
                                Question
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblQuestion" runat="server" Text='<%# Eval("Question") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField ShowDeleteButton="true" />
                    </Columns>
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
            </td>
        </tr>

        <tr>
            <td>

                <asp:Label ID="LblMessage" runat="server" Font-Size="Medium" ForeColor="Red"></asp:Label>

            </td>
        </tr>
    </table>

</asp:Content>

