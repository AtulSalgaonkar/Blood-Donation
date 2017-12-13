<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Blood_Donation_Status_Data.aspx.cs" Inherits="Admin_Blood_Donation_Status_Data" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div class="HMenuDD">
        <ul style="background-color: #000000">
            <li><a href="AdminHome.aspx">Home</a></li>
            <li><a href="../AdminRegistration.aspx">Register new admin</a></li>
            <li><a href="../CreateNewOrganization.aspx">Create Organization</a></li>
            <li><a href="Edit_Admin_Profile.aspx">Edit Admin Profile</a></li>
            <li><a>Approvals</a>
                <ul>
                    <li><a href="Request_For_Blood_Data.aspx">Blood Request Data</a></li>
                    <li><a href="Blood_Donation_Status_Data.aspx">Blood Donation Status</a></li>
                </ul>
            </li>
            <li><a href="Donor_Data.aspx">Donors Data</a></li>
            <li><a href="../Organization_Data.aspx">Organization Data</a></li>
            <li><a href="../Home/Home.aspx">
                <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Logout</asp:LinkButton></a></li>
        </ul>
    </div>
                    <hr />
                    <hr />
                    <div style="background-image: url('../Images/MenuBar.gif'); height: 114px;">
                        <br />
                        <br />
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Impact" 
                        Font-Overline="True" Font-Size="XX-Large" Font-Underline="True" 
                        ForeColor="#FF8285" Text="Blood Donation Status Data"></asp:Label></div>
    <br />
    <br />
    <table align="center">
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
        </tr>
    </table>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
        CellPadding="3" DataKeyNames="ID" DataSourceID="SqlDataSource1" 
        ForeColor="Black">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="State" HeaderText="State ID" 
                SortExpression="State" />
            <asp:BoundField DataField="City" HeaderText="City ID" SortExpression="City" />
            <asp:BoundField DataField="OrgName" HeaderText="Organization Name" 
                SortExpression="OrgName" />
            <asp:BoundField DataField="OrgType" HeaderText="Organization Type" 
                SortExpression="OrgType" />
            <asp:BoundField DataField="Username" HeaderText="Username" 
                SortExpression="Username" />
            <asp:TemplateField HeaderText="User Status Of Blood Donation" 
                SortExpression="UserStatusOfBD">
                <EditItemTemplate>
                    <asp:DropDownList ID="USOBDddl2" runat="server" AutoPostBack="True" 
                        SelectedValue='<%# Bind("UserStatusOfBD") %>' Width="206px">
                        <asp:ListItem>Willing to Donate</asp:ListItem>
                        <asp:ListItem>Donated blood</asp:ListItem>
                    </asp:DropDownList>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("UserStatusOfBD") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Blood_group" HeaderText="Blood Group" 
                SortExpression="Blood_group" />
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" 
                ReadOnly="True" SortExpression="ID" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="Gray" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConflictDetection="CompareAllValues" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [BloodDStatusForm] WHERE [ID] = @original_ID AND [State] = @original_State AND [City] = @original_City AND [OrgName] = @original_OrgName AND [OrgType] = @original_OrgType AND [Username] = @original_Username AND [UserStatusOfBD] = @original_UserStatusOfBD AND [Blood_group] = @original_Blood_group" 
        InsertCommand="INSERT INTO [BloodDStatusForm] ([State], [City], [OrgName], [OrgType], [Username], [UserStatusOfBD], [Blood_group]) VALUES (@State, @City, @OrgName, @OrgType, @Username, @UserStatusOfBD, @Blood_group)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT * FROM [BloodDStatusForm] WHERE ([City] = @City)" 
        UpdateCommand="UPDATE [BloodDStatusForm] SET [State] = @State, [City] = @City, [OrgName] = @OrgName, [OrgType] = @OrgType, [Username] = @Username, [UserStatusOfBD] = @UserStatusOfBD, [Blood_group] = @Blood_group WHERE [ID] = @original_ID AND [State] = @original_State AND [City] = @original_City AND [OrgName] = @original_OrgName AND [OrgType] = @original_OrgType AND [Username] = @original_Username AND [UserStatusOfBD] = @original_UserStatusOfBD AND [Blood_group] = @original_Blood_group">
        <DeleteParameters>
            <asp:Parameter Name="original_ID" Type="Int32" />
            <asp:Parameter Name="original_State" Type="String" />
            <asp:Parameter Name="original_City" Type="String" />
            <asp:Parameter Name="original_OrgName" Type="String" />
            <asp:Parameter Name="original_OrgType" Type="String" />
            <asp:Parameter Name="original_Username" Type="String" />
            <asp:Parameter Name="original_UserStatusOfBD" Type="String" />
            <asp:Parameter Name="original_Blood_group" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="State" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="OrgName" Type="String" />
            <asp:Parameter Name="OrgType" Type="String" />
            <asp:Parameter Name="Username" Type="String" />
            <asp:Parameter Name="UserStatusOfBD" Type="String" />
            <asp:Parameter Name="Blood_group" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="CDDL6" Name="City" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="State" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="OrgName" Type="String" />
            <asp:Parameter Name="OrgType" Type="String" />
            <asp:Parameter Name="Username" Type="String" />
            <asp:Parameter Name="UserStatusOfBD" Type="String" />
            <asp:Parameter Name="Blood_group" Type="String" />
            <asp:Parameter Name="original_ID" Type="Int32" />
            <asp:Parameter Name="original_State" Type="String" />
            <asp:Parameter Name="original_City" Type="String" />
            <asp:Parameter Name="original_OrgName" Type="String" />
            <asp:Parameter Name="original_OrgType" Type="String" />
            <asp:Parameter Name="original_Username" Type="String" />
            <asp:Parameter Name="original_UserStatusOfBD" Type="String" />
            <asp:Parameter Name="original_Blood_group" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

