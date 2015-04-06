<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Default2.aspx.vb" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form  id="form1" runat ="server" class ="form-inline">
        <div class="form-group ">
    <p>
        First Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" CssClass="form-control " runat="server" Width="210px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="First Name Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </p>
    <p>
        Initial :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox class="form-control" ID="TextBox2" runat="server" Width="211px"></asp:TextBox>
    </p>
    <p>
        Last Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox class="form-control" ID="TextBox3" runat="server" Width="210px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="Last Name Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </p>
    <p>
        Date Of Birth:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox4" class="form-control" runat="server" Width="210px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="Date of birth required" ForeColor="Red"></asp:RequiredFieldValidator>
    </p>
    <p>
        Address:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox5" class="form-control" runat="server" Width="210px"></asp:TextBox>
    </p>
    <p>
        Phone:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox6" class="form-control" runat="server" Width="210px"></asp:TextBox>
    </p>
    <p>
        Date Of Admission:&nbsp;&nbsp;
        <asp:TextBox ID="TextBox7" class="form-control" runat="server" Width="210px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox7" ErrorMessage="Admission date required" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox4" ControlToValidate="TextBox7" ErrorMessage="Incorrect Admission date" Operator="GreaterThan"></asp:CompareValidator>
    </p>
    <p>
        Last School Attended
        <asp:TextBox ID="TextBox8" class="form-control" runat="server" Width="210px"></asp:TextBox>
    </p>
    <p style="margin-left: 200px">
        <asp:Button ID="Button1" class="btn btn-default"  runat="server" Text="Add" Width="66px" />
        </p>
            </div>
            </form>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   
        
</asp:Content>

