using AIE.Content.Models;
using System;
using System.Linq;


namespace AIEService
{
    public class LoginSecurity
    {
        public static bool Login(string username, string password)
        {
            using (EntitiesAPI entities = new EntitiesAPI())
            {
                return entities.qryApiUsers.Any(user => user.UserName.Equals(username, StringComparison.OrdinalIgnoreCase) && user.UserPass == password);
            }
        }

    }
}