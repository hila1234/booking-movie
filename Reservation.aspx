<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Reservation.aspx.cs" Inherits="Reservation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<style>
#holder{    
height:200px;    
width:550px;
background-color:#F5F5F5;
border:1px solid #A4A4A4;
margin-left:10px;   
}
#place {
position:relative;
margin:7px;
}
#place a{
font-size:0.6em;
}
#place li
{
 list-style: none outside none;
 position: absolute;   
}    
#place li:hover
{
background-color:yellow;      
} 
#place .seat{
background:url("images/available_seat_img.gif") no-repeat scroll 0 0 transparent;
height:33px;
width:33px;
display:block;   
}
#place .selectedSeat
{ 
background-image:url("images/booked_seat_img.gif");          
}
#place .selectingSeat
{ 
background-image:url("images/selected_seat_img.gif");        
}
#place .row-3, #place .row-4{
margin-top:10px;
}
#seatDescription li{
verticle-align:middle;    
list-style: none outside none;
padding-left:35px;
height:35px;
float:left;
}
</style>
    <asp:Wizard ID="Wizard1" runat="server" CssClass="documentation.css">
        <WizardSteps>
            <asp:WizardStep ID="WizardStep1" runat="server" Title="בחור סרט">
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    DataSourceID="SqlDataSource1" DataTextField="name_movie" 
                    DataValueField="id_movie">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [name_movie], [id_movie] FROM [movie]">
                </asp:SqlDataSource>
            </asp:WizardStep>
            <asp:WizardStep ID="WizardStep2" runat="server" Title="בחור תאריך ושעה">
            </asp:WizardStep>
             <asp:WizardStep ID="WizardStep3" runat="server" Title="בחור מקום ישיבה וכמות כרטיסים">
             
<h2> Choose seats by clicking the corresponding seat in the layout below:</h2>
    <div id="holder"> 
        <ul  id="place">
        </ul>    
    </div>
    <div style="float:left;"> 
    <ul id="seatDescription">
        <li style="background:url('images/available_seat_img.gif') no-repeat scroll 0 0 transparent;">Available Seat</li>
        <li style="background:url('images/booked_seat_img.gif') no-repeat scroll 0 0 transparent;">Booked Seat</li>
        <li style="background:url('images/selected_seat_img.gif') no-repeat scroll 0 0 transparent;">Selected Seat</li>
    </ul>
    </div>
        <div style="clear:both;width:100%">
        <input type="button" id="btnShowNew" value="Show Selected Seats" />
        <input type="button" id="btnShow" value="Show All" />           
        </div>
            </asp:WizardStep>
             <asp:WizardStep ID="WizardStep4" runat="server" Title="תשלום">
            </asp:WizardStep>
        </WizardSteps>
    </asp:Wizard>
</asp:Content>

