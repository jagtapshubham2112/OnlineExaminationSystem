using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Configuration.Provider;

/// <summary>
/// Summary description for Db
/// </summary>
public class Db
{
    public static string constring = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
    public static SqlConnection con;
    public static SqlCommand cmd;
    public static SqlDataReader dr;

    public Db()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    //to open database 
    public static Boolean OpenDb(String constring)
    {
        try
        {
            con = new SqlConnection(constring);
            con.Open();
            return true;
        }
        catch (SqlException se)
        {
            return false;
        }

    }
    // to  execute query
    public static Boolean executeQuery(string sqlQuery)
    {
        try
        {
            OpenDb(constring);
            cmd = new SqlCommand(sqlQuery, con);
            cmd.ExecuteNonQuery();
            return true;
        }
        catch (SqlException se)
        {
            return false;
        }

    }
    public string getConString()
    {
        return (ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString);

    }
    public SqlConnection getCon()
    {
        SqlConnection con = new SqlConnection(getConString());
        return con;
    }
    public SqlCommand getCmd(string sql, SqlConnection con)
    {
        SqlCommand cmd = new SqlCommand(sql, con);
        return cmd;
    }
    public static DataTable getData(string sqlQuery)
    {
        DataTable at = new DataTable();
        SqlConnection con = new SqlConnection(constring);

        SqlDataAdapter da = new SqlDataAdapter(sqlQuery, con);
        con.Open();
        da.Fill(at);
        con.Close();
        return (at);
    }
    public static void updateData(String SqlQuery)
    {
        DataTable at = new DataTable();
        SqlCommand cmd = new SqlCommand(SqlQuery, con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
    }
    public static string getVal(string SqlQuery, string FIdName)
    {
        try
        {
            SqlConnection con = new SqlConnection(constring);
            SqlCommand cmd = new SqlCommand(SqlQuery, con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows && dr.Read())
                return (dr[FIdName].ToString());
            else
                return " ";
            con.Close();
        }
        catch (SqlException ex)
        {
            throw ex;
        }
    }
    public static void insertData(String SqlQuery)
    {
        SqlConnection con = new SqlConnection(constring);
        SqlCommand cmd = new SqlCommand(SqlQuery, con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
    }
    public static DataSet getTestList(String procedurename)
    {
        DataSet QuestionSet = new DataSet();
        DataTable Qtable = new DataTable();
        Qtable.Columns.Add("TESTNAME");
        DataRow dr;

        for (int i = 0; i < 5; i++)
        {
            dr = Qtable.NewRow();
            dr[0] = "TEST_NO:" + i;
            dr[1] = "TEST NAME:" + i;
            Qtable.Rows.Add(dr);
        }
        QuestionSet.Tables.Add(Qtable);
        return QuestionSet;
    }
    public static Int32 getCount(String tno)
    {
        return 10;
    }
    public static DataSet getDataSet(String query)
    {
        DataSet QuestionSet = new DataSet();
        DataTable Qtable = new DataTable();
        Qtable.Columns.Add("ID");
        Qtable.Columns.Add("SrNo");
        Qtable.Columns.Add("question");
        Qtable.Columns.Add("ans1");
        Qtable.Columns.Add("ans2");
        Qtable.Columns.Add("ans3");
        Qtable.Columns.Add("ans4");
        Qtable.Columns.Add("ans5");
        SqlConnection con = new SqlConnection(new Db().getConString());
        con.Open();
        SqlCommand cmd = new SqlCommand(query, con);
        SqlDataReader DR = cmd.ExecuteReader();
        int cnt = 0;
        DataRow dr;
        if (DR.HasRows)
        {

            while (DR.Read())
            {
                dr = Qtable.NewRow();

                dr[0] = DR["Question_Id"];
                dr[1] = ++cnt;
                dr[2] = DR["Question"];
                dr[3] = DR["Option_1"];
                dr[4] = DR["Option_2"];
                dr[5] = DR["Option_3"];
                dr[6] = DR["Option_4"];
                dr[7] = DR["Answer"];

                Qtable.Rows.Add(dr);
            }
        }
        QuestionSet.Tables.Add(Qtable);
        return QuestionSet;
    }
    public static DataSet getDataSet(String query, String SubjectId)
    {
        DataSet QuestionSet = new DataSet();
        DataTable Qtable = new DataTable();
        Qtable.Columns.Add("ID");
        Qtable.Columns.Add("SrNo");
        Qtable.Columns.Add("question");
        Qtable.Columns.Add("ans1");
        Qtable.Columns.Add("ans2");
        Qtable.Columns.Add("ans3");
        Qtable.Columns.Add("ans4");
        Qtable.Columns.Add("ans5");
        SqlConnection con = new SqlConnection(new Db().getConString());
        con.Open();
        SqlCommand cmd = new SqlCommand(query, con);
        cmd.Parameters.AddWithValue("@Subject_Id", SubjectId);
        SqlDataReader DR = cmd.ExecuteReader();
        int cnt = 0;
        DataRow dr;
        if (DR.HasRows)
        {

            while (DR.Read())
            {
                dr = Qtable.NewRow();

                dr[0] = DR["Question_Id"];
                dr[1] = ++cnt;
                dr[2] = DR["Question"];
                dr[3] = DR["Option_1"];
                dr[4] = DR["Option_2"];
                dr[5] = DR["Option_3"];
                dr[6] = DR["Option_4"];
                dr[7] = DR["Answer"];

                Qtable.Rows.Add(dr);
            }
        }
        QuestionSet.Tables.Add(Qtable);
        return QuestionSet;
    }
}







