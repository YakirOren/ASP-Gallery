﻿<%@ Page Title="" Language="C#" MasterPageFile="~/connected.Master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="ASP_Gallery.WebForm6" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <%@ Import Namespace="ASP_Gallery.appCode" %>
    <%@ Import Namespace="System.Data" %>


    <link href="styles/admin.css" rel="stylesheet" />
    <div class="container">
        <div class="columns">
            <div class="column is-3 ">

                <aside class="column is-2 aside">
                    <nav class="menu">
                        <p class="menu-label">General</p>
                        <ul class="menu-list">
                            <li><a class="is-active" href="#"><span class="icon is-small"><i class="fas fa-tachometer-alt"></i></span>Dashboard</a></li>
                        </ul>
                        <p class="menu-label">Administration</p>
                        <ul class="menu-list">
                            <li><a href="/bulma-admin-dashboard-template/forms.html"><span class="icon is-small"><i class="fa fa-pencil-square-o"></i></span>Forms</a></li>
                            <li><a href="/bulma-admin-dashboard-template/ui-elements.html"><span class="icon is-small"><i class="fa fa-desktop"></i></span>UI Elements</a></li>
                            <li><a href="/bulma-admin-dashboard-template/tables.html"><span class="icon is-small"><i class="fa fa-table"></i></span>Tables</a></li>
                            <li><a href="/bulma-admin-dashboard-template/presentations.html"><span class="icon is-small"><i class="fa fa-bar-chart"></i></span>Presentations</a></li>
                            <li><a><i class="fa fa-cog"></i>Settings</a><ul>
                                <li><a>Members</a></li>
                                <li><a>Plugins</a></li>
                                <li><a>Add a member</a></li>
                            </ul>
                            </li>
                        </ul>


                    </nav>
                </aside>
            </div>
            <div class="column is-9">

                <section class="hero is-info welcome is-small">
                    <div class="hero-body">
                        <div class="container">
                            <asp:Label Text="text" ID="hello_msg" CssClass="title" runat="server" />

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
                <div class="columns">
                    <div class="column is-6">
                        <div class="card events-card">
                            <header class="card-header">
                                <p class="card-header-title">
                                    Events
                                </p>
                                <a href="#" class="card-header-icon" aria-label="more options">
                                    <span class="icon">
                                        <i class="fa fa-angle-down" aria-hidden="true"></i>
                                    </span>
                                </a>
                            </header>

                            <div class="card-table">
                                <div class="content">
                                    <%--<table class="table is-fullwidth is-striped">
                                        <tbody>
                                            <tr>
                                                <td width="5%"><i class="fa fa-bell-o"></i></td>
                                                <td>Lorum ipsum dolem aire</td>
                                                <td class="level-right"><a class="button is-small is-primary" href="#">Action</a></td>
                                            </tr>
                                            <tr>
                                                <td width="5%"><i class="fa fa-bell-o"></i></td>
                                                <td>Lorum ipsum dolem aire</td>
                                                <td class="level-right"><a class="button is-small is-primary" href="#">Action</a></td>
                                            </tr>
                                            <tr>
                                                <td width="5%"><i class="fa fa-bell-o"></i></td>
                                                <td>Lorum ipsum dolem aire</td>
                                                <td class="level-right"><a class="button is-small is-primary" href="#">Action</a></td>
                                            </tr>
                                            <tr>
                                                <td width="5%"><i class="fa fa-bell-o"></i></td>
                                                <td>Lorum ipsum dolem aire</td>
                                                <td class="level-right"><a class="button is-small is-primary" href="#">Action</a></td>
                                            </tr>
                                            <tr>
                                                <td width="5%"><i class="fa fa-bell-o"></i></td>
                                                <td>Lorum ipsum dolem aire</td>
                                                <td class="level-right"><a class="button is-small is-primary" href="#">Action</a></td>
                                            </tr>
                                            <tr>
                                                <td width="5%"><i class="fa fa-bell-o"></i></td>
                                                <td>Lorum ipsum dolem aire</td>
                                                <td class="level-right"><a class="button is-small is-primary" href="#">Action</a></td>
                                            </tr>
                                            <tr>
                                                <td width="5%"><i class="fa fa-bell-o"></i></td>
                                                <td>Lorum ipsum dolem aire</td>
                                                <td class="level-right"><a class="button is-small is-primary" href="#">Action</a></td>
                                            </tr>
                                            <tr>
                                                <td width="5%"><i class="fa fa-bell-o"></i></td>
                                                <td>Lorum ipsum dolem aire</td>
                                                <td class="level-right"><a class="button is-small is-primary" href="#">Action</a></td>
                                            </tr>
                                            <tr>
                                                <td width="5%"><i class="fa fa-bell-o"></i></td>
                                                <td>Lorum ipsum dolem aire</td>
                                                <td class="level-right"><a class="button is-small is-primary" href="#">Action</a></td>
                                            </tr>
                                        </tbody>
                                    </table>--%>
                                </div>
                            </div>
                            <footer class="card-footer">
                                <a href="#" class="card-footer-item">View All</a>
                            </footer>
                        </div>
                    </div>
                    <div class="column is-6">
                        <div class="card">
                            <header class="card-header">
                                <p class="card-header-title">
                                    Inventory Search
                                </p>
                                <a href="#" class="card-header-icon" aria-label="more options">
                                    <span class="icon">
                                        <i class="fa fa-angle-down" aria-hidden="true"></i>
                                    </span>
                                </a>
                            </header>
                            <div class="card-content">
                                <div class="content">
                                    <div class="control has-icons-left has-icons-right">
                                        <input class="input is-large" type="text" placeholder="">
                                        <span class="icon is-medium is-left">
                                            <i class="fa fa-search"></i>
                                        </span>
                                        <span class="icon is-medium is-right">
                                            <i class="fa fa-check"></i>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <header class="card-header">
                                <p class="card-header-title">
                                    User Search
                                </p>
                                <a href="#" class="card-header-icon" aria-label="more options">
                                    <span class="icon">
                                        <i class="fa fa-angle-down" aria-hidden="true"></i>
                                    </span>
                                </a>
                            </header>
                            <div class="card-content">
                                <div class="content">
                                    <div class="control has-icons-left has-icons-right">
                                        <input class="input is-large" type="text" placeholder="">
                                        <span class="icon is-medium is-left">
                                            <i class="fa fa-search"></i>
                                        </span>
                                        <span class="icon is-medium is-right">
                                            <i class="fa fa-check"></i>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script async type="text/javascript" src="../js/bulma.js"></script>

</asp:Content>
