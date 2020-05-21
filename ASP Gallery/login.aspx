<%@ Page Title="" Language="C#" MasterPageFile="~/connected.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="ASP_Gallery.WebForm4" EnableSessionState="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container ">
        <div class="columns">

            <div class="column">
                <div class="container"></div>
            </div>

            <div class="column">

                <div class=" has-text-centered card" style="top: 92px; bottom: 92px;">
                    <h2 class="subtitle is-3 has-text-weight-light has-text-black"></h2>
                    <h1 class="subtitle is-3 has-text-weight-light has-text-black"></h1>

                    <div class="field">
                        <div class="control has-icons-left has-icons-right">

                            <asp:TextBox ID="username" class="input" type="text" placeholder="Username" runat="server"></asp:TextBox>

                            <span class="icon is-small is-left">
                                <i class="fas fa-user"></i>
                            </span>

                        </div>
                        <asp:Label ID="username_available" class="help is-danger" Text="" runat="server" />

                    </div>
                    <div class="field">
                        <p class="control has-icons-left">
                            <asp:TextBox ID="password" class="input" type="password" placeholder="Password" runat="server"></asp:TextBox>

                            <span class="icon is-small is-left">
                                <i class="fas fa-lock"></i>
                            </span>
                        </p>
                    </div>
                    <div class="columns">
                        <div class="column">
                            <div class="container"></div>
                        </div>
                        <div class="field">
                            <p class="control">
                                <asp:Button ID="login_button" class="button is-success" Text="Login" runat="server" OnClick="login_button_Click" />
                            </p>
                        </div>
                        <div class="column">
                            <div class="container"></div>
                        </div>

                    </div>
                </div>

            </div>

            <div class="column">
                <div class="container"></div>
            </div>


        </div>

    </div>
</asp:Content>
