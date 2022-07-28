using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Info_Med
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void btnOpenPopUp_Click(object sender, ImageClickEventArgs e)
        {
            mpePopUp.Show();
        }


        StreamReader sr = null;
        string json = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {

                sr = new StreamReader(Server.MapPath(@"~\Content\doctors.json"));
                json = sr.ReadToEnd();


                //show general data



                gvDoctors.DataSource = JsonConvert.DeserializeObject<List<Root>>(json);
                gvDoctors.DataBind();


                //sr = new StreamReader(Server.MapPath(@"~\Content\doctors.json"));
                //json = sr.ReadToEnd();
                //gvDoctors.DataSource = JsonConvert.DeserializeObject<List<Reviews>>(json)
                //    .OrderByDescending(x => x.averageRating).ThenByDescending(m => m.totalRatings);
                //gvDoctors.DataBind();



            }

        }


        protected void btnIsActive_Click(object sender, EventArgs e)
        {
            sr = new StreamReader(Server.MapPath(@"~\Content\doctors.json"));
            json = sr.ReadToEnd();
            gvDoctors.DataSource = JsonConvert.DeserializeObject<List<Root>>(json)
                .Where(j => j.isActive == true);
            gvDoctors.DataBind();
        }

        protected void btnIsPaid_Click(object sender, EventArgs e)
        {
            sr = new StreamReader(Server.MapPath(@"~\Content\doctors.json"));
            json = sr.ReadToEnd();
            gvDoctors.DataSource = JsonConvert.DeserializeObject<List<Root>>(json)
                .Where(j => j.promotionLevel < 6).OrderByDescending(j => j.promotionLevel);
            gvDoctors.DataBind();
        }

        protected void btnContact_Click(object sender, EventArgs e)
        {

        }
    }


    public class UserDetails
    {
        public string Name { get; set; }
        public string Phone { get; set; }
        public string Email { get; set; }
    }
    public class Address
    {
        public string cityName { get; set; }
        public string street { get; set; }
        public string cityId { get; set; }
    }

    public class Clinic
    {
        public int id { get; set; }
        public Address address { get; set; }
        public DateTime dateCreated { get; set; }
        public string name { get; set; }
        public List<Phone> phones { get; set; }
        public bool isActive { get; set; }
    }

    public class Phone
    {
        public string number { get; set; }
        public int phoneType { get; set; }
    }

    public class Reviews
    {
        public int professionalismRate { get; set; }
        public int averageRating { get; set; }
        public int totalRatings { get; set; }
        public int waitingTimeRate { get; set; }
        public int serviceRate { get; set; }
    }

    public class Root
    {
        public int id { get; set; }
        public int promotionLevel { get; set; }
        public List<Clinic> clinics { get; set; }
        public Reviews reviews { get; set; }
        public List<string> mainSpecialtiesIds { get; set; }
        public List<Phone> phones { get; set; }
        public List<string> subSpecialtiesIds { get; set; }
        public List<string> languageIds { get; set; }
        public string fullName { get; set; }
        public List<string> areaIds { get; set; }
        public bool isActive { get; set; }
        public List<string> mainSpecializationsIds { get; set; }
        public List<string> subSpecializationsIds { get; set; }
    }
}
