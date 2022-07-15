using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

/// <summary>
/// Summary description for Class1
/// </summary>
public class Class1
{
    SqlConnection con = new SqlConnection("database=dbMrdav;server=.;uid=sa;pwd=1234");
     
    public Class1()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public void querryWithProcedure(string proName, SqlParameter[] pr)
    {
        con.Open();
        SqlCommand com = new SqlCommand(proName, con);
        for (int i = 0; i < pr.Length; i++)
        {
            com.Parameters.Add(pr[i]);
        }
        com.CommandType = CommandType.StoredProcedure;
        com.ExecuteNonQuery();
        con.Close();
    }
    public int matchWithProcedure(string proName, SqlParameter[] pr)
    {
        con.Open();
        SqlCommand com = new SqlCommand(proName, con);
        for (int i = 0; i < pr.Length; i++)
        {
            com.Parameters.Add(pr[i]);
        }


        com.CommandType = CommandType.StoredProcedure;
        int x = Convert.ToInt32(com.ExecuteScalar());
        con.Close();
        return x;
    }
    public DataTable showWithProcedure(string proName, SqlParameter[] pr)
    {
        con.Open();
        SqlCommand com = new SqlCommand(proName, con);
        for (int i = 0; i < pr.Length; i++)
        {
            com.Parameters.Add(pr[i]);
        }
        com.CommandType = CommandType.StoredProcedure;

        SqlDataReader dr = com.ExecuteReader();
        DataTable dt = new DataTable();
        dt.Load(dr);
        con.Close();
        return dt;
    }

    public SqlDataAdapter databindInAdapter(string cmd)
    {
        con.Open();
        SqlDataAdapter dt = new SqlDataAdapter(cmd, con);
        con.Close();
        return dt;
    }

    public int queryWithOutProcedure(string cmd)
    {
        con.Open();
        SqlCommand com = new SqlCommand(cmd, con);
        int k = com.ExecuteNonQuery();
        con.Close();
        return k;
    }
    public int matchWithOutProcedure(string cmd)
    {
        con.Open();
        SqlCommand com = new SqlCommand(cmd, con);
        int k = Convert.ToInt32(com.ExecuteScalar());
        con.Close();
        return k;
    }
    public DataTable showWithOutProcedure(string cmd)
    {
        con.Open();
        SqlCommand com = new SqlCommand(cmd, con);
        SqlDataReader dr = com.ExecuteReader();
        DataTable dt = new DataTable();
        dt.Load(dr);
        con.Close();
        return dt;
    }

}