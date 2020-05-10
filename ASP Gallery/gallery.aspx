<%@ Page Title="" Language="C#" MasterPageFile="~/connected.Master" AutoEventWireup="true" CodeBehind="gallery.aspx.cs" Inherits="ASP_Gallery.WebForm5" enableSessionState="true"%>


<%@ Import Namespace="ASP_Gallery.appCode" %>
<%@ Import Namespace="System.Data" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>
        .center {
            display: flex;
            justify-content: center;
            align-items: center;
        }
    </style>

    <div>

        <%if (!is_connected)
            { %>
        <div id="notConnectedMsg" class="column" runat="server">
            <article class="media notification is-info">
                <figure class="media-left">
                    <span class="icon">
                        <i class="fas fa-info-circle"></i>
                    </span>
                </figure>
                <div class="media-content">
                    <h1 class="title is-size-4">Looks like you are not loged in..</h1>

                </div>
            </article>
        </div>
        <%}
            else
            { %>


        <div class="columns">
            <div class="column"></div>

            <div id="upload" class="column" runat="server">
                <a href="upload.aspx" class="media notification is-primary">
                    <figure class="media-left">
                        <span class="icon">
                            <i class="fas fa-upload"></i>
                        </span>
                    </figure>
                    <div class="media-content">

                        <h1 class="title is-size-4">upload your images</h1>
                    </div>
                </a>
            </div>


            <div class="column"></div>
        </div>




        <%} %>


        <!--use this part for loading images from the db-->
        <section class="hero">
            <div class="container">
                <div class="columns is-multiline">
                    <%


                        foreach (DataRow row in DatabaseAccess.getAllPictures().Rows)
                        {

                    %>
                    <div class="column is-one-third center">
                        <article class="card media notification has-background-white">

                            <div class="columns">

                                <div class="column">
                                    <strong class="is-size-4"><%: row["NAME"]%>
                                    </strong>
                                    <a class="image modal-button" data-target='<%: "modal-image" + row["ID"].ToString()%>'>
                                        <img id="" src='<%: row["LOCATION"]%>' width="200" height="150" />

                                    </a>
                                    <a class="button is-primary is-outlined modal-button" data-target='<%: "modal-card" + row["ID"].ToString()%>'>open</a>

                                </div>
                            </div>


                            <div id='<%: "modal-image" + row["ID"].ToString()%>' class="modal modal-fx-superScaled">
                                <div class="modal-background"></div>
                                <div class="modal-content is-huge is-image">
                                    <!-- content -->
                                    <img src='<%: row["LOCATION"]%>' />

                                    <!-- end content -->
                                </div>
                                <button class="modal-close is-large" aria-label="close"></button>
                            </div>


                            <div id='<%: "modal-card" + row["ID"].ToString()%>' class="modal modal-fx-3dSlit">
                                <div class="modal-background"></div>
                                <div class="modal-content is-tiny">
                                    <!-- content -->
                                    <div class="card">
                                        <div class="card-image">
                                            <figure class="image is-4by2">

                                                <img src='<%: row["LOCATION"]%>' />

                                            </figure>
                                        </div>
                                        <div class="card-content">
                                            <div class="media">
                                                <div class="media-content">
                                                    <nav class="breadcrumb" aria-label="breadcrumbs">
                                                        <ul>
                                                            <li><a href="#"><%: DatabaseAccess.getAlbumName(int.Parse(row["ALBUM_ID"].ToString())) %></a></li>
                                                            <li><a href="#"><%: row["NAME"]%></a></li>
                                                        </ul>
                                                    </nav>

                                                    <p class="title is-4"><%: row["NAME"] %></p>
                                                    <%--<p class="subtitle is-6">@yakiroren</p>--%>
                                                </div>
                                            </div>

                                            <div class="content">

                                                <a href="#">#tags</a>
                                                <a href="#">#tags</a>
                                                <br>
                                                <time><%: row["CREATION_DATE"]%></time>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- end content -->
                                </div>
                                <button class="modal-close is-large" aria-label="close"></button>
                            </div>


                            <script type="text/javascript" src="https://unpkg.com/bulma-modal-fx/dist/js/modal-fx.min.js"></script>
                        </article>
                    </div>
                    <%
                        }%>
                </div>
            </div>
        </section>




    </div>
</asp:Content>
