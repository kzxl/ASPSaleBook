using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
namespace Sale_Book
{
    public class DangKy
    {
        public int makh { get; set; }
        public string hotenkh { get; set; }
        public string diachikh { get; set; }
        public string dienthoaikh { get; set; }
        public string tendn { get; set; }
        public string matkhau { get; set; }
        public string ngaysinh { get; set; }
        public string gioitinh { get; set; }
        public string email { get; set; }
        public int quyen { get; set; }
        private SqlConnection con = new SqlConnection();
        public void insert(DangKy dk)
        {
            string cn =WebConfigurationManager.ConnectionStrings["Sale_bookConnectionString"].ConnectionString.ToString();
            con = new SqlConnection(cn);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.CommandText = "st_dangkykh";
            cmd.Parameters.Add("@ten_khach_hang", System.Data.SqlDbType.NVarChar, 50).Value = dk.hotenkh;
            cmd.Parameters.Add("@dia_chi", System.Data.SqlDbType.NVarChar, 100).Value = dk.diachikh;
            cmd.Parameters.Add("@dien_thoai", System.Data.SqlDbType.NVarChar, 50).Value = dk.dienthoaikh;
            cmd.Parameters.Add("@ten_dn", System.Data.SqlDbType.NVarChar, 50).Value = dk.tendn;
            cmd.Parameters.Add("@mat_khau", System.Data.SqlDbType.NVarChar, 50).Value = dk.matkhau;
            cmd.Parameters.Add("@ngay_sinh", System.Data.SqlDbType.SmallDateTime).Value = dk.ngaysinh;
            cmd.Parameters.Add("@gioi_tinh", System.Data.SqlDbType.NVarChar, 50).Value = dk.gioitinh;
            cmd.Parameters.Add("@email", System.Data.SqlDbType.NVarChar, 50).Value = dk.email;
            
            cmd.Parameters.Add("@quyen", System.Data.SqlDbType.Int, 50).Value = dk.quyen;
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
        }

        public void update(DangKy dk)
        {
            string cn = WebConfigurationManager.ConnectionStrings["Sale_bookConnectionString"].ConnectionString.ToString();
            con = new SqlConnection(cn);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.CommandText = "st_capnhatkh";
            cmd.Parameters.Add("@ma_khach_hang", System.Data.SqlDbType.Int, 50).Value = dk.makh;
            cmd.Parameters.Add("@ten_khach_hang", System.Data.SqlDbType.NVarChar, 50).Value = dk.hotenkh;
            cmd.Parameters.Add("@dia_chi", System.Data.SqlDbType.NVarChar, 100).Value = dk.diachikh;
            cmd.Parameters.Add("@dien_thoai", System.Data.SqlDbType.NVarChar, 50).Value = dk.dienthoaikh;
            cmd.Parameters.Add("@ten_dn", System.Data.SqlDbType.NVarChar, 50).Value = dk.tendn;
            cmd.Parameters.Add("@mat_khau", System.Data.SqlDbType.NVarChar, 50).Value = dk.matkhau;
            cmd.Parameters.Add("@ngay_sinh", System.Data.SqlDbType.SmallDateTime).Value = dk.ngaysinh;
            cmd.Parameters.Add("@gioi_tinh", System.Data.SqlDbType.NVarChar, 50).Value = dk.gioitinh;
            cmd.Parameters.Add("@email", System.Data.SqlDbType.NVarChar, 50).Value = dk.email;
            
            cmd.Parameters.Add("@quyen", System.Data.SqlDbType.Int, 50).Value = dk.quyen;
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
        }

        public void delete(DangKy dk)
        {
            string cn = WebConfigurationManager.ConnectionStrings["Sale_bookConnectionString"].ConnectionString.ToString();
            con = new SqlConnection(cn);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.CommandText = "st_xoakh";
            cmd.Parameters.Add("@ma_khach_hang", System.Data.SqlDbType.Int, 50).Value = dk.makh;
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
        }
    }
}