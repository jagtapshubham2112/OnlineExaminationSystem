<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.master" AutoEventWireup="true" CodeFile="ExamWithTimer.aspx.cs" Inherits="ExamWithTimer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="css/bootstrap.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

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
            var adday3 = 2;
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

            window.location = "http://localhost:49389/sis/Result.aspx";

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
                ttclock = min + " minutes " + "&nbsp;&nbsp;" + pad(sec2) + " seconds";

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
            var lbl = document.getElementById("<%= LblTime.ClientID %>");
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
    
   
    <div>

        <nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container-fluid" id="navbar">
                <div class="navbar-header">
                    <h1>
                        <asp:Label ID="Label2" runat="server"></asp:Label>
                    </h1>

                    <div>

                        <div class="debu2" id="countdown1">
                            <script type="text/javascript"> countdown_clock();</script>



                        </div>

                        <asp:Label ID="LblTime" runat="server"></asp:Label>
                        <script type="text/javascript"> show_time();</script>
<!--
                        <table>
                            <tbody>
                                <tr>
                                    <td>
                                        <input class="b2t" onclick="InitializeTimer(form)" type="button" value="Start the Timer" /></td>
                                    <td>
                                        <input class="b3t" onclick="history.go(0)" type="button" value="  Stop  " />
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        -->
                    </div>
                </div>
            </div>


        </nav>

        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
            </ContentTemplate>
        </asp:UpdatePanel>



    </div>
   

</asp:Content>

