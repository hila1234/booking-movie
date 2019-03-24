<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="LogIn.aspx.cs" Inherits="LogIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Login ID="Login1" runat="server" onauthenticate="Login1_Authenticate">
        <LayoutTemplate>
            <table cellpadding="1" cellspacing="0" style="border-collapse:collapse;">
                <tr>
                    <td>
                        <table cellpadding="0">
                            <tr>
                                <td align="center" colspan="2">
                                    Log In</td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 117px">
                                    <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">תעודת זהות:</asp:Label>
                                </td>
                                <td>
                                   <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" 
                                        ControlToValidate="UserName" ErrorMessage="User Name is required." 
                                        ToolTip="User Name is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                               <asp:RegularExpressionValidator
                                          ID="RegularExpressionValidator5"
                                           ControlToValidate="UserName"
                                            runat="server" 
                                            ErrorMessage="התעודת זהות לא תקינה"
                                             ForeColor="Red" 
                                             ValidationExpression="^[0-9](?:[ -]?[0-9]){7,8}$"> 
                                     </asp:RegularExpressionValidator>
                            
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 117px">
                                    <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">סיסמה:</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="Password" runat="server" TextMode="Password" ></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" 
                                        ControlToValidate="Password" ErrorMessage="Password is required." 
                                        ToolTip="Password is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:CheckBox ID="RememberMe" runat="server" Text="זכור אותי לפעם הבאה" />
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2" style="color:Red;">
                                    <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" colspan="2">
                                    <asp:Button ID="LoginButton" runat="server" CommandName="Login" Text="Log In" 
                                        ValidationGroup="Login1" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>


    </asp:Login>
</asp:Content>

