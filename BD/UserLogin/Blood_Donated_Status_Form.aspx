<%@ Page Title="" Language="C#" MasterPageFile="~/UserLogin/UserHome.master" AutoEventWireup="true" CodeFile="Blood_Donated_Status_Form.aspx.cs" Inherits="UserLogin_Blood_Donated_Status_Form" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            height: 112px;
        }
    .style5
    {
        height: 22px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table align="center" runat="server" id="TblBloodDStatusForm">
        <tr>
            <td class="style4" colspan="3" 
                style="background-image: url('../Images/MenuBar.gif')">
                <asp:Label ID="LBLBDSF" runat="server" Font-Bold="True" Font-Overline="True" 
                    Font-Size="XX-Large" Font-Underline="True" Text="Blood Donated Status Form" 
                    ForeColor="#FF777A" Font-Names="Impact"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style4" colspan="3">
                <asp:Image ID="Image4" runat="server" 
                    ImageUrl="~/UserLogin/userHomeImg/use 2.jpeg" />
                <br />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Slbl" runat="server" Font-Bold="True" Font-Size="Large" 
                    Text="State :"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="SDDL3" runat="server" AutoPostBack="True" Height="22px" 
                    onselectedindexchanged="SDDL_SelectedIndexChanged" Width="187px">
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="StateRFV1" runat="server" 
                    ControlToValidate="SDDL3" ErrorMessage="!" Font-Bold="True" Font-Size="Large" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Clbl" runat="server" Font-Bold="True" Font-Size="Large" 
                    Text="City :"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="CDDL3" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="CDDL_SelectedIndexChanged" Width="187px">
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="CityRFV1" runat="server" 
                    ControlToValidate="CDDL3" ErrorMessage="!" Font-Bold="True" Font-Size="Large" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;
                <asp:Button ID="FindOrgB1" runat="server" Font-Bold="True" Font-Size="Medium" 
                    Text="Find Org" onclick="FindOrgB1_Click" BackColor="Black" 
                    BorderColor="#CCCCCC" ForeColor="#FF8285" CssClass="btn focus" 
                    Visible="False" />
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <br />
                <asp:Label ID="info1" runat="server" Font-Bold="True" Font-Size="Medium" 
                    
                    Text="* To get Organization name and Organization type just click on Select in Bellow table *" 
                    Visible="False" CssClass="text-center" ForeColor="Red"></asp:Label>
                <asp:GridView ID="GVOrgDataFind1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="OrgName" 
                    onselectedindexchanged="GVOrgDataFind1_SelectedIndexChanged" 
                    CellPadding="3" DataSourceID="FindOrgForUsrSqlDS" ForeColor="Black" 
                    BackColor="White" BorderColor="#999999" 
                    BorderStyle="Solid" BorderWidth="1px">
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="OrgType" HeaderText="OrgType" 
                            SortExpression="OrgType" />
                        <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" 
                            Visible="False" />
                        <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" 
                            Visible="False" />
                        <asp:BoundField DataField="LocationAddr" HeaderText="LocationAddr" 
                            SortExpression="LocationAddr" />
                        <asp:BoundField DataField="ContactNo" HeaderText="ContactNo" 
                            SortExpression="ContactNo" />
                        <asp:BoundField DataField="OrgEID" HeaderText="OrgEID" 
                            SortExpression="OrgEID" />
                        <asp:BoundField DataField="OrgName" HeaderText="OrgName" ReadOnly="True" 
                            SortExpression="OrgName" />
                        <asp:BoundField DataField="UppOrgLogo" HeaderText="UppOrgLogo" 
                            SortExpression="UppOrgLogo" Visible="False" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
                <asp:SqlDataSource ID="FindOrgForUsrSqlDS" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:AdminConStr %>" 
                    SelectCommand="SELECT * FROM [OrganizationData] WHERE ([City] = @City)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="CDDL3" Name="City" 
                            PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="OrgNamelbl0" runat="server" Font-Bold="True" Font-Size="Large" 
                    Text="Organization Name :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="OrgName1" runat="server" Width="304px" ReadOnly="True"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="UNRFV2" runat="server" 
                    ControlToValidate="OrgName1" ErrorMessage="!" Font-Bold="True" Font-Size="Large" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="OrgTypelbl0" runat="server" Font-Bold="True" Font-Size="Large" 
                    Text="Organization Type :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="OrgType1" runat="server" Width="304px" ReadOnly="True"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="UNRFV3" runat="server" 
                    ControlToValidate="OrgType1" ErrorMessage="!" Font-Bold="True" Font-Size="Large" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="UNlbl0" runat="server" Font-Bold="True" Font-Size="Large" 
                    Text="User Name :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="UNTB5" runat="server" Width="304px" ReadOnly="True" ></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="UNRFV1" runat="server" 
                    ControlToValidate="UNTB5" ErrorMessage="!" Font-Bold="True" Font-Size="Large" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="USOBDlbl0" runat="server" Font-Bold="True" Font-Size="Large" 
                    Text="User Status of Blood Donation :" Visible="False"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="USOBDddl1" runat="server" Width="206px" Visible="False">
                    <asp:ListItem Selected="True">Willing to Donate</asp:ListItem>
                    <asp:ListItem>Donated blood</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="USOBDlbl1" runat="server" Font-Bold="True" Font-Size="Large" 
                    Text="Blood Group :"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="BGddl2" runat="server" Width="196px">
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
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                </td>
            <td class="style5">
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="Medium" 
                    ForeColor="Red"></asp:Label>
            </td>
            <td class="style5">
                </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="UploadStatusB" runat="server" Font-Bold="True" Font-Size="Large" 
                    Text="Upload Status" onclick="UploadStatusB_Click" BackColor="Black" 
                    BorderColor="#CCCCCC" CssClass="btn focus" ForeColor="#FF8285" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

