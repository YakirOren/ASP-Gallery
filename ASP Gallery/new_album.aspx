<%@ Page Title="" Language="C#" MasterPageFile="~/connected.Master" AutoEventWireup="true" CodeBehind="new_album.aspx.cs" Inherits="ASP_Gallery.WebForm8" enableSessionState="true"%>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container ">
        <div class="columns">

            <div class="column">
                <div class="container"></div>
            </div>

            <div class="column">

                <div class=" has-text-centered card" style="top: 92px; bottom: 92px;">
                    <h2 class="subtitle is-3 has-text-weight-light has-text-black"></h2>
                    <%--<h1 class="title is-1 has-text-black">Welcome</h1>--%>

                    <h1 class="subtitle is-3 has-text-weight-light has-text-black"></h1>


                    <div class="field">
                        <p class="control has-icons-left">
                            <asp:TextBox ID="album_name" class="input" type="text" placeholder="Album name" runat="server"></asp:TextBox>

                            <span class="icon is-small is-left">
                                <i class="fas fa-quote-right"></i>
                            </span>
                        </p>
                    </div>


                    <div class="field">
                        <div class="control has-icons-left has-icons-right">

                        </div>
                        <asp:Label ID="StatusLabel" class="help is-danger" Text="" runat="server" />

                    </div>

                    <div class="field center">
                        <p class="control">
                            <asp:Button ID="submit_button" class="button is-primary" Text="Create" runat="server" OnClick="submit_button_Click" />

                        </p>
                    </div>




                </div>

            </div>

            <div class="column">
                <div class="container"></div>
            </div>


        </div>

    </div>



</asp:Content>
