using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;

namespace ZohoEbizCharge
{
    public partial class ZohoRecurringPaymentForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            string customerID = Request.QueryString["CustomerID"];

            using (var client = new HttpClient())
            {
                var endpoint = new Uri("https://www.zohoapis.in/crm/v2/contacts"+customerID);
                client.DefaultRequestHeaders.Accept.Clear();
                var tokentype = "Zoho-oauthtoken";
                var Mytoken = "1000.1f110792e88151667a5be888a713bb92.e3d28c1eaa39d3d57fdad0b84a240ff7";
                client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue(tokentype, Mytoken);

                var result = client.GetAsync(endpoint).Result;
                var json = result.Content.ReadAsStringAsync().Result;

                List<Contact> listuser = JsonConvert.DeserializeObject<List<Contact>>(json);
            }


        }
    }

    class Contact
    {

    }
}