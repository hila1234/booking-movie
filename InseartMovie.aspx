<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="InseartMovie.aspx.cs" Inherits="InseartMovie" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div dir="rtl" style="font-size: large">
<center>
    <asp:Label ID="lblMessage" runat="server" Text="" 
        style="font-size: large; font-weight: 700; color: #000066; font-family: 'Guttman Vilna'; text-align: center"></asp:Label>
   </center>
    <table style="width: 100%;">
        <tr>
            <td>
                 שם סרט
            </td>
            <td>
                <asp:TextBox ID="txtNameMovie" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ErrorMessage="*" ForeColor="Red" ControlToValidate="txtNameMovie"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                 קטגוריה
            </td>
            <td>
            <asp:DropDownList ID="DropDownListCategory" runat="server" 
                    DataSourceID="SqlDataSource1" DataTextField="name_category" 
                    DataValueField="id_category">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [category]"></asp:SqlDataSource>
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                 אורך סרט בדקות
            </td>
            <td>
                <asp:TextBox ID="txtLengthMovie" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
                runat="server" ErrorMessage="*" ForeColor="Red"
               ControlToValidate="txtLengthMovie"  ></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator 
                ID="RegularExpressionValidator3" 
                runat="server"
                ControlToValidate="txtLengthMovie"
                ValidationExpression="\b[0-9]+\b"
                ErrorMessage="הכנס מספר">
                </asp:RegularExpressionValidator>

            </td>
        </tr>
        <tr>
            <td>
                שחקנים
            </td>
            <td>
                <asp:TextBox ID="txtActors" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" 
                runat="server" ErrorMessage="*" ForeColor="Red"
               ControlToValidate="txtActors"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
               הכנסת תמונה
            </td>
            <td>
                <asp:FileUpload ID="FileUploadImage" runat="server" />
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" 
                runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="FileUploadImage">
                </asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                 ErrorMessage="הקובץ לא תקין, נא להכניס תמונה" ControlToValidate="FileUploadImage"
                 ValidationExpression="([^\s]+(\.(?i)(jpe?g|png|gif|bmp))$)" >
                 </asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
        הנחה שהמנהל מכניס קישור מיוטיוב
            <td>
               הכנס טריילר
            </td>
            <td>
                <asp:FileUpload ID="FileUploadVideo" runat="server" />
                <asp:TextBox ID="TextBoxVideo" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5"
                 runat="server" 
                 ControlToValidate="TextBoxVideo" ErrorMessage="*" ForeColor="Red" >
                 </asp:RequiredFieldValidator>
             <!--   <asp:RegularExpressionValidator 
                ID="RegularExpressionValidator2"
                 ControlToValidate="FileUploadVideo"
                 runat="server" 
                 ErrorMessage="Only .avi, .mpg, .wav, .mid, .wmv, .asf and .mpeg Video formats are allowed." 
                 ValidationExpression="/^(([a-zA-Z]:)|(\\{2}\w+)\$?)(\\(\w[\w].*))+(.avi|.AVI|.WMV|.wmv|.wav|.WAV|.mpg|.MPG|.mid|.MID|.asf|.ASF|.mpeg|.MPEG)$/"></asp:RegularExpressionValidator>
          -->  </td>
        </tr>
           <tr>
            <td>
             <asp:Button ID="Button1" runat="server" Text="העלה" style="text-align: right" 
                    onclick="Button1_Click"  />
            </td>
            <td>
             
            </td>
            <td>
            </td>
        </tr>
        
    </table>
    <br />

</div>
</asp:Content>

