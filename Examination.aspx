<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.master" AutoEventWireup="true" CodeFile="Examination.aspx.cs" Inherits="Examination" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
     <link href="css/TableStyleSheet.css" rel="stylesheet" />
    <link href="css/bootstrap.css" rel="stylesheet" />
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script src="js/jquery-1.10.2.js"></script>
     <script src="js/jquery-1.10.2.js"></script>

    <style type="text/css">
        #countdown1 {
            border: solid 1px;
            width: 200px;
            height: 50px;
            background-color: yellow;
            color: red;
        }
    </style>
    <script type="text/javascript">

        var secs = 0;
        var min = 0;
        var sec2 = 0;
        var timerID = null;
        var timerRunning = false;
        var delay = 1000;
        var ttclock = "0 minutes &nbsp;&nbsp;00 seconds";

        function InitializeTimer(form) {
            var adday3 = 10;
            secs = adday3 * 60;
            StopTheClock();
            StartTheTimer();
        }

        function StopTheClock() {
            if (timerRunning)
                clearTimeout(timerID)
            timerRunning = false;
        }
        function redirect() {

            window.location = "Home.aspx";

        }

        function StartTheTimer() {
            if (secs == -1) {
                StopTheClock()
                document.all['BGSOUND_ID'].src = 'tower.mid';
                {
                    redirect();
                    document.tower.play();
                }

            }
            else {
                min = Math.floor(secs / 60);
                sec2 = secs % 60;
                ttclock = "Time: " + min + ":" + pad(sec2);

                secs = secs - 1;
                timerRunning = true;
                timerID = self.setTimeout("StartTheTimer()", delay);
            }
        }

        function countdown_clock(ttclock) {
            html_code = '<div id="countdown"></div>';
            document.write(html_code);
            countdown();

        }

        function show_time(ttclock) {
            var lbl = document.getElementById("<%= LblTimerCount.ClientID %>");
            if (lbl)
                lbl.innerHTML = ttclock;
            setTimeout('show_time(ttclock);', 0);
        }
        function countdown(ttclock) {

            document.all.countdown.innerHTML = ttclock;
            setTimeout('countdown(ttclock);', 0);
        }

        function pad(n) {

            if (n < 10) {
                return "0" + n;
            }
            else {
                return n;
            }
        }

        function stripBad(string) {
            for (var i = 0, output = '', valid = "eE-0123456789."; i < string.length; i++)
                if (valid.indexOf(string.charAt(i)) != -1)
                    output += string.charAt(i)
            return output;
        }
        window.onload = function () { InitializeTimer(form1); };

    </script>
  
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:Timer ID="Timer1" runat="server" Enabled="False">
    </asp:Timer>

    <table style="height: 422px; width: 100%" id="styled_table" >
       
        <tbody>
            <tr>
                <td>
                    <asp:HiddenField ID="hfAns" runat="server" />
                    <br />
                </td>
                <td>
                    <asp:Label ID="lblSubjectTitle" runat="server" Font-Size="Large" ForeColor="#006600"></asp:Label>
                </td>
                <td>
                      <asp:Label ID="LblTimerCount" runat="server" Text="0" Font-Size="Larger" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr class="active-row">
                <td>
                    <asp:Label ID="lblQuestionNo" runat="server" Text="Question No:" Font-Size="Large"></asp:Label>

                </td>
                <td>
                    <asp:Label ID="lblNoOfQuestion" runat="server" Font-Size="Large"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblQuestion" runat="server" Text="Question:" Font-Size="Large" ForeColor="#000099"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtQuestion" runat="server" Font-Bold="True" Font-Size="Large" ReadOnly="True" ForeColor="#000099" Width="600px" BorderStyle="None" Enabled="False"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:RadioButtonList ID="rbtnAns" runat="server" OnSelectedIndexChanged="rbtnAns_SelectedIndexChanged" Width="600px">
                    </asp:RadioButtonList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnSkip" runat="server" Text="Skip" CssClass="btn btn-success" OnClick="btnSkip_Click" Width="100px" />
                </td>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="btnNext" runat="server" Text="Next" CssClass="btn btn-danger" OnClick="btnNext_Click" Width="100px" />
                </td>
            </tr>

            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
        </tbody>
    </table>
      <script type="text/javascript"> show_time();</script>
</asp:Content>

