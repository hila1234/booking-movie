<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="InseartHall.aspx.cs" Inherits="InseartHall" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 
<center>
    <asp:Label ID="Label1" runat="server" Text="יצירת אולם " 
        style="font-size: large; font-weight: 700"></asp:Label>
        <br />
        <asp:Label ID="lblMessage" runat="server" Text="" 
        style="font-size: medium; color: #FF0000"></asp:Label></center>
    <table style="width: 82%;">
        <tr>
            <td>
               הכנס מספר כיסאות כולל באולם
            </td>
            <td>
               <asp:TextBox ID="txtNumSeat" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                 runat="server" ErrorMessage="*"  ForeColor="Red"
                 ControlToValidate="txtNumSeat">
                 </asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator 
                ID="RegularExpressionValidator1" 
                runat="server" ErrorMessage="הכנס מספר" 
                ValidationExpression="\b[0-9]+\b"
                ControlToValidate="txtNumSeat">
                </asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
               הכנס שם אולם 
            </td>
            <td>
                <asp:TextBox ID="txtNameHall" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtNameHall"
                 runat="server" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
        <td>
        <asp:Button ID="Button1" runat="server" Text="הכנס" onclick="Button1_Click" />
                 </td>
             </tr>
    </table>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="id_hall" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="id_hall" HeaderText="id_hall" InsertVisible="False" 
                ReadOnly="True" SortExpression="id_hall" />
            <asp:BoundField DataField="num_seats" HeaderText="num_seats" 
                SortExpression="num_seats" />
            <asp:BoundField DataField="name_hall" HeaderText="name_hall" 
                SortExpression="name_hall" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [Hall]"></asp:SqlDataSource>
   <!-- <asp:Repeater ID="Repeater1" runat="server"  >
        <ItemTemplate>
            <table style="width: 100%;">
                <tr>
                    <td>
                      מספר אולם
                    </td>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text='<%#Eval("id_hall") %>'></asp:Label>
                    </td>
                     </tr>
                <tr>
                    <td>
                       שם אולם
                    </td>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text='<%#Eval("num_seats") %>' ></asp:Label>
                    </td>
                    
                </tr>
                <tr>
                    <td>
                       מספר כסאות באולם
                    </td>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text='<%#Eval("name_hall") %>'></asp:Label>
                    </td>
                     </tr>
            </table>
        </ItemTemplate>
    </asp:Repeater>-->
</asp:Content>

