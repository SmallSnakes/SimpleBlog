using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;
using System.Configuration;
using System.Data;

public class DBHelper : System.Web.UI.Page
{
    public DBHelper() { }



    public string mysqlDb()
    {
        string path = "server=47.94.88.45;user=root;database=blog;port=13306;password=123456;charset=utf8";
        return path;
    }

    //访问Web.config中连接数据库的字符串
    private readonly static string config = ConfigurationManager.ConnectionStrings["logisDb"].ConnectionString;

    //创建连接
    public static MySqlConnection Connection
    {
        get
        {
            MySqlConnection connection = new MySqlConnection(config);
            connection.Open();
            return connection;
        }
    }

    //返回一个DataReader（查询）
    public static MySqlDataReader GetReader(string safeSql)
    {
        MySqlCommand cmd = new MySqlCommand(safeSql, Connection);
        MySqlDataReader reader = cmd.ExecuteReader();
        return reader;
    }

    //返回一个受影响的行数;
    public static int ExecuteCommand(string sql, params MySqlParameter[] values)
    {
        MySqlCommand cmd = new MySqlCommand(sql, Connection);
        cmd.Parameters.AddRange(values);
        return cmd.ExecuteNonQuery();
    }

    //返回一个DataTable
    public static DataTable GetDataSet(string safeSql)
    {
        DataSet ds = new DataSet();
        MySqlCommand cmd = new MySqlCommand(safeSql, Connection);
        MySqlDataAdapter da = new MySqlDataAdapter(cmd);
        da.Fill(ds);
        return ds.Tables[0];
    }


    public static MySqlDataAdapter GetAdapter(string safeSql)
    {
        DataSet ds = new DataSet();
        MySqlCommand cmd = new MySqlCommand(safeSql, Connection);
        MySqlDataAdapter da = new MySqlDataAdapter(cmd);
        return da;

    }


}

   