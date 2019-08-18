using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class eight_queen : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void Button2_Click(object sender, EventArgs e)
    {
        HttpCookie ck = Request.Cookies["eightqueen"];
        if (ck != null)
        {
            Table _tb = new Table();
            TableRow _row;
            TableCell _cell;
            string a = ck.Value;
            char[] arr_i = a.ToCharArray();

            for (int r = 0; r < 8; r++)
            {
                _row = new TableRow();
                for (int c = 0; c < 8; c++)
                {
                    _cell = new TableCell();
                    _cell.Text = "a";
                    if ((r + c) % 2 == 1)
                    {
                        _cell.CssClass = "black";
                    }
                    if (c.ToString() == arr_i[r].ToString())
                    {
                        _cell.CssClass += " queen";
                    }
                    _row.Cells.Add(_cell);
                }
                _tb.Rows.Add(_row);
            }
            PlaceHolder1.Controls.Add(_tb);
        }

        ListBox1.Items.Clear();
        int[] x = new int[9];
        for (x[1] = 0; x[1] < 8; x[1]++)
        {
            for (x[2] = 0; x[2] < 8; x[2]++)
            {
                for (x[3] = 0; x[3] < 8; x[3]++)
                {
                    for (x[4] = 0; x[4] < 8; x[4]++)
                    {
                        for (x[5] = 0; x[5] < 8; x[5]++)
                        {
                            for (x[6] = 0; x[6] < 8; x[6]++)
                            {
                                for (x[7] = 0; x[7] < 8; x[7]++)
                                {
                                    for (x[8] = 0; x[8] < 8; x[8]++)
                                    {
                                        Boolean flag = true;

                                        for ( int m=1;m<=7; m++)
                                        {
                                            for(int n=m+1;n<=8;n++)
                                            {
                                                if(x[m]==x[n] || Math.Abs(x[m]-x[n])==n-m)
                                                {
                                                    flag = false;
                                                    break;
                                                }
                                            }
                                            if(!flag)
                                            {
                                                break;
                                            }
                                        }
                                        if(flag)
                                        {
                                            ListItem li = new ListItem();
                                            for(int i=1;i<=8;i++)
                                            {
                                                li.Text += x[i].ToString();
                                            }
                                            ListBox1.Items.Add(li);
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Table _tb = new Table();
        TableRow _row;
        TableCell _cell;
        string a = ListBox1.Text;
        char[] arr_i = a.ToCharArray();
        HttpCookie ck = new HttpCookie("eightqueen");
        ck.Value= ListBox1.Text;
        ck.Expires = DateTime.Now.AddSeconds(60); ;
        Response.Cookies.Add(ck);
        for (int r = 0; r < 8; r++)
        {
            _row = new TableRow();
            for (int c = 0; c < 8; c++)
            {
                _cell = new TableCell();
                _cell.Text = "a";
                if ((r + c) % 2 == 1)
                {
                    _cell.CssClass = "black";
                }
                if (c.ToString() == arr_i[r].ToString())
                {
                    _cell.CssClass += " queen";
                }
                _row.Cells.Add(_cell);
            }
            _tb.Rows.Add(_row);
        }
        PlaceHolder1.Controls.Add(_tb);

    }
}