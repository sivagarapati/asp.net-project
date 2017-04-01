using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class homepage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Timer1_Tick(object sender, EventArgs e)
    {
        Random rand = new Random();
        int i=rand.Next(1,6);
        Image1.ImageUrl="~/images/home-"+i.ToString() + ".jpg";
    }
    //https://www.youtube.com/watch?v=iqAc26kzPak

}