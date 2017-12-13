<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Donor_Data.aspx.cs" Inherits="Admin_Donor_Data" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            height: 114px;
        }
    </style>
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
    <table align="center">
        <tr>
            <td class="style4" colspan="3" 
                style="background-image: url('../Images/MenuBar.gif')">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Impact" 
                        Font-Overline="True" Font-Size="XX-Large" Font-Underline="True" 
                        ForeColor="#FF8285" Text="Donors Data"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
                    AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" 
                    BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="username" 
                    DataSourceID="DonorDataSQLds" ForeColor="Black" 
                    Height="290px" Width="914px">
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <Columns>
                        <asp:BoundField DataField="fullname" HeaderText="Full Name" 
                            SortExpression="fullname" />
                        <asp:BoundField DataField="gender" HeaderText="Gender" 
                            SortExpression="gender" />
                        <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
                        <asp:BoundField DataField="phone" HeaderText="Phone no." 
                            SortExpression="phone" />
                        <asp:BoundField DataField="email" HeaderText="E-mail" SortExpression="email" />
                        <asp:BoundField DataField="username" HeaderText="Username" ReadOnly="True" 
                            SortExpression="username" />
                        <asp:BoundField DataField="password" HeaderText="Password" 
                            SortExpression="password" Visible="False" />
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
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:SqlDataSource ID="DonorDataSQLds" runat="server" 
                    ConflictDetection="CompareAllValues" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    DeleteCommand="DELETE FROM [member] WHERE [username] = @original_username AND [fullname] = @original_fullname AND [gender] = @original_gender AND [state] = @original_state AND [phone] = @original_phone AND [email] = @original_email AND [password] = @original_password" 
                    InsertCommand="INSERT INTO [member] ([fullname], [gender], [state], [phone], [email], [username], [password]) VALUES (@fullname, @gender, @state, @phone, @email, @username, @password)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT * FROM [member]" 
                    UpdateCommand="UPDATE [member] SET [fullname] = @fullname, [gender] = @gender, [state] = @state, [phone] = @phone, [email] = @email, [password] = @password WHERE [username] = @original_username AND [fullname] = @original_fullname AND [gender] = @original_gender AND [state] = @original_state AND [phone] = @original_phone AND [email] = @original_email AND [password] = @original_password">
                    <DeleteParameters>
                        <asp:Parameter Name="original_username" Type="String" />
                        <asp:Parameter Name="original_fullname" Type="String" />
                        <asp:Parameter Name="original_gender" Type="String" />
                        <asp:Parameter Name="original_state" Type="String" />
                        <asp:Parameter Name="original_phone" Type="String" />
                        <asp:Parameter Name="original_email" Type="String" />
                        <asp:Parameter Name="original_password" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="fullname" Type="String" />
                        <asp:Parameter Name="gender" Type="String" />
                        <asp:Parameter Name="state" Type="String" />
                        <asp:Parameter Name="phone" Type="String" />
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="username" Type="String" />
                        <asp:Parameter Name="password" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="fullname" Type="String" />
                        <asp:Parameter Name="gender" Type="String" />
                        <asp:Parameter Name="state" Type="String" />
                        <asp:Parameter Name="phone" Type="String" />
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="password" Type="String" />
                        <asp:Parameter Name="original_username" Type="String" />
                        <asp:Parameter Name="original_fullname" Type="String" />
                        <asp:Parameter Name="original_gender" Type="String" />
                        <asp:Parameter Name="original_state" Type="String" />
                        <asp:Parameter Name="original_phone" Type="String" />
                        <asp:Parameter Name="original_email" Type="String" />
                        <asp:Parameter Name="original_password" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

