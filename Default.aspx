<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form runat ="server" >
        
        <asp:Label runat="server" Text="Student List"></asp:Label>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowSorting="True" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" GridLines="Horizontal">
    <AlternatingRowStyle BackColor="#F7F7F7" />
    <Columns>
        <asp:CommandField ShowSelectButton="True" />
        <asp:BoundField DataField="firstName" HeaderText="firstName" SortExpression="firstName" />
        <asp:BoundField DataField="lastName" HeaderText="lastName" SortExpression="lastName" />
        <asp:BoundField DataField="doa" HeaderText="Date of Admission" SortExpression="doa" DataFormatString="{0:dd MMMM yyyy}" />
        <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" Visible="False" />
    </Columns>
    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
    <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
    <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
    <SortedAscendingCellStyle BackColor="#F4F4FD" />
    <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
    <SortedDescendingCellStyle BackColor="#D8D8F0" />
    <SortedDescendingHeaderStyle BackColor="#3E3277" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [firstName], [lastName], [doa], [Id] FROM [student]"></asp:SqlDataSource>
<asp:Button ID="Button1" runat="server" Text="Add record" />
<br />
Details of&nbsp; Selected Student:<br />
<asp:Label ID="Label1" runat="server" Text="Please select student to view detail"></asp:Label>
<br />
<asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource2" GridLines="Horizontal" Height="50px" Width="125px">
    <AlternatingRowStyle BackColor="#F7F7F7" />
    <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
    <Fields>
        <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
        <asp:BoundField DataField="firstName" HeaderText="firstName" SortExpression="firstName" />
        <asp:BoundField DataField="middleName" HeaderText="middleName" SortExpression="middleName" />
        <asp:BoundField DataField="lastName" HeaderText="lastName" SortExpression="lastName" />
        <asp:BoundField DataField="dob" DataFormatString="{0:dd MMMM yyyy}" HeaderText="Date of Birth" SortExpression="dob" />
        <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
        <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
        <asp:BoundField DataField="doa" DataFormatString="{0:dd MMMM yyyy}" HeaderText="Date of Admission" SortExpression="doa" />
        <asp:BoundField DataField="lastSchool" HeaderText="lastSchool" SortExpression="lastSchool" />
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
    </Fields>
    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
    <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
    <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
</asp:DetailsView>
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

