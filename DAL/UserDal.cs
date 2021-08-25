using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using MVCCRUD.Models;
using MVCCRUD.Service;


namespace MVCCRUD.DAL
{
    public class UserDal
    {
        string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;

        public int inertUserDao(Users user)
        {
            string sql = "insert into users1(firstname,lastname,email,city,address) values('" + user.fname + "','" + user.lname + "','" + user.email + "','" + user.city + "','" + user.address + "')";
            SqlConnection conn = null;
            conn = new SqlConnection(strcon);
            conn.Open();
            SqlCommand cmd = new SqlCommand(sql, conn);
            int status = cmd.ExecuteNonQuery();
            if (status > 0)
            {
                return status;
            }
            else
            {
                return status;
            }
            // conn.Close();

        }

        public List<Users> getAllUSersList()
        {

         string sql = "select id,firstname,lastname,email,city,address,active from users1 where active='Y'";
            List<Users> userlist = new List<Users>();
            using (SqlConnection conn = new SqlConnection(strcon))
            {
                conn.Open();
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    cmd.CommandType = CommandType.Text;
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            foreach (DataRow dr in dt.Rows)
                            {
                                Users users = new Users();
                                users.id = Convert.ToInt32(dr[0]);
                                users.fname = dr[1].ToString();
                                users.lname = dr[2].ToString();
                                users.email = dr[3].ToString();
                                users.city = dr[4].ToString();
                                users.address = dr[5].ToString();
                                users.active = dr[6].ToString();
                                userlist.Add(users);
                            }
                        }
                    }
                }
                conn.Close();
            }
            return userlist;


        }

        public List<Users> getUserbyId(string edit)
        {
            string sql = "select  id, firstname, lastname, email, city, address , active  from users1  where id = '" + edit+ "' ";
            List<Users> singlelist = new List<Users>();
            using (SqlConnection conn = new SqlConnection(strcon))
            {
                conn.Open();
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    cmd.CommandType = CommandType.Text;
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            foreach (DataRow dr in dt.Rows)
                            {
                                Users users = new Users();
                                users.id = Convert.ToInt32(dr[0]);
                                users.fname = dr[1].ToString();
                                users.lname = dr[2].ToString();
                                users.email = dr[3].ToString();
                                users.city = dr[4].ToString();
                                users.address = dr[5].ToString();
                                singlelist.Add(users);
                            }
                        }
                    }
                }
                conn.Close();
            }
            return singlelist;
           
        } 

        public int UpdateUserData(Users user )
        {
            string sql = "update users1 set firstname='" + user.fname + "',lastname='"+user.lname+"',email='"+user.email+"',city='"+user.city+"',address='"+user.address+"' where id='"+user.id+"'";
            SqlConnection conn = null;
            conn = new SqlConnection(strcon);
            conn.Open();
            SqlCommand cmd = new SqlCommand(sql, conn);
            int status = cmd.ExecuteNonQuery();
            if (status > 0)
            {
                return status;
            }
            else
            {
                return status;
            }
            
        }

        public int DeleteUserData(string id)
        {
            string sql = "update users1 set active='N' where id='" + id + "'";
            SqlConnection conn = null;
            conn = new SqlConnection(strcon);
            conn.Open();
            SqlCommand cmd = new SqlCommand(sql, conn);
            int status = cmd.ExecuteNonQuery();
            if (status > 0)
            {
                return status;
            }
            else
            {
                return status;
            }

        }


    }
}