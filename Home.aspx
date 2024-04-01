<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="SliderStyle/js-image-slider.css" rel="stylesheet" />
    <script src="SliderStyle/js-image-slider.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true"></asp:ScriptManager>
        <div class="addrotator">
            <div id="sliderFrame">
                <div id="slider">
                    <img src="SlideImages/slide_C.jpg" />
                    <img src="SlideImages/slide_Cpp.jpg" />
                    <img src="SlideImages/slide_Cs.jpg" alt="#" />
                    <img src="SlideImages/slide_Java.jpg" />
                    <img src="SlideImages/slide_Javascript.jpg" />
                    <img src="SlideImages/slide_Python.jpg" alt="#" />
                </div>
                <div id="htmlcaption" style="display: none;">
                    <em>HTML</em> caption. Link to <a href="#">Samarth</a>.
                </div>
            </div>
            <div class="clear"></div>
        </div>
        <div id="notice">
            <fieldset>
                <legend>Notice
                </legend>
                <asp:DataList ID="DtLstNotice" runat="server" CellPadding="4" Font-Size="Medium" ForeColor="#333333" Width="900px">
                    <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" BorderStyle="Dotted" BorderWidth="1px" />
                    <ItemTemplate>
                        <table style="width: 100%;">
                            <tr>
                                <td>
                                    <asp:Label ID="LblNoticeDate" runat="server" Text ='<%# Eval("Notice_Date")%>'  ForeColor="Green"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="LblNoticeTitle" runat="server" Text ='<%# Eval("Notice_Title")%>' Font-Bold="true" ForeColor="Red"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="LblNoticeMessage" runat="server" Text ='<%# Eval("Notice_Message")%>' Font-Bold="true" ForeColor="Blue"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                </asp:DataList>
            </fieldset>
        </div>
        <div>
            <asp:Label ID="LblMessage" runat="server" Text="" ForeColor="Red"></asp:Label>
        </div>
    </div>
</asp:Content>

