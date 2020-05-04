<%@ Page Title="" Language="C#" MasterPageFile="~/connected.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="ASP_Gallery.WebForm3" %>

<%@ Register TagPrefix="recaptcha" Namespace="Recaptcha" Assembly="Recaptcha" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container ">
        <div class="columns">

            <div class="column">
                <div class="container"></div>
            </div>

            <div class="column">

                <div class=" has-text-centered single-spaced card" style="top: 92px; bottom: 92px;">

                    <h2 class="subtitle is-3 has-text-weight-light has-text-black"></h2>
                    <%--<h1 class="title is-1 has-text-black">register</h1>--%>

                    <h1 class="subtitle is-3 has-text-weight-light has-text-black"></h1>

                    <div class="field">
                        <div class="control has-icons-left has-icons-right">

                            <asp:TextBox ID="username" class="input" type="text" placeholder="Username" runat="server" OnTextChanged="username_TextChanged" AutoPostBack="true"></asp:TextBox>

                            <span class="icon is-small is-left">
                                <i class="fas fa-user"></i>
                            </span>

                        </div>
                        <asp:Label ID="username_available" class="help is-danger" Text="" runat="server" />



                    </div>

                    <div class="field">
                        <div class="control has-icons-left has-icons-right">

                            <asp:TextBox ID="email" class="input" type="email" placeholder="Email" runat="server" OnTextChanged="email_TextChanged" AutoPostBack="True"></asp:TextBox>

                            <span class="icon is-small is-left">
                                <i class="fas fa-envelope"></i>
                            </span>

                        </div>
                        <asp:Label ID="email_available" class="help is-danger" Text="" runat="server" />

                    </div>
                    <div class="field">
                        <div class="control has-icons-left">


                            <asp:TextBox ID="password" class="input" type="password" placeholder="password" runat="server" AutoPostBack="True" OnTextChanged="password_TextChanged"></asp:TextBox>


                            <span class="icon is-small is-left">
                                <i class="fas fa-lock"></i>
                            </span>
                        </div>






                        <asp:Button Text="submit" class="button is-info" runat="server" ID="submit" OnClick="submit_Click" />
                    </div>

                </div>





            </div>

            <div class="column">
    
                <div class="container">
                    <input type="hidden" id="recaptcha" name="recaptcha" />
                </div>
            </div>


        </div>

    </div>

</asp:Content>

