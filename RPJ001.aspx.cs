using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;

public partial class RoadSm_RPJ001 : System.Web.UI.Page
{
    //211.22.61.184_SQL
    //string connStrings = ConfigurationManager.ConnectionStrings["RBWCONN"].ToString();
    //本機SQL
    string connStrings = ConfigurationManager.ConnectionStrings["RBWCONN1"].ToString();
    SqlConnection conn;
    SqlCommand cmd;
    //本機SQL
    string constring = "Data Source=DESKTOP-6BG782L\\MSSQLGV;Initial Catalog=ReBuildWorks;Persist Security Info=True;User ID=sa;Password=GeoVector";

    

    protected void Page_Load(object sender, EventArgs e)
    {

        string pUserID = Session["ID"] + "";
        string pUserName = Session["name"] + "";

        //PostBack後停留在原畫面
        Page.MaintainScrollPositionOnPostBack = true;

        //全區公用↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

        TextUserName.Text = "您好，" + pUserName + " " + Session["jobtitle"] + "";
        if (pUserName == "")
        {
            TextUserName.Visible = false;
            SignOut.Visible = false;
        }

        //全區公用↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

        DateTime data = DateTime.Now;
        var taiwanyear = new System.Globalization.TaiwanCalendar();
        LBRPJ001.Text = "PJ" + taiwanyear.GetYear(data) + data.ToString("MM") + 000;

        //selectone();
        //年度
        Year();

        //TXTRPJ007.Attributes.Add("OnKeyPress", "txtkey();");

    }

    protected void SignOut_Click(object sender, EventArgs e)
    {
        string LINK = "../MainPage.aspx";

        Session.RemoveAll();
        Session.Abandon();

        Response.Redirect(LINK);
    }

    //動態抓取今年包含前兩年
    public void Year()
    {

        int year   = DateTime.Now.Year;
        int b = 1911;
        year -= b;
        DDLRPJ004.Items.Add(year.ToString());
        DDLRPJ004.Items.Add((year - 1).ToString());
        DDLRPJ004.Items.Add((year - 2).ToString());
    }

    //存進資料庫
    protected void BtnSave_Click(object sender, EventArgs e)
    {
        string rpj006, rpj007;
        //確認textbox是否為空
        if (TXTRPJ005.Text != "" && TXTRPJ006.Text != "" && TXTRPJ007.Text != "")
        {
            rpj006 = TXTRPJ006.Text.Replace(",", "");
            rpj007 = TXTRPJ007.Text.Replace(",", "");


            insertSQL(rpj006, rpj007);
            Page.ClientScript.RegisterClientScriptBlock(GetType(), "Message", "<script>alert('送出成功!');</script>");
        }
        else
        {
            Page.ClientScript.RegisterClientScriptBlock(GetType(), "Message", "<script>alert('尚有資料未輸入!');</script>");
            return;
        }


    }

    //新增資料
    public void insertSQL(string a, string b)
    {
        conn = new SqlConnection(constring);
        //conn = new SqlConnection(connStrings);
        conn.Open();
        string insertSQL = @"insert into RoadPj(id, RPJ001, RPJ002, RPJ003, RPJ004, RPJ005, RPJ006, RPJ007) values((select MAX(id)+1 from RoadPj),'" + LBRPJ001.Text + "','" + DDLRPJ002.SelectedValue + "','" + DDLRPJ003.SelectedValue + "','" + DDLRPJ004.SelectedItem.Text.ToString() + "','" + TXTRPJ005.Text + "','" + a + "','" + b + "')";
        cmd = new SqlCommand(insertSQL, conn);
        cmd.ExecuteNonQuery();
        conn.Close();


    }

    //public void selectone()
    //{
    //    conn = new SqlConnection(constring);
    //    //conn = new SqlConnection(connStrings);
    //    conn.Open();
    //    string insertSQL = @"select * from RoadPj where id = '1'";
    //    cmd = new SqlCommand(insertSQL, conn);
    //    SqlDataReader dr = cmd.ExecuteReader();
    //    while(dr.Read())
    //    {
    //        LBRPJ001.Text = dr["RPJ001"].ToString();
    //    }
    //    conn.Close();

    //}




}