using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
namespace Sale_Book
{
    public class Gio_Hang_KH
    {
        public int id { get; set; }
        public int ma_kh { get; set; }
        public string tendn { get; set; }
        public int masach { get; set; }
        public string ngaymua { get; set; }
        private SqlConnection con = new SqlConnection();
        public void insert(Gio_Hang_KH ghkh)
        {
            string cn = WebConfigurationManager.ConnectionStrings["Sale_bookConnectionString"].ConnectionString.ToString();
            con = new SqlConnection(cn);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandType = System.Data.CommandType.Text;
            //cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.CommandText = "Insert into hoa_don ('ma_khach_hang','ma_sach','ngay_mua' values('@ma_khach_hang','@ma_sach','@ngay_mua')";
            cmd.Parameters.Add("@ma_khach_hang", System.Data.SqlDbType.Int, 100).Value = ghkh.ma_kh;
            cmd.Parameters.Add("@ma_sach", System.Data.SqlDbType.Int, 100).Value = ghkh.masach;
            cmd.Parameters.Add("@ngay_mua", System.Data.SqlDbType.SmallDateTime).Value = ghkh.ngaymua;
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
        }

        public void delete(Gio_Hang_KH ghkh)
        {
            string cn = WebConfigurationManager.ConnectionStrings["Sale_bookConnectionString"].ConnectionString.ToString();
            con = new SqlConnection(cn);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = "delete from hoa_don";
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
        }

        public void deletenow(Gio_Hang_KH ghkh)
        {
            string cn = WebConfigurationManager.ConnectionStrings["Sale_bookConnectionString"].ConnectionString.ToString();
            con = new SqlConnection(cn);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = "delete from hoa_don where ma_khach_hang=@ma_khach_hang";
            cmd.Parameters.Add("@ma_khach_hang", System.Data.SqlDbType.NVarChar, 50).Value = ghkh.ma_kh;
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
        }

        public void deletesach(Gio_Hang_KH ghkh)
        {
            string cn = WebConfigurationManager.ConnectionStrings["Sale_bookConnectionString"].ConnectionString.ToString();
            con = new SqlConnection(cn);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = "delete from hoa_don where ma_sach=@ma_sach";
            cmd.Parameters.Add("@ma_sach", System.Data.SqlDbType.NVarChar, 50).Value = ghkh.masach;
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
        }
    }

}