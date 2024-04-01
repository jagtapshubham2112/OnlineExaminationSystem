<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="AddEbooks.aspx.cs" Inherits="Admin_AddEbooks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%">
        <tr>
            <td> <asp:Label ID="lblUploadbooks" runat="server" Text="UpLoadEBook"></asp:Label> <br /></td>
            <td> <asp:FileUpload ID="FileUpload1" runat="server" /><br /></td>
            <td>
                 <asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="UploadFile" Width="100px" />
            </td>
            <td>

       
    
   
    
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" EmptyDataText="No files uploaded">
        <Columns>
            <asp:BoundField DataField="Text" HeaderText="File Name" />
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:LinkButton ID="lnkDownload" Text="Download" CommandArgument='<%# Eval("Value") %>' runat="server" OnClick="DownloadFile"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:LinkButton ID="lnkDelete" Text="Delete" CommandArgument='<%# Eval("Value") %>' runat="server" OnClick="DeleteFile" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
                     </td>
        </tr>
    </table>
   
</asp:Content>
