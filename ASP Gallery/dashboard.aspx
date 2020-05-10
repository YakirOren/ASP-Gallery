<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="ASP_Gallery.WebForm10" EnableSessionState="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <%@ Import Namespace="ASP_Gallery.appCode" %>
    <%@ Import Namespace="System.Data" %>

    <section class="hero is-info welcome is-small">
        <div class="hero-body">
            <div class="container">

                <div class="title">
                    <%: "Hello, " + this.username + "."%>
                </div>

            </div>
        </div>
    </section>
    <section class="info-tiles">
        <div class="tile is-ancestor has-text-centered">
            <div class="tile is-parent">
                <article class="tile is-child box">
                    <p class="title"><%: DatabaseAccess.getAllUsers().Rows.Count %></p>
                    <p class="subtitle">Users</p>
                </article>
            </div>
            <div class="tile is-parent">
                <article class="tile is-child box">
                    <p class="title"><%: DatabaseAccess.getAllPictures().Rows.Count %></p>
                    <p class="subtitle">pictures</p>
                </article>
            </div>
            <div class="tile is-parent">
                <article class="tile is-child box">
                    <p class="title"><%: DatabaseAccess.getAllAlbums().Rows.Count %></p>
                    <p class="subtitle">Albums</p>
                </article>
            </div>
            <div class="tile is-parent">
                <article class="tile is-child box">
                    <p class="title"><%: DatabaseAccess.getAllTags().Rows.Count %></p>
                    <p class="subtitle">Tags</p>
                </article>
            </div>
        </div>
    </section>
    
</asp:Content>
