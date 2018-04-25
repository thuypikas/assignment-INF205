using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void SendMail()
    {
        System.Net.Mail.MailMessage m = new System.Net.Mail.MailMessage();
        System.Net.Mail.SmtpClient sc = new System.Net.Mail.SmtpClient();
        try
        {
            m.From = new System.Net.Mail.MailAddress("trungle98hn@gmail.com");
            m.To.Add("trunglqph04966@fpt.edu.vn");
            m.Subject = YourSubject.Text.ToString();
            m.IsBodyHtml = true;
            m.Body = "From: " + YourName.Text + "\n" + " Subject: " + YourSubject.Text + "\n" + " Question: \n" + Comments.Text + "\n";
            m.Body += "Subject: " + YourSubject.Text + "\n";
            m.Body += "Question: \n" + Comments.Text + "\n";
            sc.Host = "smtp.gmail.com";
            sc.Port = 587;
            sc.Credentials = new System.Net.NetworkCredential("trungle98hn@gmail.com", "0965642695");

            sc.EnableSsl = true;
            sc.Send(m);
            Response.Write("Email Send successfully");
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            //here on button click what will done 
            SendMail();
            DisplayMessage.Text = "Your Comments after sending the mail";
            DisplayMessage.Visible = true;
            YourSubject.Text = "";
            YourEmail.Text = "";
            YourName.Text = "";
            Comments.Text = "";
        }
        catch (Exception) { }
    }
}