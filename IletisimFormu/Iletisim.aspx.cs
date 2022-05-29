using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;
using System.Net.Mail;


namespace IletisimFormu
{
    public partial class Iletisim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        public void bosalt()
        {
            //KAYDETME İŞLEMİNDEN SONRA GİRİLİ OLAN ALANLAR TEMİZLENSİN

            txtAdiSoyadi.Text = "";
            txtYas.Text = "";
            ddlMeslek.SelectedIndex = 0;
            txtTelefonNo.Text = "";
            txtEmail.Text = "";
            txtKonu.Text = "";
            txtMesaj.Text = "";



        }



        protected void btnKaydet_Click(object sender, EventArgs e)
        {

            SqlConnection conn = new SqlConnection();

            conn.ConnectionString = ConfigurationManager.ConnectionStrings["IletisimConnectionString"].ConnectionString;

            SqlCommand cmd = new SqlCommand("sp_Iletisim", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@AdiSoyadi", txtAdiSoyadi.Text.Trim());
            cmd.Parameters.AddWithValue("@Yaş", Convert.ToInt32(txtYas.Text));
            cmd.Parameters.AddWithValue("@Meslek", ddlMeslek.SelectedValue);
            cmd.Parameters.AddWithValue("@TelefonNo", txtTelefonNo.Text.Trim());
            cmd.Parameters.AddWithValue("@Email", txtEmail.Text.Trim());
            cmd.Parameters.AddWithValue("@Konu", txtKonu.Text.Trim());
            cmd.Parameters.AddWithValue("@Mesaj", txtMesaj.Text.Trim());



            conn.Open();
            int i = cmd.ExecuteNonQuery();


            if (i > 0)
            {

                lblMesaj.Text = "Kayıt İşlemi Başarılı";

            }
            else
            {
                lblMesaj.Text = "Kayıt İşlemi Başarısız";

            }

            conn.Close();
            cmd.Dispose();


           

            //MAİL GÖNDERME İŞLEMİ

            MailAddress to = new MailAddress("aribilgireceive@gmail.com");
            MailAddress from = new MailAddress("aribilgireceive@gmail.com");

            MailMessage message = new MailMessage(from, to);
            message.Subject = "Yeni Kullanıcı";
            message.Body = txtAdiSoyadi.Text + " - " + "Adında yeni bir kullanıcı kayıt oldu";

            SmtpClient client = new SmtpClient("smtp.gmail.com", 587)
            {
                Credentials = new NetworkCredential("aribilgireceive@gmail.com", "deneme123"),
                EnableSsl = true
            };


            try
            {
                client.Send(message);
            }
            catch (SmtpException ex)
            {
                Response.Write(ex.ToString());
            }


            //Kayıt işleminden sonra girili olan alanları sıfırlayalım.
            bosalt();

        }
    }
}