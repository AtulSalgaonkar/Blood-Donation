<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Organization_Data.aspx.cs" Inherits="Admin_Organization_Data" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div class="HMenuDD">
    
        <ul style="background-color: #000000">
            <li><a href="Admin/AdminHome.aspx">Home</a></li>
            <li><a href="AdminRegistration.aspx">Register new admin</a></li>
            <li><a href="CreateNewOrganization.aspx">Create Organization</a></li>   
            <li><a href="Admin/Edit_Admin_Profile.aspx">Edit Admin Profile</a></li>
            <li><a>Approvals</a>
                <ul>
                    <li><a href="Admin/Request_For_Blood_Data.aspx">Blood Request Data</a></li>
                    <li><a href="Admin/Blood_Donation_Status_Data.aspx">Blood Donation Status</a></li>
                </ul>
            </li>
            <li><a href="Admin/Donor_Data.aspx">Donors Data</a></li>
            <li><a href="Organization_Data.aspx">Organization Data</a></li>
            <li><a href="Home/Home.aspx">
                <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Logout</asp:LinkButton></a></li>
        </ul>
        </div>
                    <hr />
                <br />
                    <div style="background-image: url('Images/MenuBar.gif'); height: 114px;">
                        <br />
                        <br />
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Impact" 
                        Font-Overline="True" Font-Size="XX-Large" Font-Underline="True" 
                        ForeColor="#FF8285" Text="Organization Data"></asp:Label></div>
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
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
        CellPadding="3" DataKeyNames="OrgName" DataSourceID="SqlDataSource1" 
        ForeColor="Black" onselectedindexchanged="GridView2_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="OrgType" HeaderText="Organization Type" 
                SortExpression="OrgType" />
            <asp:BoundField DataField="State" HeaderText="State ID" 
                SortExpression="State" />
            <asp:BoundField DataField="City" HeaderText="City ID" SortExpression="City" />
            <asp:BoundField DataField="LocationAddr" HeaderText="Location Address" 
                SortExpression="LocationAddr" />
            <asp:BoundField DataField="ContactNo" HeaderText="Contact No" 
                SortExpression="ContactNo" />
            <asp:BoundField DataField="OrgEID" HeaderText="Organization E-mail ID" 
                SortExpression="OrgEID" />
            <asp:BoundField DataField="OrgName" HeaderText="Organization Name" ReadOnly="True" 
                SortExpression="OrgName" />
            <asp:BoundField DataField="UppOrgLogo" HeaderText="Uploaded Logo path" 
                SortExpression="UppOrgLogo" />
            <asp:ImageField DataImageUrlField="UppOrgLogo" HeaderText="Logo">
                <ControlStyle Height="200px" Width="200px" />
            </asp:ImageField>
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConflictDetection="CompareAllValues" 
        ConnectionString="<%$ ConnectionStrings:AdminConStr %>" 
        DeleteCommand="DELETE FROM [OrganizationData] WHERE [OrgName] = @original_OrgName AND [OrgType] = @original_OrgType AND [State] = @original_State AND [City] = @original_City AND [LocationAddr] = @original_LocationAddr AND [ContactNo] = @original_ContactNo AND [OrgEID] = @original_OrgEID AND [UppOrgLogo] = @original_UppOrgLogo" 
        InsertCommand="INSERT INTO [OrganizationData] ([OrgType], [State], [City], [LocationAddr], [ContactNo], [OrgEID], [OrgName], [UppOrgLogo]) VALUES (@OrgType, @State, @City, @LocationAddr, @ContactNo, @OrgEID, @OrgName, @UppOrgLogo)" 
        OldValuesParameterFormatString="original_{0}" 
        onselecting="SqlDataSource1_Selecting" 
        SelectCommand="SELECT * FROM [OrganizationData] WHERE ([City] = @City)" 
        UpdateCommand="UPDATE [OrganizationData] SET [OrgType] = @OrgType, [State] = @State, [City] = @City, [LocationAddr] = @LocationAddr, [ContactNo] = @ContactNo, [OrgEID] = @OrgEID, [UppOrgLogo] = @UppOrgLogo WHERE [OrgName] = @original_OrgName AND [OrgType] = @original_OrgType AND [State] = @original_State AND [City] = @original_City AND [LocationAddr] = @original_LocationAddr AND [ContactNo] = @original_ContactNo AND [OrgEID] = @original_OrgEID AND [UppOrgLogo] = @original_UppOrgLogo">
        <DeleteParameters>
            <asp:Parameter Name="original_OrgName" Type="String" />
            <asp:Parameter Name="original_OrgType" Type="String" />
            <asp:Parameter Name="original_State" Type="String" />
            <asp:Parameter Name="original_City" Type="String" />
            <asp:Parameter Name="original_LocationAddr" Type="String" />
            <asp:Parameter Name="original_ContactNo" Type="String" />
            <asp:Parameter Name="original_OrgEID" Type="String" />
            <asp:Parameter Name="original_UppOrgLogo" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="OrgType" Type="String" />
            <asp:Parameter Name="State" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="LocationAddr" Type="String" />
            <asp:Parameter Name="ContactNo" Type="String" />
            <asp:Parameter Name="OrgEID" Type="String" />
            <asp:Parameter Name="OrgName" Type="String" />
            <asp:Parameter Name="UppOrgLogo" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="CDDL6" Name="City" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="OrgType" Type="String" />
            <asp:Parameter Name="State" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="LocationAddr" Type="String" />
            <asp:Parameter Name="ContactNo" Type="String" />
            <asp:Parameter Name="OrgEID" Type="String" />
            <asp:Parameter Name="UppOrgLogo" Type="String" />
            <asp:Parameter Name="original_OrgName" Type="String" />
            <asp:Parameter Name="original_OrgType" Type="String" />
            <asp:Parameter Name="original_State" Type="String" />
            <asp:Parameter Name="original_City" Type="String" />
            <asp:Parameter Name="original_LocationAddr" Type="String" />
            <asp:Parameter Name="original_ContactNo" Type="String" />
            <asp:Parameter Name="original_OrgEID" Type="String" />
            <asp:Parameter Name="original_UppOrgLogo" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

