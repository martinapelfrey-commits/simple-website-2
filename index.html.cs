using System;
using System.Web.UI;

namespace WebApplication1.index
{
    public partial​class indexPage : Page
    {
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // Stop if validation failed
            if (!Page.IsValid)
                return;

            string name = txtName.Text.Trim();
            decimal planPrice = Convert.ToDecimal(ddlPlan.SelectedValue);
            int quantity = Convert.ToInt32(txtQty.Text);
            decimal deliveryCost = Convert.ToDecimal(rblDelivery.SelectedValue);
            decimal warrantyCost = chkWarranty.Checked ? 12.00m : 0m;

            decimal subtotal = (planPrice * quantity) + deliveryCost + warrantyCost;

            // Simple discount rule
            decimal discount = 0m;
            if (subtotal >= 100)
            {
                discount = subtotal * 0.10m; // 10% discount
            }

            decimal total = subtotal - discount;

            lblResult.Text =
                $"Hello {name}, your total is ${total:F2}. " +
                $"Subtotal: ${subtotal:F2}, Discount: ${discount:F2}.";
        }
}



