<%@ Page Title="" Language="C#" MasterPageFile="~/UserLogin/UserHome.master" AutoEventWireup="true" CodeFile="UserRequestForBlood.aspx.cs" Inherits="UserLogin_UserRequestForBlood" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            text-align: right;
            width: 245px;
        }
        .style5
        {
            width: 463px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div><table align="center" class="style1" runat="server" id="tblRFB">
        <tr>
            <td colspan="3" height="100" 
                style="background-image: url('../Images/MenuBar.gif')">
                <asp:Label ID="LBLRFB" runat="server" Font-Bold="True" Font-Overline="True" 
                    Font-Size="XX-Large" Font-Underline="True" Text="Request For Blood" 
                    ForeColor="#FF777A" Font-Names="Impact"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="UNlbl" runat="server" Font-Bold="True" Font-Size="Large" 
                    Text="Username :"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="UNTB4" runat="server" Width="304px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="UNTB4" ErrorMessage="!" Font-Bold="True" Font-Size="Large" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="FNlbl" runat="server" Font-Bold="True" Font-Size="Large" 
                    Text="Full Nmae :"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="FNTB4" runat="server" Width="304px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="FNTB4" ErrorMessage="!" Font-Bold="True" Font-Size="Large" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="Elbl" runat="server" Font-Bold="True" Font-Size="Large" 
                    Text="E-mail :"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="ETB4" runat="server" Width="304px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="ETB4" ErrorMessage="!" Font-Bold="True" Font-Size="Large" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="PhnNlbl" runat="server" Font-Bold="True" Font-Size="Large" 
                    Text="Phone no. :"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="PhnTB4" runat="server" Width="304px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="PhnTB4" ErrorMessage="!" Font-Bold="True" Font-Size="Large" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="Genlbl" runat="server" Font-Bold="True" Font-Size="Large" 
                    Text="Gender :"></asp:Label>
            </td>
            <td class="style5">
                    <asp:RadioButtonList ID="GenRB4" runat="server" 
                        RepeatDirection="Horizontal" style="font-size: large" Width="172px">
                        <asp:ListItem Value="M">Male</asp:ListItem>
                        <asp:ListItem Value="F">Female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="GenRB4" ErrorMessage="!" Font-Bold="True" Font-Size="Large" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="Slbl" runat="server" Font-Bold="True" Font-Size="Large" 
                    Text="State :"></asp:Label>
            </td>
            <td class="style5">
                <asp:DropDownList ID="SDDL1" runat="server" AutoPostBack="True" Height="22px" 
                    onselectedindexchanged="SDDL_SelectedIndexChanged" Width="187px">
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="SDDL1" ErrorMessage="!" Font-Bold="True" Font-Size="Large" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="Clbl" runat="server" Font-Bold="True" Font-Size="Large" 
                    Text="City :"></asp:Label>
            </td>
            <td class="style5">
                <asp:DropDownList ID="CDDL1" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="CDDL_SelectedIndexChanged" Width="187px">
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="CDDL1" ErrorMessage="!" Font-Bold="True" Font-Size="Large" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="BRAlbl" runat="server" Font-Bold="True" Font-Size="Large" 
                    Text="Blood Required Address :"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="BRATB1" runat="server" Height="43px" TextMode="MultiLine" 
                    Width="304px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="BRATB1" ErrorMessage="!" Font-Bold="True" Font-Size="Large" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="BGlbl" runat="server" Font-Bold="True" Font-Size="Large" 
                    Text="Blood Group :"></asp:Label>
            </td>
            <td class="style5">
                <asp:DropDownList ID="BGddl1" runat="server" Width="196px">
                    <asp:ListItem Value="SYBG">[ Select your Blood Group ]</asp:ListItem>
                    <asp:ListItem>O Positive</asp:ListItem>
                    <asp:ListItem>O Negative</asp:ListItem>
                    <asp:ListItem>A Positive</asp:ListItem>
                    <asp:ListItem>A Negative</asp:ListItem>
                    <asp:ListItem>BPositive</asp:ListItem>
                    <asp:ListItem>B Negative</asp:ListItem>
                    <asp:ListItem>AB Positive</asp:ListItem>
                    <asp:ListItem>AB Negative</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="BGddl1" ErrorMessage="!" Font-Bold="True" Font-Size="Large" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="RDlbl" runat="server" Font-Bold="True" Font-Size="Large" 
                    Text="Request Date :"></asp:Label>
            </td>
            <td class="style5">
                <br />
                <asp:TextBox ID="RDTB1" runat="server" 
                    Width="304px"></asp:TextBox>
&nbsp;&nbsp;
                <br />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="BRDlbl" runat="server" Font-Bold="True" Font-Size="Large" 
                    Text="Blood Required Date :"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="BRDTB1" runat="server" Width="304px"></asp:TextBox>
                <asp:Button ID="EditD2" runat="server" Text="Edit Date" 
                    onclick="EditD2_Click" Font-Bold="True" />
                <asp:Calendar ID="CalendarReqDate2" runat="server" BackColor="White" 
                    BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" 
                    ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px" 
                    onselectionchanged="CalendarReqDate2_SelectionChanged" Visible="False">
                    <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                    <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" 
                        VerticalAlign="Bottom" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                    <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" 
                        Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                    <TodayDayStyle BackColor="#CCCCCC" />
                </asp:Calendar>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="SORlbl" runat="server" Font-Bold="True" Font-Size="Large" 
                    Text="Status of req :" Visible="False"></asp:Label>
            </td>
            <td class="style5">
                <asp:DropDownList ID="SORddl" runat="server" Width="196px" 
                    Visible="False" Enabled="False">
                    <asp:ListItem Value="Pending...">Pending...</asp:ListItem>
                    <asp:ListItem>Rejected</asp:ListItem>
                    <asp:ListItem>Accepted</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="MsgIpLBL" runat="server" Font-Bold="True" Font-Size="Large" 
                    Text="Msg input :" Visible="False"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="MsgTB" runat="server" Height="43px" TextMode="MultiLine" 
                    Width="304px" ReadOnly="True" Visible="False">Pending...</asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                <br />
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="Large" 
                    ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                    <asp:CheckBox ID="TnCcb" runat="server" 
                        style="font-weight: 700; font-size: large; text-align: center;" 
                        Text="I agree to &lt;a href='TC.htm'&gt;Terms and Conditions&lt;/a&gt;" 
                        Checked="True" Visible="False" />
                <br />
                <asp:Button ID="SReq" runat="server" Font-Bold="True" Font-Size="Large" 
                    Text="Submit Request" onclick="SReq_Click" BackColor="Black" 
                        BorderColor="#CCCCCC" ForeColor="#FF8285" CssClass="btn focus" />
            </td>
        </tr>
    </table>
    </div>
</asp:Content>

