<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form runat ="server" class ="form-control" >
        
        <asp:Label runat="server" Text="Student List"></asp:Label>
        <br />
        <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowSorting="True" CellPadding="4" DataKeyNames="Id" GridLines="None" ForeColor="#333333" Height="208px" Width="457px">
        <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:CommandField ShowSelectButton="True" />
        <asp:BoundField DataField="firstName" HeaderText="First Name" SortExpression="firstName" />
        <asp:BoundField DataField="lastName" HeaderText="Last Name" SortExpression="lastName" />
        <asp:BoundField DataField="doa" HeaderText="Date of Admission" SortExpression="doa" DataFormatString="{0:dd MMMM yyyy}" />
        <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" Visible="False" />
    </Columns>
        <EditRowStyle BackColor="#2461BF" />
    <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#EFF3FB" />
    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    <SortedAscendingCellStyle BackColor="#F5F7FB" />
    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
    <SortedDescendingCellStyle BackColor="#E9EBEF" />
    <SortedDescendingHeaderStyle BackColor="#4870BE" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [firstName], [lastName], [doa], [Id] FROM [student]"></asp:SqlDataSource>
        <br />
<asp:Button ID="Button1" class="btn btn-default" runat="server" Text="Add record" />
        <br />
        <br />
<br />
Details of&nbsp; Selected Student:<br />
<asp:Label ID="Label1" runat="server" Text="Please select student to view detail"></asp:Label>
        <br />
<br />
<asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource2" GridLines="None" Height="75px" Width="291px" ForeColor="#333333">
    <AlternatingRowStyle BackColor="White" />
    <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
    <EditRowStyle BackColor="#2461BF" />
    <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
    <Fields>
        <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
        <asp:BoundField DataField="firstName" HeaderText="First Name" SortExpression="firstName" />
        <asp:BoundField DataField="middleName" HeaderText="Initial" SortExpression="middleName" />
        <asp:BoundField DataField="lastName" HeaderText="Last Name" SortExpression="lastName" />
        <asp:BoundField DataField="dob" DataFormatString="{0:dd MMMM yyyy}" HeaderText="Date of Birth" SortExpression="dob" />
        <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" />
        <asp:BoundField DataField="phone" HeaderText="Phone" SortExpression="phone" />
        <asp:BoundField DataField="doa" DataFormatString="{0:dd MMMM yyyy}" HeaderText="Date of Admission" SortExpression="doa" />
        <asp:BoundField DataField="lastSchool" HeaderText="Last School Attended" SortExpression="lastSchool" />
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
    </Fields>
    <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#EFF3FB" />
</asp:DetailsView>
        <br />
        <br />
<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [student] WHERE [Id] = @Id" InsertCommand="INSERT INTO [student] ([Id], [firstName], [middleName], [lastName], [dob], [address], [phone], [doa], [lastSchool]) VALUES (@Id, @firstName, @middleName, @lastName, @dob, @address, @phone, @doa, @lastSchool)" SelectCommand="SELECT * FROM [student] WHERE ([Id] = @Id)" UpdateCommand="UPDATE [student] SET [firstName] = @firstName, [middleName] = @middleName, [lastName] = @lastName, [dob] = @dob, [address] = @address, [phone] = @phone, [doa] = @doa, [lastSchool] = @lastSchool WHERE [Id] = @Id">
    <DeleteParameters>
        <asp:Parameter Name="Id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Id" Type="Int32" />
        <asp:Parameter Name="firstName" Type="String" />
        <asp:Parameter Name="middleName" Type="String" />
        <asp:Parameter Name="lastName" Type="String" />
        <asp:Parameter DbType="Date" Name="dob" />
        <asp:Parameter Name="address" Type="String" />
        <asp:Parameter Name="phone" Type="String" />
        <asp:Parameter DbType="Date" Name="doa" />
        <asp:Parameter Name="lastSchool" Type="String" />
    </InsertParameters>
    <SelectParameters>
        <asp:ControlParameter ControlID="GridView1" Name="Id" PropertyName="SelectedValue" Type="Int32" />
    </SelectParameters>
    <UpdateParameters>
        <asp:Parameter Name="firstName" Type="String" />
        <asp:Parameter Name="middleName" Type="String" />
        <asp:Parameter Name="lastName" Type="String" />
        <asp:Parameter DbType="Date" Name="dob" />
        <asp:Parameter Name="address" Type="String" />
        <asp:Parameter Name="phone" Type="String" />
        <asp:Parameter DbType="Date" Name="doa" />
        <asp:Parameter Name="lastSchool" Type="String" />
        <asp:Parameter Name="Id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
        </form>
</asp:Content>

