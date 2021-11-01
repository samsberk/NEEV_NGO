using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net;
using System.Net.Mail;

/// <summary>
/// Summary description for MyMail
/// </summary>
public class MyMail
{
    public bool SendMail(string to, string sub, string msg)
    {
        try
        {
			MailMessage ml = new MailMessage();
			ml.From = new MailAddress("scrietcvgclub@gmail.com");
			ml.To.Add(to);
			ml.Subject = sub;
			ml.Body = msg;
			ml.IsBodyHtml = true;
			SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);
			smtp.Credentials = new System.Net.NetworkCredential("scrietcvgclub@gmail.com", "SCRIET@CVGClub2018");
			smtp.EnableSsl = false;
			smtp.Send(ml);
			ml.Dispose();

			//MailMessage ml = new MailMessage();
			//ml.From = new MailAddress("info@neeviit.org");
			//ml.To.Add(to);
			//ml.Subject = sub;
			//ml.Body = msg;
			//ml.IsBodyHtml = true;
			//SmtpClient smtp = new SmtpClient("relay-hosting.secureserver.net", 25);
			//smtp.Credentials = new System.Net.NetworkCredential("info@neeviit.org", "Updesh@81");
			//smtp.EnableSsl = false;
			//smtp.Send(ml);
			//ml.Dispose();
			return true;
        }
        catch (Exception ex)
        {
            return false;
        }
    }
}