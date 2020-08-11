using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

public partial class _Default : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ButtonUpload_Click(object sender, EventArgs e)
    {
        if(!String.IsNullOrWhiteSpace(TextBox1.Text))
        {
            string url = TextBox1.Text;
            XmlDocument xmlDoc = new XmlDocument();
            try
            {
                xmlDoc.Load(url);
            }
            catch (XmlException ex)
            {
                lblUpload.Text = ex.Message;
            }
            StringWriter sw = new StringWriter();
            XmlTextWriter xw = new XmlTextWriter(sw);
            xmlDoc.WriteTo(xw);
            string doc; 
            doc = sw.ToString();
            doc.Replace(">", ">" + "\r\n");
            TextBox2.Text = doc;
        }
        else
        {
            lblUpload.Text = "Text Box can not be empty";
        }
    }
}