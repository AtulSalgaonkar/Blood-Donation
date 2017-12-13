<%@ Page Title="" Language="C#" MasterPageFile="~/Home/HomeMaster.master" AutoEventWireup="true" CodeFile="Find_Organization2.aspx.cs" Inherits="Home_Find_Organization2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style4
    {
        height: 114px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table id="TblUserStatusOfBloodD1" align="center" runat="server">
    <tr>
        <td colspan="3" class="style4" 
                style="background-image: url('Images/MenuBar.gif')">
            <asp:Label ID="LBLUSOBD" runat="server" Font-Bold="True" Font-Overline="True" 
                    Font-Size="XX-Large" Font-Underline="True" Text="Find Organization" 
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
            &nbsp;</td>
    </tr>
    <tr>
        <td colspan="3">
            <asp:GridView ID="GVOrgDataFind2" runat="server" AutoGenerateColumns="False" 
                    CellPadding="3" DataSourceID="FindOrgDS" ForeColor="Black" 
                DataKeyNames="OrgName" BackColor="White" BorderColor="#999999" 
                BorderStyle="Solid" BorderWidth="1px" Width="708px">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:BoundField DataField="OrgType" HeaderText="Organization Type" 
                        SortExpression="OrgType" />
                    <asp:BoundField DataField="State" HeaderText="State ID" 
                        SortExpression="State" Visible="False" />
                    <asp:BoundField DataField="City" HeaderText="City ID" 
                            SortExpression="City" Visible="False" />
                    <asp:BoundField DataField="LocationAddr" HeaderText="Location Address" 
                            SortExpression="LocationAddr" />
                    <asp:BoundField DataField="ContactNo" HeaderText="Contact No." 
                            SortExpression="ContactNo" />
                    <asp:BoundField DataField="OrgEID" HeaderText="Organization E-mail ID" 
                            SortExpression="OrgEID" />
                    <asp:BoundField DataField="OrgName" HeaderText="Organization Name" 
                        ReadOnly="True" SortExpression="OrgName" />
                    <asp:BoundField DataField="UppOrgLogo" HeaderText="UppOrgLogo" 
                        SortExpression="UppOrgLogo" Visible="False" />
                    <asp:ImageField DataImageUrlField="UppOrgLogo" HeaderText="Logo">
                        <ControlStyle Height="200px" Width="200px" CssClass="img-circle" />
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
            <asp:SqlDataSource ID="FindOrgDS" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:AdminConStr %>" 
                    
                SelectCommand="SELECT * FROM [OrganizationData] WHERE ([City] = @City)">
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

