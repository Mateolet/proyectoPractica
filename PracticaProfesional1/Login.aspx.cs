using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace PracticaProfesional1
{
    public partial class Login : System.Web.UI.Page
    {
        private static string Cadena = ConfigurationManager.ConnectionStrings["Cadena"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
           

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            int dni = 0;
            using (SqlConnection conn = new SqlConnection(Cadena))
            {
                string script = "SELECT * FROM Usuarios WHERE Email = '" + txtEmail.Text + "' AND Contrasenia = '" + txtPassword.Text + "'" ;

                conn.Open();

                SqlCommand command = new SqlCommand(script, conn);
                SqlDataReader resp = command.ExecuteReader();

                while (resp.Read())
                {
                    dni = resp.GetInt32(2);
                }

                conn.Close();
            }

            if (dni > 0)
                Response.Redirect("Pagina2.aspx");

        }
    }
}