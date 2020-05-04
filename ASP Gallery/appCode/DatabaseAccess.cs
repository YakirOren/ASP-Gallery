using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.OleDb;
using System.Configuration;

namespace ASP_Gallery.appCode
{
    public class DatabaseAccess
    {
        private static OleDbConnection db;
        public DatabaseAccess()
        {

        }
        private static DataTable execute(string sqlstring)
        {
            open();
            OleDbDataAdapter da = new OleDbDataAdapter(sqlstring, db);
            DataSet ds = new DataSet();
            da.Fill(ds);
            DataTable dt = ds.Tables[0];

            close();
            return dt;
        }
        private static void void_execute(string sqlstring)
        {
            open();
            OleDbCommand com = new OleDbCommand(sqlstring, db);
            com.ExecuteNonQuery();
            close();
        }
        private static int int_execute(string sqlstring)
        {
            DataTable dt = execute(sqlstring);

            return int.Parse(dt.Rows[0][0].ToString());
        }
        private static void open()
        {
            db = new OleDbConnection();
            db.ConnectionString = @"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + HttpContext.Current.Server.MapPath("App_Data/DB.accdb");
            db.Open();

        }
        private static void close()
        {
            db.Close();

        }

        // user related
        public static DataTable getAllUsers()
        {
            return execute("select * from users;");
        }
        public static bool doesUserExistsByID(int userId)
        {
            return int_execute("select count(*) from users where id = " + userId.ToString() + ";") != 0;
        }
        public static bool doesUserExistsByName(string username)
        {
            return int_execute("select count(*) from users where name = '" + username + "';") != 0;
        }

        /* the function checks if the username and password combo are correct.*/
        public static bool shouldLogUser(string username, string password)
        {
            return int_execute("select count(*) from users where name = '" + username + "' and password= '" + password + "';") != 0;
        }
        public static void createUser(string name, string password, bool isAdmin, string email)
        {
            void_execute(string.Format("insert into [USERS] ([NAME], [PASSWORD], [ADMIN], [EMAIL]) VALUES ('{0}' ,'{1}', {2},'{3}');", name, password, isAdmin.ToString().ToLower(), email));
        }

        //public void deleteUser(int userId)
        //{
        //    var album_list = getAlbumsOfUser(user);

        //    void_execute("delete from tags where user id = " + userId.ToString() + ";"); // delete tags

        //    for (auto & album : album_list) // delete the pictures in the albums 
        //    {
        //        void_execute("delete from pictures where ALBUM_ID = " + album.getOwnerId() + ";");

        //    }

        //    void_execute("delete from albums where USER_ID = " + userId.ToString() + ";"); // delete the users albums.

        //    void_execute("delete from users where ID=" + userId.ToString() + ";"); // delete the user.
        //}

        public static DataTable getUser(int userId)
        {
            return execute("select * from users where ID= " + userId.ToString() + ";");
        }
        public static DataTable getUser(string username, string password)
        {
            return execute("select * from users where name = '" + username + "' and password= '" + password + "';");
        }
        // picture related
        public static void addPictureToAlbumByName(int albumID, string pictureNAME, string pictureLOCATION)
        {
            void_execute(string.Format("insert into [PICTURES] ([NAME], [LOCATION], [CREATION_DATE], [ALBUM_ID]) VALUES ('{0}' ,'{1}', '{2}',{3});", pictureNAME, pictureLOCATION, DateTime.Now.ToString("dddd, dd MMMM yyyy HH:mm:ss"), albumID.ToString()));

        }
        public static void removePictureFromAlbumByName(string albumName, string pictureName)
        {

        }

        public static void tagUserInPicture(string albumName, string pictureName, int userId)
        {
        }
        public static void untagUserInPicture(string albumName, string pictureName, int userId)
        {

        }

        public static DataTable getAllTags()
        {
            return execute("select * from tags;");
        }
        public static DataTable getAllPictures()
        {
            return execute("select * from pictures;");
        }
        public static DataTable getAllAlbums()
        {
            return execute("select * from albums;");
        }
        public static DataTable getAllAlbums(int userid)
        {
            return execute("select * from albums where USER_ID= " + userid.ToString() + ";");
        }

        public static DataTable getAlbum(int id)
        {
            return execute("select * from albums where id= " + id.ToString() + ";");
        }

        public static string getAlbumName(int id)
        {
            return execute("select * from albums where id= " + id.ToString() + ";").Rows[0]["NAME"].ToString();
        }

        public static bool doesAlbumExists(string albumName, int userId)
        {
            return int_execute("select count(*) from albums where user_id= " + userId.ToString() + "and name= '" + albumName + "';") != 0;

        }
        public static void createAlbum(string albumName, int userId)
        {
            void_execute(string.Format("insert into [ALBUMS] ([NAME], [CREATION_DATE], [USER_ID]) VALUES ('{0}' ,'{1}', {2});", albumName , DateTime.Now.ToString("dddd, dd MMMM yyyy HH:mm:ss"), userId.ToString()));
        }



    }
}

//   // album related
//  public const std::list<Album> getAlbums(); //✔
//	public const std::list<Album> getAlbumsOfUser(const User& user) ; //✔
//	public void createAlbum(const Album& album) ; //✔ 
//	public void deleteAlbum(const std::string& albumName, int userId) ; //✔
//	 ; //✔
//	public Album openAlbum(string albumName) ; // ✔
//	public void closeAlbum(Album& pAlbum) ; // search how to close.
//	public void printAlbums(); //✔ 




//	user statistics
//	public int countAlbumsOwnedOfUser(const User& user) ; //✔ 
//	public int countAlbumsTaggedOfUser(const User& user) ;
//	public int countTagsOfUser(const User& user) ;
//	public float averageTagsPerAlbumOfUser(const User& user) ;

//	// queries
//	public User getTopTaggedUser() ; //✔ 
//		public Picture getTopTaggedPicture() ;
//		public std::list<Picture> getTaggedPicturesOfUser(const User& user) ;  //✔ 

