using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MVCCRUD.Models;
using MVCCRUD.DAL;

namespace MVCCRUD.Service
{
    public class UserService
    {
        UserDal ud = new UserDal();

        public int insertuserService(Users user)
        {
            return ud.inertUserDao(user);
        }
        public List<Users> getAllUSersList()
        {
            return ud.getAllUSersList();
        }

        public List<Users> getUserbyId(string edit)
        {
            return ud.getUserbyId(edit);
        }
        public int UpdateUserserviceData(Users user)
        {
            return ud.UpdateUserData(user);
        }
        public int DeleteUserserviceData(string id)
        {
            return ud.DeleteUserData(id);
        }


    }
}