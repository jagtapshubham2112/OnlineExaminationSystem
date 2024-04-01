<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.master" AutoEventWireup="true" CodeFile="ShowEBooks.aspx.cs" Inherits="ShowEBooks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Panel ID="PnlRules" runat="server" HorizontalAlign="Center" Width="100%">
        <table style="width:100%;">
            <tr>
                <td>
                    <asp:Label ID="lblMessage" runat="server" Text="Select Books"></asp:Label>
                </td>

            </tr>
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" EmptyDataText="No files uploaded" Width="900px">
                        <Columns>
                            <asp:BoundField DataField="Text" HeaderText="File Name" />
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkDownload" runat="server" CommandArgument='<%# Eval("Value") %>' OnClick="DownloadFile" Text="Download"></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkSelect" runat="server" CommandArgument='<%# Eval("Value") %>' OnClick="viewBook" Text="Select" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="LblEbooks" runat="server" Font-Size="Medium" ForeColor="Red" Text="EBooks"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Literal ID="ltPdfEmbed" runat="server" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>

    </asp:Content>

