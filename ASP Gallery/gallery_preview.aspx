<%@ Page Title="" Language="C#" MasterPageFile="~/default.Master" AutoEventWireup="true" CodeBehind="gallery_preview.aspx.cs" Inherits="ASP_Gallery.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        /*@media (max-width: 1024px) {
            .hero {
                background: url(images/gallery-logo.png) center ;
                background-size: cover;
            }
        }

        @media (max-width: 768px) {
            .hero {
                background: url(images/gallery-logo.png) center;
                background-size: cover;
            }*/


        .center {
            display: flex;
            justify-content: center;
            align-items: center;
        }
    </style>

    <div>
        <div class="column">
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





        <!--use this part for loading images from the db-->
        <section class="hero">
            <div class="container">
                <div class="columns is-multiline">
                    <%


                        for (int i = 0; i < 6; i++)
                        {
                    %>
                    <div class="column is-one-third center">
                        <article class="card media notification has-background-white">

                            <div class="columns">

                                <div class="column">
                                    <a class="image modal-button" data-target="modal-image2">
                                        <img src="images/show1.JPG" width="200" height="150" />

                                    </a>
                                    <a class="button is-primary is-outlined modal-button" data-target="modal-card">open</a>
                                    <h1 class="is-size-4">photo <%:i.ToString() %></h1>
                                    
                                    

                                </div>


                            </div>






                            <div id="modal-image2" class="modal modal-fx-superScaled">
                                <div class="modal-background"></div>
                                <div class="modal-content is-huge is-image">
                                    <!-- content -->
                                    <img src="images/show1.JPG" />

                                    <!-- end content -->
                                </div>
                                <button class="modal-close is-large" aria-label="close"></button>
                            </div>


                            <div id="modal-card" class="modal modal-fx-3dSlit">
                                <div class="modal-background"></div>
                                <div class="modal-content is-tiny">
                                    <!-- content -->
                                    <div class="card">
                                        <div class="card-image">
                                            <figure class="image is-4by2">

                                                <img src="images/show1.JPG" />

                                            </figure>
                                        </div>
                                        <div class="card-content">
                                            <div class="media">
                                                <div class="media-left">
                                                    <figure class="image is-48x48">
                                                        <img src="images/show2.JPG" alt="Placeholder image">
                                                    </figure>
                                                </div>
                                                <div class="media-content">
                                                    <p class="title is-4">Yakir Oren</p>
                                                    <p class="subtitle is-6">@yakiroren</p>
                                                </div>
                                            </div>

                                            <div class="content">

                                                <a href="#">#tags</a>
                                                <a href="#">#tags</a>
                                                <br>
                                                <time datetime="2020-04-24">12:30 PM - 24 April 2020</time>
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
