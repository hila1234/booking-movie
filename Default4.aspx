<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default4.aspx.cs" Inherits="Default4" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <asp:TextBox ID="TextBox1" Text="vddcv"  runat="server"></asp:TextBox>

    <style type="text/css">
        @media(max-width:840px) {
            .mobileGroupIndent {
                padding-top: 20px;
            }
        }
        .mobileAlign {
            text-align: center !important;
        }
        .maxWidth {
            max-width: 360px !important;
        }
        .fullHeight {
            height: 100% !important;
        }
        .fullWidth {
            width: 100% !important;
        }
    </style>
    <script type="text/javascript">
        var passwordMinLength = 6;
        function GetPasswordRating(password) {
            var result = 0;
            if (password) {
                result++;
                if (password.length >= passwordMinLength) {
                    if (/[a-z]/.test(password))
                        result++;
                    if (/[A-Z]/.test(password))
                        result++;
                    if (/\d/.test(password))
                        result++;
                    if (!(/^[a-z0-9]+$/i.test(password)))
                        result++;
                }
            }
            return result;
        }
        function OnPasswordTextBoxInit(s, e) {
            ApplyCurrentPasswordRating();
        }
        function OnPassChanged(s, e) {
            ApplyCurrentPasswordRating();
        }
        function ApplyCurrentPasswordRating() {
            var password = passwordTextBox.GetText();
            var passwordRating = GetPasswordRating(password);
            ApplyPasswordRating(passwordRating);
        }
        function ApplyPasswordRating(value) {
            ratingControl.SetValue(value);
            switch (value) {
                case 0:
                    ratingLabel.SetValue("Password safety");
                    break;
                case 1:
                    ratingLabel.SetValue("Too simple");
                    break;
                case 2:
                    ratingLabel.SetValue("Not safe");
                    break;
                case 3:
                    ratingLabel.SetValue("Normal");
                    break;
                case 4:
                    ratingLabel.SetValue("Safe");
                    break;
                case 5:
                    ratingLabel.SetValue("Very safe");
                    break;
                default:
                    ratingLabel.SetValue("Password safety");
            }
        }
        function GetErrorText(editor) {
            if (editor === passwordTextBox) {
                if (ratingControl.GetValue() === 1)
                    return "The password is too simple";
            } else if (editor === confirmPasswordTextBox) {
                if (passwordTextBox.GetText() !== confirmPasswordTextBox.GetText())
                    return "The password you entered do not match";
            }
            return "";
        }
        function OnPassValidation(s, e) {
            var errorText = GetErrorText(s);
            if (errorText) {
                e.isValid = false;
                e.errorText = errorText;
            }
        }
        function onControlsInitialized(s, e) {
            FormLayout.AdjustControl();
            var controls = ASPxClientControl.GetControlCollection().GetControlsByPredicate(function (c) {
                return c.GetParentControl() === FormLayout;
            });
            for (var i = 0; i < controls.length; i++) {
                var valEvt = controls[i].Validation;
                if (valEvt)
                    valEvt.AddHandler(onValidation);
            }
        }
        function onValidation(s, e) {
            setTimeout(function () { FormLayout.AdjustControl(); }, 0);
        }
    </script>

    <dx:aspxglobalevents runat="server" ID="GlobalEvents">
    
        <ClientSideEvents ControlsInitialized="onControlsInitialized" />
    </dx:aspxglobalevents>
    <dx:aspxformlayout ID="FormLayout" ClientInstanceName="FormLayout" 
        runat="server" RequiredMarkDisplayMode="Auto" UseDefaultPaddings="false" 
        AlignItemCaptionsInAllGroups="true" Width="100%" ColumnCount="2">
        <Paddings PaddingBottom="30" PaddingTop="10" />
        <Styles>
            <LayoutGroupBox CssClass="fullWidth fullHeight"></LayoutGroupBox>
            <LayoutGroup Cell-CssClass="fullHeight"></LayoutGroup>
        </Styles>
        <SettingsAdaptivity>
            <GridSettings WrapCaptionAtWidth="400">
            
                <Breakpoints>
                    <dx:LayoutBreakpoint ColumnCount="1" MaxWidth="790" Name="S" />
                </Breakpoints>
            </GridSettings>
        </SettingsAdaptivity>
        <Items>
            <dx:LayoutGroup Caption="Registration Data" GroupBoxDecoration="Box">
                <GridSettings WrapCaptionAtWidth="400"></GridSettings>
                <SpanRules>
                    <dx:SpanRule BreakpointName="S" ColumnSpan="1" RowSpan="1" />
                </SpanRules>
                <Items>
                    <dx:LayoutItem Caption="Name">
                        <LayoutItemNestedControlCollection>
                            <LayoutItemNestedControlContainer>
                                <ASPxTextBox ID="firstNameTextBox" runat="server" NullText="First Name" Width="100%" CssClass="maxWidth"> 
                                    <ValidationSettings Display="Dynamic" RequiredField-IsRequired="true" ErrorDisplayMode="Text" SetFocusOnError="true" ErrorTextPosition="Bottom" ErrorFrameStyle-Wrap="true"/>
                                </ASPxTextBox>
                            </dx:LayoutItemNestedControlContainer>
                        </LayoutItemNestedControlCollection>
                    </dx:LayoutItem>
                    <dx:LayoutItem Caption="Last Name">
                        <LayoutItemNestedControlCollection>
                            <dx:LayoutItemNestedControlContainer>
                                <dx:ASPxTextBox ID="lastNameTextBox" runat="server" NullText="Last Name" Width="100%" CssClass="maxWidth">
                                    <ValidationSettings Display="Dynamic" RequiredField-IsRequired="true" ErrorDisplayMode="Text" SetFocusOnError="true" ErrorTextPosition="Bottom" ErrorFrameStyle-Wrap="true"/>
                                </dx:ASPxTextBox>
                            </dx:LayoutItemNestedControlContainer>
                        </LayoutItemNestedControlCollection>
                    </dx:LayoutItem>
                    <dx:LayoutItem Caption="Gender">
                        <LayoutItemNestedControlCollection>
                            <dx:LayoutItemNestedControlContainer>
                                <dx:ASPxRadioButtonList ID="genderRadioButtonList" runat="server" RepeatDirection="Vertical" Width="100%" Paddings-Padding="0">
                                    <Items>
                                        <dx:ListEditItem Text="Male" Value="1" />
                                        <dx:ListEditItem Text="Female" Value="2" />
                                    </Items>
                                    <Border BorderColor="Transparent" />
                                </dx:ASPxRadioButtonList>
                            </dx:LayoutItemNestedControlContainer>
                        </LayoutItemNestedControlCollection>
                    </dx:LayoutItem>
                    <dx:LayoutItem Caption="Country">
                        <LayoutItemNestedControlCollection>
                            <dx:LayoutItemNestedControlContainer>
                                <dx:ASPxComboBox runat="server" ID="countryComboBox" DropDownStyle="DropDownList" IncrementalFilteringMode="StartsWith" CssClass="maxWidth"
                                    DataSourceID="CountriesDataSource" TextField="CountryName" ValueField="CountryName" />
                            </dx:LayoutItemNestedControlContainer>
                        </LayoutItemNestedControlCollection>
                    </dx:LayoutItem>
                </Items>
            </dx:LayoutGroup>
            <dx:LayoutGroup Caption="Authorization Data" GroupBoxDecoration="Box">
                <GridSettings WrapCaptionAtWidth="400"></GridSettings>
                <SpanRules>
                    <dx:SpanRule BreakpointName="S" ColumnSpan="1" RowSpan="1" />
                </SpanRules>
                <Items>
                    <dx:LayoutItem Caption="E-mail">
                        <LayoutItemNestedControlCollection>
                            <dx:LayoutItemNestedControlContainer>
                                <dx:ASPxTextBox runat="server" ID="eMailTextBox" CssClass="maxWidth">
                                    <ValidationSettings ErrorDisplayMode="Text" Display="Dynamic" ErrorTextPosition="Bottom" SetFocusOnError="true">
                                        <ErrorFrameStyle Wrap="True"/>
                                        <RegularExpression ErrorText="Invalid e-mail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" />
                                        <RequiredField IsRequired="True" ErrorText="The value is required" />
                                    </ValidationSettings>
                                </dx:ASPxTextBox>
                            </dx:LayoutItemNestedControlContainer>
                        </LayoutItemNestedControlCollection>
                    </dx:LayoutItem>
                    <dx:LayoutItem Caption="Password">
                        <LayoutItemNestedControlCollection>
                            <dx:LayoutItemNestedControlContainer>
                                <dx:ASPxTextBox ID="passwordTextBox" runat="server" ClientInstanceName="passwordTextBox" Password="true" CssClass="maxWidth">
                                    <ValidationSettings ErrorTextPosition="Bottom" ErrorDisplayMode="Text" Display="Dynamic" SetFocusOnError="true">
                                        <RequiredField IsRequired="True" ErrorText="The value is required" />
                                        <ErrorFrameStyle Wrap="True"/>
                                    </ValidationSettings>
                                    <ClientSideEvents Init="OnPasswordTextBoxInit" KeyUp="OnPassChanged" Validation="OnPassValidation" />
                                </dx:ASPxTextBox>
                            </dx:LayoutItemNestedControlContainer>
                        </LayoutItemNestedControlCollection>
                    </dx:LayoutItem>
                    <dx:LayoutItem Caption=" ">
                        <LayoutItemNestedControlCollection>
                            <dx:LayoutItemNestedControlContainer>
                                <div>
                                    <dx:ASPxRatingControl ID="ratingControl" runat="server" ReadOnly="true" ItemCount="5" Value="0" ClientInstanceName="ratingControl" />
                                </div>
                                <div style="padding-top: 10px; padding-bottom: 10px">
                                    <dx:ASPxLabel ID="ratingLabel" runat="server" ClientInstanceName="ratingLabel" Text="Password safety" />
                                </div>
                            </dx:LayoutItemNestedControlContainer>
                        </LayoutItemNestedControlCollection>
                    </dx:LayoutItem>
                    <dx:LayoutItem Caption="Confirm password">
                        <LayoutItemNestedControlCollection>
                            <dx:LayoutItemNestedControlContainer>
                                <dx:ASPxTextBox ID="confirmPasswordTextBox" runat="server" ClientInstanceName="confirmPasswordTextBox" Password="true" Width="100%" CssClass="maxWidth">
                                    <ValidationSettings ErrorTextPosition="Bottom" ErrorDisplayMode="Text" Display="Dynamic" SetFocusOnError="true">
                                        <RequiredField IsRequired="True" ErrorText="The value is required" />
                                        <ErrorFrameStyle Wrap="True"/>
                                    </ValidationSettings>
                                    <ClientSideEvents Validation="OnPassValidation" />
                                </dx:ASPxTextBox>
                            </dx:LayoutItemNestedControlContainer>
                        </LayoutItemNestedControlCollection>
                    </dx:LayoutItem>
                </Items>
            </dx:LayoutGroup>
            <dx:LayoutGroup ShowCaption="False" GroupBoxDecoration="Box" HorizontalAlign="Center" ColumnSpan="2">
                <ParentContainerStyle CssClass="mobileGroupIndent">
                </ParentContainerStyle>
                <SpanRules>
                    <dx:SpanRule BreakpointName="S" ColumnSpan="1" RowSpan="1" />
                </SpanRules>
                <Items>
                    <dx:LayoutItem ShowCaption="False" CssClass="mobileAlign" HorizontalAlign="Center">
                        <LayoutItemNestedControlCollection>
                            <dx:LayoutItemNestedControlContainer>
                                <dx:ASPxCaptcha runat="server" ID="captcha" TextBox-Position="Bottom" TextBox-ShowLabel="false" TextBoxStyle-Width="100%" Width="200">
                                    <RefreshButtonStyle Font-Underline="true"></RefreshButtonStyle>
                                    <ValidationSettings ErrorDisplayMode="Text" Display="Dynamic" SetFocusOnError="true">
                                        <RequiredField IsRequired="True" ErrorText="The value is required" />
                                    </ValidationSettings>
                                </dx:ASPxCaptcha>
                            </dx:LayoutItemNestedControlContainer>
                        </LayoutItemNestedControlCollection>
                    </dx:LayoutItem>
                    <dx:LayoutItem ShowCaption="False" CssClass="mobileAlign" HorizontalAlign="Center">
                        <NestedControlCellStyle CssClass="maxWidth"></NestedControlCellStyle>
                        <Paddings PaddingTop="12" />
                        <LayoutItemNestedControlCollection>
                            <dx:LayoutItemNestedControlContainer>
                                By clicking "Sign Up", you agree to the <a href="javascript:;">privacy policy</a> and the <a href="javascript:;">terms of use</a>
                            </dx:LayoutItemNestedControlContainer>
                        </LayoutItemNestedControlCollection>
                    </dx:LayoutItem>
                    <dx:LayoutItem HorizontalAlign="Center" ShowCaption="False" CssClass="btn">
                        <Paddings PaddingTop="20" />
                        <LayoutItemNestedControlCollection>
                            <dx:LayoutItemNestedControlContainer>
                                <dx:ASPxButton runat="server" ID="signUp" Text="Sign Up" Width="200px" CssClass="btn" />
                            </dx:LayoutItemNestedControlContainer>
                        </LayoutItemNestedControlCollection>
                    </dx:LayoutItem>
                </Items>
            </dx:LayoutGroup>
        </Items>
    </dx:aspxformlayout>
    <ef:entitydatasource ID="CountriesDataSource" runat="server" 
        ContextTypeName="DevExpress.Web.Demos.WorldCitiesContext" 
        EntitySetName="Countries" OrderBy="it.CountryName" />
</asp:Content>

