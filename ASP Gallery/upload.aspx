<%@ Page Title="" Language="C#" MasterPageFile="~/connected.Master" AutoEventWireup="true" CodeBehind="upload.aspx.cs" Inherits="ASP_Gallery.WebForm7" enableSessionState="true"%>


<%@ Import Namespace="ASP_Gallery.appCode" %>
<%@ Import Namespace="System.Data" %>

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
                            <asp:TextBox ID="title" class="input" type="text" placeholder="Title" runat="server"></asp:TextBox>

                            <span class="icon is-small is-left">
                                <i class="fas fa-quote-right"></i>
                            </span>
                        </p>
                    </div>


                    <div class="field">

                        <%if (DatabaseAccess.getAllAlbums(int.Parse(Session["ID"].ToString())).Rows.Count != 0)
                            {%>
                        <p>Select album: </p>
                        <asp:DropDownList ID="DropDownAlbumList" runat="server" OnSelectedIndexChanged="DropDownAlbumList_SelectedIndexChanged" OnTextChanged="DropDownAlbumList_TextChanged" >
                            
                            <asp:ListItem Text="text" Value=1 />


                        </asp:DropDownList>
                        <% }
                            else
                            {
                        %>
                        <asp:Label Text="you dont have any albums" CssClass="is-danger" runat="server" />

                        <% }%>


                        <asp:Button ID="new_album_button" Text="Add new album" class="button is-info is-outlined" runat="server" OnClick="new_album_button_Click" />



                    </div>

                    <div class="field">
                        <div class="control has-icons-left has-icons-right">

                            <div class="file has-name is-boxed center">
                                <label class="file-label">
                                    <asp:FileUpload ID="FileUploadControl" type="file" CssClass="file-input" runat="server" accept=".png, .jpeg, .jpg" />

                                    <span class="file-cta">
                                        <span class="file-icon">
                                            <i class="fas fa-upload"></i>
                                        </span>
                                        <span class="file-label">Choose a file…
                                        </span>
                                    </span>
                                </label>
                            </div>
                        </div>
                        <asp:Label ID="StatusLabel" class="help is-danger" Text="" runat="server" />

                    </div>

                    <div class="field center">
                        <p class="control">



                            <%if (DatabaseAccess.getAllAlbums(int.Parse(Session["ID"].ToString())).Rows.Count != 0)
                                {%>
                            <asp:Button ID="send_button" class="button is-info is-outlined " Text="Upload" runat="server" OnClick="send_button_Click" Style="left: 0px; top: 0px" />
                            <%} %>
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
