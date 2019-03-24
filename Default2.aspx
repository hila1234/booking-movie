<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    

        <h2>Index</h2> 

        <table>

            <tr>

                <th></th>

                <th>

                    Id

                </th>

                <th>

                    Title

                </th>

                <th>

                    Director

                </th>

                <th>

                    DateReleased

                </th>

            </tr> 

        <% foreach (var item in Model) { %>

            <tr>

                <td>

                    <%= Html.ActionLink("Edit", "Edit", new { id=item.Id }) %> |

                    <%= Html.ActionLink("Details", "Details", new { id=item.Id })%>

                </td>

                <td>

                    <%= Html.Encode(item.Id) %>

                </td>

                <td>

                    <%= Html.Encode(item.Title) %>

                </td>

                <td>

                    <%= Html.Encode(item.Director) %>

                </td>

                <td>

                    <%= Html.Encode(String.Format("{0:g}", item.DateReleased)) %>

                </td>

            </tr>

        <% } %> 

        </table> 

        <p>

            <%= Html.ActionLink("Create New", "Create") %>

        </p> 
</asp:Content>

