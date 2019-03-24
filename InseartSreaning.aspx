<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="InseartSreaning.aspx.cs" Inherits="InseartSreaning" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<center>
    <asp:Label ID="Label1" runat="server" Text="הכנס הקרנה" 
        style="font-size: large; font-weight: 700"></asp:Label>
        <br />
        <asp:Label ID="lblMessage" runat="server" Text="" 
        style="font-size: medium; color: #FF0000"></asp:Label></center>
    <table style="width: 82%;">
        <tr>
            <td>
              (הנחה שלכל שם סרט יש id שונה)   הכנס שם סרט
            </td>
            <td>
                <asp:DropDownList ID="ddlNameMovie" runat="server" 
                    DataSourceID="SqlDataSource1" DataTextField="name_movie" 
                    DataValueField="id_movie">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [id_movie], [name_movie] FROM [movie]">
                </asp:SqlDataSource>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                 runat="server" ErrorMessage="*"  ForeColor="Red"
                 ControlToValidate="ddlNameMovie"> </asp:RequiredFieldValidator>
                  </td>
        </tr>
        <tr>
            <td>
               הכנס אולם 
            </td>
            <td>
                <asp:DropDownList ID="ddlHall" runat="server" 
                    DataSourceID="SqlDataSource2" DataTextField="name_hall" 
                    DataValueField="id_hall">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [id_hall], [name_hall] FROM [Hall]">
                </asp:SqlDataSource>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="ddlHall"
                 runat="server" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                
            </td>
        </tr>
         <tr>
            <td>
         (צריך לעשו בדיקות תקינות לכך שיהיו תאריכים עתידיים בלבד )
              הכנס תאריך הקרנה 
            </td>
            <td>
                <asp:TextBox ID="txtDateScreaning" runat="server" placeholder="dd/mm/yyyy"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtDateScreaning"
                 runat="server" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator1"
             runat="server" ForeColor="Red"
             ControlToValidate="txtDateScreaning" 
             ErrorMessage="התאריך לא תקין וצריך להיות כתוב כך DD/MM/YYYY"
             ValidationExpression="^(3[01]|[12][0-9]|0?[1-9])/(1[0-2]|0?[1-9])/(?:[0-9]{2})?[0-9]{2}$"></asp:RegularExpressionValidator>
            
            </td>
        </tr>
         <tr>
            <td>
              הכנס שעת הקרנה 
            </td>
            <td>
                <asp:DropDownList ID="ddlShowTime" runat="server" 
                    DataSourceID="SqlDataSource3" DataTextField="hour" DataValueField="id">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [id], [hour] FROM [num_show_time]">
                </asp:SqlDataSource>
            </td>
            <td>
              
              </td>
        </tr>
        <tr>
        <td>
        <asp:Button ID="Button1" runat="server" Text="הכנס" onclick="Button1_Click" />
                 </td>
             </tr>
    </table>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="id_screening" DataSourceID="SqlDataSource4">
        <Columns>
            <asp:BoundField DataField="id_screening" HeaderText="id_screening" 
                InsertVisible="False" ReadOnly="True" SortExpression="id_screening" />
            <asp:BoundField DataField="id_movie" HeaderText="id_movie" 
                SortExpression="id_movie" />
            <asp:BoundField DataField="id_hall" HeaderText="id_hall" 
                SortExpression="id_hall" />
            <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
            <asp:BoundField DataField="id_show_time" HeaderText="id_show_time" 
                SortExpression="id_show_time" />
        </Columns>
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [sreening]"></asp:SqlDataSource>

</asp:Content>

