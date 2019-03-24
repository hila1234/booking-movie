<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<center>
    <h1>
    <asp:Label ID="Label2" runat="server" Text="" style="font-weight: 700; color: #000066" ></asp:Label>
    </h1>
    </center>

<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box 
    }

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
 
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

/* Set a style for all buttons */
button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

button:hover {
  opacity:1;
}

/* Extra styles for the cancel button */
.cancelbtn {
  padding: 14px 20px;
  background-color: #f44336;
}

/* Float cancel and signup buttons and add an equal width */
.cancelbtn, .signupbtn {
  float: left;
  color: #FFFFFF;
        background-color: #4CAF50;
        text-align: center;
        font-weight: 700;
        margin-bottom: 19px;
        margin-right: 0px;
    }

/* Add padding to container elements */
.container {
  padding: 16px;
}

/* Clear floats */
.clearfix::after {
  content: "";
  clear: both;
  display: table;
}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
  .cancelbtn, .signupbtn {
     width: 100%;
  }
}
    .style1
    {
        text-align: right;
    }
    

    .style2
    {
        width: 322px;
    }
    .style3
    {
        width: 137px;
    }
    

</style>


 
  <div class="container" dir="rtl">
   <div class="style1">
   <table border="0" cellpadding="0" cellspacing="0">
    <tr>
        <th colspan="3">
            הרשמה
        </th>
    </tr>
    <tr>
        <td class="style3">
            תעודת זהות
        </td>
        <td class="style2">
            <asp:TextBox ID="idUser" runat="server" placeholder=" תעודת זהות" />
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ErrorMessage="*" 
            ForeColor="Red" ControlToValidate="idUser" runat="server" />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator5"
             ControlToValidate="idUser" runat="server"
             ErrorMessage="התעודת זהות לא תקינה" ForeColor="Red"
             ValidationExpression="^[0-9](?:[ -]?[0-9]){7,8}$"> 
             </asp:RegularExpressionValidator>

        </td>
    </tr>
    <tr>
        <td class="style3">
            שם משתמש
        </td>
        <td class="style2">
            <asp:TextBox ID="userNametxt" runat="server" placeholder="שם משתמש"  />
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ErrorMessage="*" 
            ForeColor="Red" ControlToValidate="userNametxt" runat="server" />
        </td>
    </tr>
    <tr>
        <td class="style3">
            שם פרטי
        </td>
        <td class="style2">
            <asp:TextBox ID="txtFirstname" runat="server" placeholder="שם פרטי"  />
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ErrorMessage="*" 
            ForeColor="Red" ControlToValidate="txtFirstname" runat="server" />
        </td>
    </tr>
     <tr>
        <td class="style3">
           שם משפחה
        </td>
        <td class="style2">
            <asp:TextBox ID="txtLastname" runat="server" placeholder="שם משפחה" />
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ErrorMessage="*"
             ForeColor="Red" ControlToValidate="txtLastname" runat="server" />
        </td>
    </tr>
     <tr>
        <td class="style3">
            סיסמה
        </td>
        <td class="style2">
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="סיסמה"  />
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ErrorMessage="*" 
            ForeColor="Red" ControlToValidate="txtPassword"  runat="server" />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" ForeColor="Red"
             runat="server" ErrorMessage="חמישה תווים מינימלים לסיסמה"
              ControlToValidate="txtPassword" ValidationExpression="^.{5,100}$">
            </asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="style3">
            אימות סיסמה
        </td>
        <td class="style2">
            <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password"  placeholder="אימות סיסמה " />
        </td>
        <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ErrorMessage="*" 
            ForeColor="Red" ControlToValidate="txtConfirmPassword"  runat="server" />
            <asp:CompareValidator ID="CompareValidator1" ErrorMessage="הסיסמה לא תואמת" 
            ForeColor="Red" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword"
             runat="server" />
              </td>
    </tr>
    <tr>
        <td class="style3">
            אימייל
        </td>
        <td class="style2">
            <asp:TextBox ID="txtEmail" runat="server"  placeholder="אימייל " />
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ErrorMessage="*"
           ForeColor="Red"  ControlToValidate="txtEmail" runat="server" />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
            ValidationExpression="^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$" 
            ControlToValidate="txtEmail" ForeColor="Red" ErrorMessage="כתובת האימייל לא תקינה" />
          
        
        </td>
    </tr>
     <tr>
        <td class="style3">
            מספר טלפון
        </td>
        <td class="style2">
            <asp:TextBox ID="phone" runat="server" placeholder="טלפון" />
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ErrorMessage="*"
            ForeColor="Red"  ControlToValidate="phone" runat="server" />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
           
            ValidationExpression="^([\(]{1}[0-9]{3}[\)]{1}[\.| |\-]{0,1}|^[0-9]{3}[\.|\-| ]?)?[0-9]{3}(\.|\-| )?[0-9]{4}$"
            ControlToValidate="phone" ForeColor="Red" ErrorMessage="מספר הטלפון לא תקין" />
        </td>
    </tr>
    <tr>
        <td class="style3">
            תאריך לידה
        </td>
       <td class="style2">
       <asp:TextBox ID="datetxt" runat="server" placeholder="DD/MM/YYYY" ></asp:TextBox>
           <td>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ErrorMessage="*"
              ForeColor="Red"  ControlToValidate="datetxt" runat="server" />

         <asp:RegularExpressionValidator ID="RegularExpressionValidator8"
             runat="server" ForeColor="Red"
             ControlToValidate="datetxt" ErrorMessage="התאריך לא תקין וצריך להיות כתוב כך DD/MM/YYYY"
             ValidationExpression="^(3[01]|[12][0-9]|0?[1-9])/(1[0-2]|0?[1-9])/(?:[0-9]{2})?[0-9]{2}$"></asp:RegularExpressionValidator>
             </td>
       </td>
    </tr>
    <tr>
        <td class="style3">
        </td>
        <td class="style2">class="signupbtn" Height="51px" style="direction: ltr"
            <asp:Button ID="Button1" runat="server" Text="Button" 
                onclick="Button1_Click1" />
        </td>
        <td>
        <div dir="rtl">
    </div>
        </td>
    </tr>
</table>

    </div>

      <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
  </div>

</asp:Content>

