using System;
using System.IO;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ASP_Gallery.appCode;
using System.Data;
using System.Configuration;

namespace ASP_Gallery
{
    public partial class WebForm7 : AdminSessionPage
    {
        protected new void Page_Load(object sender, EventArgs e)
        {
            getDataFromSession();

            if (!check_connection() && !is_admin)
            {
                Response.Redirect("login.aspx");
            }

            //DropDownAlbumList.Items.Add();

            //for ()
            //{

            //}



            DropDownAlbumList.DataSource = DatabaseAccess.getAllAlbums(int.Parse(Session["ID"].ToString()));
            DropDownAlbumList.DataTextField = "NAME";
            DropDownAlbumList.DataValueField = "ID";
            DropDownAlbumList.DataBind();

        }

        protected void send_button_Click(object sender, EventArgs e)
        {

            if (title.Text == "")
            {
                StatusLabel.Text = "Upload status: Title cant be empty";
            }
            else if (FileUploadControl.HasFile)
            {
                try
                {
                    String fileExtension = System.IO.Path.GetExtension(FileUploadControl.FileName).ToLower();
                    String[] allowedExtensions = { ".gif", ".png", ".jpeg", ".jpg" };


                    if (allowedExtensions.Contains(fileExtension))
                    {
                        // 102400 = 100kb
                        if (FileUploadControl.PostedFile.ContentLength < 102400 * 10) // the max is 1000 kb
                        {
                            string filename = Path.GetFileName(FileUploadControl.FileName);
                            FileUploadControl.SaveAs(Server.MapPath("~/images/") + filename);
                            StatusLabel.Text = "Upload status: File uploaded!";
                            StatusLabel.CssClass = "help is-success";


                            DatabaseAccess.addPictureToAlbumByName(int.Parse(DropDownAlbumList.SelectedItem.Value), title.Text, "images/" + filename); ;

                        }
                        else
                        {
                            StatusLabel.Text = "Upload status: The file has to be less than 400 kb!";

                        }
                    }
                    else
                    {
                        StatusLabel.Text = "Upload status: This file type is not accepted!";

                    }
                }
                catch (Exception ex)
                {
                    StatusLabel.Text = "Upload status: The file could not be uploaded. The following error occured: " + ex.Message;
                }
            }
            else
            {
                StatusLabel.Text = "Upload status: No file was selected";

            }



        }

        protected void new_album_button_Click(object sender, EventArgs e)
        {
            Server.Transfer("new_album.aspx");
        }

        protected void DropDownAlbumList_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownAlbumList.Text = DropDownAlbumList.SelectedValue;
        }

        protected void DropDownAlbumList_TextChanged(object sender, EventArgs e)
        {
            DropDownAlbumList.Text = DropDownAlbumList.SelectedValue;
        }



    }
}