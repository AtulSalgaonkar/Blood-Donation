<%@ Page Title="" Language="C#" MasterPageFile="~/UserLogin/UserHome.master" AutoEventWireup="true" CodeFile="User_Status_Of_Blood_Donation.aspx.cs" Inherits="UserLogin_Status_Of_Blood_Donation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            height: 109px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table id="TblUserStatusOfBloodD1" align="center" runat="server">
        <tr>
            <td colspan="3" class="style4" 
                style="background-image: url('../Images/MenuBar.gif')">
                <asp:Label ID="LBLUSOBD" runat="server" Font-Bold="True" Font-Overline="True" 
                    Font-Size="XX-Large" Font-Underline="True" Text="Status of Blood Donation" 
                    ForeColor="#FF777A" Font-Names="Impact"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Slbl" runat="server" Font-Bold="True" Font-Size="Large" 
                    Text="State :"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="SDDL6" runat="server" AutoPostBack="True" Height="22px" 
                    onselectedindexchanged="SDDL_SelectedIndexChanged" Width="187px">
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Clbl" runat="server" Font-Bold="True" Font-Size="Large" 
                    Text="City :"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="CDDL6" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="CDDL_SelectedIndexChanged" Width="187px">
                </asp:DropDownList>
            </td>
            <td>
                <asp:Button ID="FindDataB1" runat="server" Font-Bold="True" Font-Size="Medium" 
                    Text="Find Data" onclick="FindOrgB1_Click" Visible="False" 
                    BackColor="Black" BorderColor="#CCCCCC" CssClass="btn focus" 
                    ForeColor="#FF8285" />
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:GridView ID="GVOrgDataFind2" runat="server" AutoGenerateColumns="False" 
                    CellPadding="3" DataSourceID="FindUserStatusSqlDS1" ForeColor="Black" 
                    BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
                    Width="562px" DataKeyNames="ID" 
                    onselectedindexchanged="GVOrgDataFind2_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <Columns>
                        <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" 
                            Visible="False" />
                        <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" 
                            Visible="False" />
                        <asp:BoundField DataField="OrgName" HeaderText="Organization Name" 
                            SortExpression="OrgName" />
                        <asp:BoundField DataField="OrgType" HeaderText="Organization Type" 
                            SortExpression="OrgType" />
                        <asp:BoundField DataField="Username" HeaderText="Username" 
                            SortExpression="Username" />
                        <asp:BoundField DataField="UserStatusOfBD" HeaderText="User Status Of Blood Donation" 
                            SortExpression="UserStatusOfBD" />
                        <asp:BoundField DataField="Blood_group" HeaderText="Blood Group" 
                            SortExpression="Blood_group" />
                        <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" 
                            ReadOnly="True" SortExpression="ID" Visible="False" />
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
                <asp:SqlDataSource ID="FindUserStatusSqlDS1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [BloodDStatusForm] WHERE ([City] = @City)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="CDDL6" Name="City" 
                            PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="Large" 
                    ForeColor="Red"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

