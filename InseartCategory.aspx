<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="InseartCategory.aspx.cs" Inherits="InseartCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div dir="rtl">
<center>
    <asp:Label ID="Label1" runat="server" Text="הכנסת קטגוריה ועריכה " 
        style="font-size: large; font-weight: 700"></asp:Label></center>
    <table style="width: 73%;">
        <tr>
            <td>
               הכנס מספר קטגוריה 
            </td>
            <td>
               <asp:TextBox ID="txtIntCategory" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                 runat="server" ErrorMessage="*"  ForeColor="Red"
                 ControlToValidate="txtIntCategory">
                 </asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator 
                ID="RegularExpressionValidator1" 
                runat="server" ErrorMessage="הכנס מספר" 
                ValidationExpression="\b[0-9]+\b"
                ControlToValidate="txtIntCategory">
                </asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
               הכנס שם קטגוריה 
            </td>
            <td>
                <asp:TextBox ID="txtNameCategory" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtNameCategory"
                 runat="server" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                 <asp:Button ID="Button1" runat="server" Text="הכנס" onclick="Button1_Click" />
                 <br />
                <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
            </td>
           
        </tr>
    </table>
    </div>
    <asp:Repeater ID="Repeater1" runat="server" >
    <HeaderTemplate>
     <table  border="1" >
           
                <td style="width: 50%;" >
                    מספר קטגוריה
                </td> 
              <td style="width: 50%;">
                    שם קטגוריה
                </td>
     </table>
    </HeaderTemplate>
    <ItemTemplate>
        <table  border="1" >
            <tr>
             <td >
                    <asp:Label ID="lblNumCategory"
                     runat="server" Text='<%#Eval("id_category") %>'></asp:Label>
                </td>
           
           
                <td >
                     <asp:Label ID="lblName" runat="server"  
                     Text='<%#Eval("name_category") %>'>
                                    </asp:Label>
             
             </tr>
        </table>
    </ItemTemplate>
    </asp:Repeater>
</asp:Content>

