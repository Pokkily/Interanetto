using Google.Cloud.Firestore;
using System;

public static class FirebaseConfig
{
    public static FirestoreDb FirestoreDbInstance { get; private set; }

    public static void InitializeFirebase()
    {
        if (FirestoreDbInstance == null)
        {
            string path = AppDomain.CurrentDomain.BaseDirectory + @"App_Data\serviceAccount.json";
            Environment.SetEnvironmentVariable("GOOGLE_APPLICATION_CREDENTIALS", path);

            FirestoreDbInstance = FirestoreDb.Create("intorannetto");
        }
    }
}
