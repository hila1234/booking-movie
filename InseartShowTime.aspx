<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="InseartShowTime.aspx.cs" Inherits="InseartShowTime" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<center>
    <asp:Label ID="Label1" runat="server" Text="הכנס שעות הקרנה" 
        style="font-size: large; font-weight: 700"></asp:Label>
        <br />
        <asp:Label ID="lblMessage" runat="server" Text="" 
        style="font-size: medium; color: #FF0000"></asp:Label></center>
    <table style="width: 82%;">
        <tr>
            <td>
               הכנס מספר מספר שעת הקרנה
            </td>
            <td>
               <asp:TextBox ID="txtNumHourTime" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                 runat="server" ErrorMessage="*"  ForeColor="Red"
                 ControlToValidate="txtNumHourTime">
                 </asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator 
                ID="RegularExpressionValidator1" 
                runat="server" ErrorMessage="הכנס מספר" 
                ValidationExpression="\b[0-9]+\b"
                ControlToValidate="txtNumHourTime">
                </asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
               הכנס שעה 
            </td>
            <td>
                <asp:TextBox ID="txtHour" runat="server" placeholder="01:00"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtHour"
                 runat="server" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" 
                 runat="server" ControlToValidate="txtHour"
                 ErrorMessage="הכנס שעה מהפורמט 00:01"
                 ValidationExpression="([01]?[0-9]|2[0-3]):[0-5][0-9]" >
                 </asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
        <td>
        <asp:Button ID="Button1" runat="server" Text="הכנס" onclick="Button1_Click" />
                 </td>
             </tr>
    </table>
   
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" 
                SortExpression="id" />
            <asp:BoundField DataField="hour" HeaderText="hour" SortExpression="hour" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [num_show_time]"></asp:SqlDataSource>
</asp:Content>

