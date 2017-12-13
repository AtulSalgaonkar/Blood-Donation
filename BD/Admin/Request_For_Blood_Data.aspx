<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Request_For_Blood_Data.aspx.cs" Inherits="Admin_Request_For_Blood_Data" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style4
    {
        height: 121px;
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
<br />
<table align="center" class="table-responsive">
    <tr>
        <td class="style4" colspan="3" 
            style="background-image: url('../Images/MenuBar.gif')">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Impact" 
                        Font-Overline="True" Font-Size="XX-Large" Font-Underline="True" 
                        ForeColor="#FF8285" Text="Blood Requested Data"></asp:Label>
        </td>
    </tr>
    <tr>
        <td colspan="3">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                CellPadding="3" DataKeyNames="Username" DataSourceID="ReqFBloodDS" 
                ForeColor="Black" onselectedindexchanged="GridView1_SelectedIndexChanged" 
                BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                        ShowSelectButton="True" />
                    <asp:BoundField DataField="Username" HeaderText="Username" ReadOnly="True" 
                        SortExpression="Username" />
                    <asp:BoundField DataField="fullname" HeaderText="Full Name" 
                        SortExpression="fullname" />
                    <asp:BoundField DataField="email" HeaderText="E-mail" SortExpression="email" />
                    <asp:BoundField DataField="phone" HeaderText="Phone no." 
                        SortExpression="phone" />
                    <asp:BoundField DataField="gender" HeaderText="Gender" 
                        SortExpression="gender" />
                    <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                    <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                    <asp:BoundField DataField="Blood_Req_Address" HeaderText="Blood Request Address" 
                        SortExpression="Blood_Req_Address" />
                    <asp:BoundField DataField="Blood_group" HeaderText="Blood Group" 
                        SortExpression="Blood_group" />
                    <asp:BoundField DataField="Request_Date" HeaderText="Blood Requested Date" 
                        SortExpression="Request_Date" />
                    <asp:BoundField DataField="Blood_Required_Date" 
                        HeaderText="Blood Required Date" SortExpression="Blood_Required_Date" />
                    <asp:TemplateField HeaderText="Status of Request" 
                        SortExpression="Status_of_Request">
                        <EditItemTemplate>
                            <asp:DropDownList ID="SORddl" runat="server" 
                                SelectedValue='<%# Bind("Status_of_Request") %>' Width="196px">
                                <asp:ListItem Value="Pending...">Pending...</asp:ListItem>
                                <asp:ListItem>Rejected</asp:ListItem>
                                <asp:ListItem>Accepted</asp:ListItem>
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("Status_of_Request") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Reason" SortExpression="Reason">
                        <EditItemTemplate>
                            <asp:TextBox ID="MsgTB" runat="server" Height="103px" 
                                Text='<%# Bind("Reason") %>' TextMode="MultiLine" Width="321px"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("Reason") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
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
            <br />
            <asp:SqlDataSource ID="ReqFBloodDS" runat="server" 
                ConflictDetection="CompareAllValues" 
                ConnectionString="<%$ ConnectionStrings:ReqForBlood %>" 
                DeleteCommand="DELETE FROM [User_Blood_Request] WHERE [Username] = @original_Username AND (([fullname] = @original_fullname) OR ([fullname] IS NULL AND @original_fullname IS NULL)) AND (([email] = @original_email) OR ([email] IS NULL AND @original_email IS NULL)) AND [phone] = @original_phone AND (([gender] = @original_gender) OR ([gender] IS NULL AND @original_gender IS NULL)) AND (([State] = @original_State) OR ([State] IS NULL AND @original_State IS NULL)) AND (([City] = @original_City) OR ([City] IS NULL AND @original_City IS NULL)) AND (([Blood_Req_Address] = @original_Blood_Req_Address) OR ([Blood_Req_Address] IS NULL AND @original_Blood_Req_Address IS NULL)) AND (([Blood_group] = @original_Blood_group) OR ([Blood_group] IS NULL AND @original_Blood_group IS NULL)) AND (([Request_Date] = @original_Request_Date) OR ([Request_Date] IS NULL AND @original_Request_Date IS NULL)) AND (([Blood_Required_Date] = @original_Blood_Required_Date) OR ([Blood_Required_Date] IS NULL AND @original_Blood_Required_Date IS NULL)) AND (([Status_of_Request] = @original_Status_of_Request) OR ([Status_of_Request] IS NULL AND @original_Status_of_Request IS NULL)) AND (([Reason] = @original_Reason) OR ([Reason] IS NULL AND @original_Reason IS NULL))" 
                InsertCommand="INSERT INTO [User_Blood_Request] ([Username], [fullname], [email], [phone], [gender], [State], [City], [Blood_Req_Address], [Blood_group], [Request_Date], [Blood_Required_Date], [Status_of_Request], [Reason]) VALUES (@Username, @fullname, @email, @phone, @gender, @State, @City, @Blood_Req_Address, @Blood_group, @Request_Date, @Blood_Required_Date, @Status_of_Request, @Reason)" 
                OldValuesParameterFormatString="original_{0}" 
                SelectCommand="SELECT * FROM [User_Blood_Request]" 
                UpdateCommand="UPDATE [User_Blood_Request] SET [fullname] = @fullname, [email] = @email, [phone] = @phone, [gender] = @gender, [State] = @State, [City] = @City, [Blood_Req_Address] = @Blood_Req_Address, [Blood_group] = @Blood_group, [Request_Date] = @Request_Date, [Blood_Required_Date] = @Blood_Required_Date, [Status_of_Request] = @Status_of_Request, [Reason] = @Reason WHERE [Username] = @original_Username AND (([fullname] = @original_fullname) OR ([fullname] IS NULL AND @original_fullname IS NULL)) AND (([email] = @original_email) OR ([email] IS NULL AND @original_email IS NULL)) AND [phone] = @original_phone AND (([gender] = @original_gender) OR ([gender] IS NULL AND @original_gender IS NULL)) AND (([State] = @original_State) OR ([State] IS NULL AND @original_State IS NULL)) AND (([City] = @original_City) OR ([City] IS NULL AND @original_City IS NULL)) AND (([Blood_Req_Address] = @original_Blood_Req_Address) OR ([Blood_Req_Address] IS NULL AND @original_Blood_Req_Address IS NULL)) AND (([Blood_group] = @original_Blood_group) OR ([Blood_group] IS NULL AND @original_Blood_group IS NULL)) AND (([Request_Date] = @original_Request_Date) OR ([Request_Date] IS NULL AND @original_Request_Date IS NULL)) AND (([Blood_Required_Date] = @original_Blood_Required_Date) OR ([Blood_Required_Date] IS NULL AND @original_Blood_Required_Date IS NULL)) AND (([Status_of_Request] = @original_Status_of_Request) OR ([Status_of_Request] IS NULL AND @original_Status_of_Request IS NULL)) AND (([Reason] = @original_Reason) OR ([Reason] IS NULL AND @original_Reason IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_Username" Type="String" />
                    <asp:Parameter Name="original_fullname" Type="String" />
                    <asp:Parameter Name="original_email" Type="String" />
                    <asp:Parameter Name="original_phone" Type="String" />
                    <asp:Parameter Name="original_gender" Type="String" />
                    <asp:Parameter Name="original_State" Type="String" />
                    <asp:Parameter Name="original_City" Type="String" />
                    <asp:Parameter Name="original_Blood_Req_Address" Type="String" />
                    <asp:Parameter Name="original_Blood_group" Type="String" />
                    <asp:Parameter Name="original_Request_Date" Type="String" />
                    <asp:Parameter Name="original_Blood_Required_Date" Type="String" />
                    <asp:Parameter Name="original_Status_of_Request" Type="String" />
                    <asp:Parameter Name="original_Reason" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Username" Type="String" />
                    <asp:Parameter Name="fullname" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="phone" Type="String" />
                    <asp:Parameter Name="gender" Type="String" />
                    <asp:Parameter Name="State" Type="String" />
                    <asp:Parameter Name="City" Type="String" />
                    <asp:Parameter Name="Blood_Req_Address" Type="String" />
                    <asp:Parameter Name="Blood_group" Type="String" />
                    <asp:Parameter Name="Request_Date" Type="String" />
                    <asp:Parameter Name="Blood_Required_Date" Type="String" />
                    <asp:Parameter Name="Status_of_Request" Type="String" />
                    <asp:Parameter Name="Reason" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="fullname" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="phone" Type="String" />
                    <asp:Parameter Name="gender" Type="String" />
                    <asp:Parameter Name="State" Type="String" />
                    <asp:Parameter Name="City" Type="String" />
                    <asp:Parameter Name="Blood_Req_Address" Type="String" />
                    <asp:Parameter Name="Blood_group" Type="String" />
                    <asp:Parameter Name="Request_Date" Type="String" />
                    <asp:Parameter Name="Blood_Required_Date" Type="String" />
                    <asp:Parameter Name="Status_of_Request" Type="String" />
                    <asp:Parameter Name="Reason" Type="String" />
                    <asp:Parameter Name="original_Username" Type="String" />
                    <asp:Parameter Name="original_fullname" Type="String" />
                    <asp:Parameter Name="original_email" Type="String" />
                    <asp:Parameter Name="original_phone" Type="String" />
                    <asp:Parameter Name="original_gender" Type="String" />
                    <asp:Parameter Name="original_State" Type="String" />
                    <asp:Parameter Name="original_City" Type="String" />
                    <asp:Parameter Name="original_Blood_Req_Address" Type="String" />
                    <asp:Parameter Name="original_Blood_group" Type="String" />
                    <asp:Parameter Name="original_Request_Date" Type="String" />
                    <asp:Parameter Name="original_Blood_Required_Date" Type="String" />
                    <asp:Parameter Name="original_Status_of_Request" Type="String" />
                    <asp:Parameter Name="original_Reason" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td>
                <asp:Label ID="MailIDlbl" runat="server" Font-Bold="True" Font-Size="Large" 
                    Text="Donors email ID : "></asp:Label>
            </td>
        <td>
                <asp:TextBox ID="EMailTB1" runat="server" 
                    Width="304px" ReadOnly="True" Font-Bold="False">Click on select in table to trace E-mail ID hear</asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
                <asp:Label ID="TextSubjectLbl" runat="server" Font-Bold="True" Font-Size="Large" 
                    Text="Subject : "></asp:Label>
            </td>
        <td>
                <asp:TextBox ID="SubjectTB1" runat="server" 
                    Width="304px"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
                <asp:Label ID="TextSubjectLbl0" runat="server" Font-Bold="True" Font-Size="Large" 
                    Text="Compose email : "></asp:Label>
            </td>
        <td>
                <asp:TextBox ID="ComEmailTB" runat="server" Height="43px" TextMode="MultiLine" 
                    Width="304px"></asp:TextBox>
            </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="Large" 
                    ForeColor="#009933"></asp:Label>
            </td>
        <td>
                <asp:Button ID="SendMailTB" runat="server" Font-Bold="True" Font-Size="Large" 
                    Text="Send E-mail" onclick="SReq_Click" BackColor="Black" 
                    BorderColor="#CCCCCC" ForeColor="#FF8285" CssClass="btn focus" />
            </td>
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

