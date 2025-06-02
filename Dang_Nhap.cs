using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
namespace Sale_Book
{
    public class Dang_Nhap
    {
        public int CheckLogin(string UserName, string Password)
        {
            int result = 0;
            AccessData ac = new AccessData();
            SqlDataReader reader = ac.ExecuteReader("Select ten_dn, mat_khau, quyen from Khach_hang");
            while (reader.Read())
            {
                if (reader[0].ToString() == UserName && reader[1].ToString() == Password)
                {
                    return int.Parse(reader[2].ToString());
                }
            }
            return 0;
        }
        public int makhach(string ten_dn)
        {
            
            AccessData ac = new AccessData();
            SqlDataReader read = ac.ExecuteReader("select ma_khach_hang,ten_dn from khach_hang");
            while(read.Read())
            {
                if (read[1].ToString() == ten_dn)
                {
                    return int.Parse(read[0].ToString());
                }
            }
            return 0;
        }
    }

}