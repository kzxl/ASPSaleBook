using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for NhapSach
/// </summary>
public class NhapSach
{
    public int masach { get; set; }
    public string tensach { get; set; }
    public string dongia { get; set; }
    public string donvitinh { get; set; }
    public string mota { get; set; }
    public string hinhminhhoa { get; set; }
    public int macd { get; set; }
    public int manxb { get; set; }
    public string ngaycapnhat { get; set; }
    public string tentacgia { get; set; }
    private SqlConnection con = new SqlConnection();
    public void insert(NhapSach tts)
    {
        string cn = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|QLBansach_Data.mdf;Integrated Security=True;User Instance=True";
        con = new SqlConnection(cn);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.CommandText = "st_themsach";
        cmd.Parameters.Add("@tensach", System.Data.SqlDbType.NVarChar, 100).Value = tts.tensach;
        cmd.Parameters.Add("@dongia", System.Data.SqlDbType.Int).Value = tts.dongia;
        cmd.Parameters.Add("@donvitinh", System.Data.SqlDbType.NVarChar, 10).Value = tts.donvitinh;
        cmd.Parameters.Add("@mota", System.Data.SqlDbType.NText).Value = tts.mota;
        cmd.Parameters.Add("@hinhminhhoa", System.Data.SqlDbType.NVarChar, 50).Value = tts.hinhminhhoa;
        cmd.Parameters.Add("@macd", System.Data.SqlDbType.Int).Value = tts.macd;
        cmd.Parameters.Add("@manxb", System.Data.SqlDbType.Int).Value = tts.manxb;
        cmd.Parameters.Add("@ngaycapnhat", System.Data.SqlDbType.SmallDateTime).Value = tts.ngaycapnhat;
        cmd.Parameters.Add("@tentacgia", System.Data.SqlDbType.NVarChar, 80).Value = tts.tentacgia;
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        con.Close();
    }

    public void update(NhapSach tts)
    {
        string cn = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|QLBansach_Data.mdf;Integrated Security=True;User Instance=True";
        con = new SqlConnection(cn);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.CommandText = "st_capnhatsach";
        cmd.Parameters.Add("@masach", System.Data.SqlDbType.Int).Value = tts.masach;
        cmd.Parameters.Add("@tensach", System.Data.SqlDbType.NVarChar, 100).Value = tts.tensach;
        cmd.Parameters.Add("@dongia", System.Data.SqlDbType.Int).Value = tts.dongia;
        cmd.Parameters.Add("@donvitinh", System.Data.SqlDbType.NVarChar, 10).Value = tts.donvitinh;
        cmd.Parameters.Add("@mota", System.Data.SqlDbType.NText).Value = tts.mota;
        cmd.Parameters.Add("@hinhminhhoa", System.Data.SqlDbType.NVarChar, 50).Value = tts.hinhminhhoa;
        cmd.Parameters.Add("@macd", System.Data.SqlDbType.Int).Value = tts.macd;
        cmd.Parameters.Add("@manxb", System.Data.SqlDbType.Int).Value = tts.manxb;
        cmd.Parameters.Add("@ngaycapnhat", System.Data.SqlDbType.SmallDateTime).Value = tts.ngaycapnhat;
        cmd.Parameters.Add("@tentacgia", System.Data.SqlDbType.NVarChar, 80).Value = tts.tentacgia;
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        con.Close();
    }

    public void delete(NhapSach tts)
    {
        string cn = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|QLBansach_Data.mdf;Integrated Security=True;User Instance=True";
        con = new SqlConnection(cn);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.CommandText = "st_xoasach";
        cmd.Parameters.Add("@masach", System.Data.SqlDbType.Int).Value = tts.masach;
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        con.Close();
    }
}
