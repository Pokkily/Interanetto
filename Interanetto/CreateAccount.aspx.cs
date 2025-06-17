using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using System.Web.UI;
using Google.Cloud.Firestore;

namespace Interanetto
{
    public partial class CreateAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            FirebaseConfig.InitializeFirebase();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // Register the async operation
            RegisterAsyncTask(new PageAsyncTask(SubmitAccountAsync));
        }

        private async Task SubmitAccountAsync()
        {
            string name = txtName.Text.Trim();
            string email = txtEmail.Text.Trim();
            string address = txtAddress.Text.Trim();
            string phone = txtPhone.Text.Trim();
            string age = txtAge.Text.Trim();
            string accountType = rblAccountType.SelectedValue;

            Dictionary<string, object> userData = new Dictionary<string, object>
            {
                { "name", name },
                { "email", email },
                { "address", address },
                { "phone", phone },
                { "age", age },
                { "accountType", accountType },
                { "createdAt", Timestamp.GetCurrentTimestamp() }
            };

            try
            {
                CollectionReference usersRef = FirebaseConfig.FirestoreDbInstance.Collection("users");
                await usersRef.AddAsync(userData);

                ScriptManager.RegisterStartupScript(this, GetType(), "alert", $"alert('Account created successfully!');", true);
            }
            catch (Exception ex)
            {
                string safeMessage = ex.Message.Replace("'", "\\'");
                ScriptManager.RegisterStartupScript(this, GetType(), "alert", $"alert('Error: {safeMessage}');", true);
            }
        }
    }
}
