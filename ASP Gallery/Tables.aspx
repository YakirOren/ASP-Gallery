<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeBehind="Tables.aspx.cs" Inherits="ASP_Gallery.WebForm9" EnableSessionState="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

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
    <section class="info-tiles">
        <div class="tile is-ancestor has-text-centered">

            <div class="tile is-parent">


                <article class="tile is-child box">
                    <div class="field">
                        <div id="bar" class="control" runat="server">
                            <asp:DropDownList ID="DropDownTableList" CssClass="input" runat="server" OnSelectedIndexChanged="DropDownTableList_SelectedIndexChanged" AutoPostBack="true">
                                <asp:ListItem Text="Albums" Value="1" />
                                <asp:ListItem Text="Users" Value="2" />
                                <asp:ListItem Text="Pictures" Value="3" />
                                <asp:ListItem Text="Tags" Value="4" />
                            </asp:DropDownList>
                        </div>
                    </div>

                    <asp:GridView ID="GridView1" class="table is-fullwidth is-striped" runat="server">
                    </asp:GridView>
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

                        <table class="table is-fullwidth is-striped">
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
                        </table>
                    </div>
                </div>

            </div>
            <div class="column is-6">
            </div>
        </div>
    </div>
</asp:Content>
