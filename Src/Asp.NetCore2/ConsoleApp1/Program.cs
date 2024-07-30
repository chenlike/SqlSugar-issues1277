using SqlSugar;

namespace ConsoleApp1
{
    public class example_table
    {
        public long? test { get; set; }
    }
    internal class Program
    {
        static async Task Main(string[] args)
        {
            /*
             Microsoft SQL Server 2019 (RTM) - 15.0.2000.5 (X64) 
	        Sep 24 2019 13:48:23 
	        Copyright (C) 2019 Microsoft Corporation
	        Developer Edition (64-bit) on Windows 10 Education 10.0 <X64> (Build 19045: ) (Hypervisor)

             */


            SqlSugarClient db = new SqlSugarClient(new ConnectionConfig()
            {
                ConnectionString = "Server=localhost;Database=TestDb;Trusted_Connection=True;",
                DbType = DbType.SqlServer,
                IsAutoCloseConnection = true
            });



            await db.SqlQueryable<example_table>("select * from example_table")
                .FirstAsync();

            Console.ReadLine();

        }
    }
}
