﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Configuration;
using MySql.Data.MySqlClient;
using System.Data.SqlClient;


/// <summary>
/// Summary description for DBManager
/// </summary>
public class DBManager
{

    string cnstring = ConfigurationManager.ConnectionStrings["NEEVConnectionString"].ConnectionString.ToString();

    //MySqlConnection cn;
    //MySqlCommand cmd;

    //public bool ExInsertUpdateorDelete(string ycmd)
    //{
    //    cn = new MySqlConnection(cnstring);
    //    MySqlCommand mycmd = new MySqlCommand(ycmd, cn);
    //    if (cn.State == ConnectionState.Closed)
    //    {
    //        cn.Open();
    //    }
    //    int NumofAffectedRows = mycmd.ExecuteNonQuery();
    //    cn.Close();
    //    if (NumofAffectedRows > 0)
    //    {
    //        return true;
    //    }
    //    else
    //    {
    //        return false;
    //    }
    //}
    //public DataTable SelectQuary(string commond)
    //{
    //    cn = new MySqlConnection(cnstring);
    //    MySqlDataAdapter da = new MySqlDataAdapter(commond, cn);
    //    DataTable dt = new DataTable();
    //    da.Fill(dt);
    //    return dt;
    //}



    SqlConnection cn = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=neevdb;Integrated Security=True");

    public bool ExInsertUpdateorDelete(string ycmd)
    {
        SqlCommand mycmd = new SqlCommand(ycmd, cn);
        if (cn.State == ConnectionState.Closed)
        {
            cn.Open();
        }
        int NumofAffectedRows = mycmd.ExecuteNonQuery();
        cn.Close();
        if (NumofAffectedRows > 0)
        {
            return true;
        }
        else
        {
            return false;
        }
    }
    public DataTable SelectQuary(string commond)
    {
        SqlDataAdapter da = new SqlDataAdapter(commond, cn);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
}