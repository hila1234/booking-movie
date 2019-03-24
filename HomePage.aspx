<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="HomePage" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:Repeater ID="Repeater1" runat="server" >

    <ItemTemplate>
        <table style=" border:1; width: 50%;">
        <tr>
        <td>
        <!-- סרטון טריילר -->
           
        <source src='<%#Eval("video")%>' type=" video/mp4;  " />
        <a href='<%#Eval("video")%>'></a>
        </td>
              </tr>
                 <tr>
             <td>
                     <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("photo") %>' />
                </td>

            </tr>
            <tr>
            <td>
                <asp:Label ID="Label6" runat="server" Text="שם הסרט:"></asp:Label>
            </td>
                <td>   
                    <asp:Label ID="Label1" runat="server" Text='<%#Eval("name_movie")%>'></asp:Label>
                </td>
              </tr>
         
            <tr>
             <td>
                 <asp:Label ID="Label7" runat="server" Text="קטגוריה:"></asp:Label>
         </td>
                <td>
                    <asp:Label ID="Label2" runat="server" Text='<%#Eval("category") %>'></asp:Label>
                </td>
            </tr>
             <tr>
               <td>
                 <asp:Label ID="Label8" runat="server" Text="אורך"></asp:Label>
         </td>
                <td>
                    <asp:Label ID="Label3" runat="server" Text='<%#Eval("lenth") %>'></asp:Label>
                </td>
            </tr>
              <tr>
                <td>
                 <asp:Label ID="Label9" runat="server" Text="שחקנים:"></asp:Label>
         </td>
                <td>
                    <asp:Label ID="Label4" runat="server" Text='<%#Eval("actors") %>'></asp:Label>
                </td>
            </tr>
        </table>
         </ItemTemplate>
    </asp:Repeater>

</asp:Content>

