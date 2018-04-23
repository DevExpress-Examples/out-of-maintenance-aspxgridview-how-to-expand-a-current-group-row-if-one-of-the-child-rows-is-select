using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace ExpandIfSelected
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ASPxGridView1_DataBound(object sender, EventArgs e)
        {
            List<object> selectedKeys = ASPxGridView1.GetSelectedFieldValues("ProductID") as List<object>;
            for (int i = 0; i<ASPxGridView1.VisibleRowCount; i++)
            {
                if (ASPxGridView1.GetChildRowCount(i) != 0)
                {
                    for (int j = 0; j < ASPxGridView1.GetChildRowCount(i); j++)
                    {
                        DataRow rw = ASPxGridView1.GetChildDataRow(i, j) as DataRow;
                        object key = rw["ProductID"];
                        if (selectedKeys.Contains(key))
                        {
                            ASPxGridView1.ExpandRow(i);
                            break;
                        }
                    }
                }
            }
        }
    }
}
