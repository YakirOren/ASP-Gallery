using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.OleDb;
using System.Configuration;




public class DBF
{
    public DBF()
    {

    }
    
    public static OleDbConnection GenerateConnection()
    {
        
        // פעולה מקבלת שם קובץ של מסד נתונים ובונה אובייקט התחברות ופותחת ערוץ תקשורת 
        OleDbConnection obj = new OleDbConnection();
        obj.ConnectionString = @"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + HttpContext.Current.Server.MapPath("AppData/user1.accdb");
        obj.Open();
        return obj;
    }
    public static void ChangeTable( string sqlstring )
    {
        OleDbConnection conobj = GenerateConnection();
        OleDbCommand com = new OleDbCommand(sqlstring, conobj);
        com.ExecuteNonQuery();
        conobj.Close();


    }
    public static DataTable selectFromTable(string sqlstring)
    {
        OleDbConnection obj = GenerateConnection();
        OleDbDataAdapter da = new OleDbDataAdapter(sqlstring, obj);
        DataSet ds = new DataSet();
        da.Fill(ds);
        DataTable dt = ds.Tables[0];
        obj.Close();
        return dt;

    }
    public static DataSet selectFromTable2(string sqlstring)
    {
        OleDbConnection obj = GenerateConnection();
        OleDbDataAdapter da = new OleDbDataAdapter(sqlstring, obj);
        DataSet ds = new DataSet();
        da.Fill(ds);
       
        obj.Close();
        return ds;

    }
    public static DataSet retalluserforgridviwe()
    {
        string sqlstring = string.Format("SELECT * FROM [user]");
        OleDbConnection obj = GenerateConnection();
        OleDbDataAdapter da = new OleDbDataAdapter(sqlstring, obj);
        DataSet ds = new DataSet();
        da.Fill(ds);

        obj.Close();
        return ds;


    }

}