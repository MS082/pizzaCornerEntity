using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
namespace Data_Base
{
    public class Class1
    {

        SqlConnection sqlConn;
        String connection_String = "Data Source=LAPTOP-RFTA97Q7\\SQLEXPRESS01;Initial Catalog=PizzaCorner;Integrated Security=True";
        SqlCommand sqlCmd;
        SqlDataReader sqlDatareader;

        //this statement is related to insert delete update query that is the main statement of any database record 
        public void AddDelUpdate(String sqlStatement)
        {

            sqlConn = new SqlConnection(connection_String);
            sqlConn.Open();


            sqlCmd = new SqlCommand(sqlStatement, sqlConn);
            sqlCmd.ExecuteNonQuery();

            sqlConn.Close();

        }

        // this code is used to in the details of a prticuar query from the table using the sql statement with the help of where clause 
        public DataTable SearchRecord(String qry)
        {
            DataTable tbl = new DataTable();


            sqlConn = new SqlConnection(connection_String);

            sqlConn.Open();
            sqlCmd = new SqlCommand(qry, sqlConn);

            sqlDatareader = sqlCmd.ExecuteReader();

            tbl.Load(sqlDatareader);

            sqlConn.Close();

            return tbl;
        }

        //this method is used to get the record from the data base if the record match with the table then the method retrun 1 other wise 0
        public int login(String userName,String Password) {
            String data = "select * from LoginTable where Name='"+userName+"' and Password='"+Password+"'";
            DataTable tbl = new DataTable();
            tbl = SearchRecord(data);
            if (tbl.Rows.Count > 0)
            {
                return 1;
            }
            else {
                return 0;
            }
        }

        // this method is used to add the product in the record for sale of pizza
        public void addPizza(String Cat,String Size,String Ing,int Price,String photo) {

            //pass the query to insert 
            String data = "insert into PizzaTable(category,Size,Ing,Price,Photo) values('"+Cat+"','"+Size+"','"+Ing+"',"+Price+",'"+photo+"')";
            //calling the method of the class to add
            AddDelUpdate(data);


            
        }

        //this method is used to add the feed back of the form to provide the feed back to the co.
        public void addFeedBack(String Name,String Email,String Phone,String Msg) {
            //adding query to the database 
            String Data = "insert into FeedBackTable(Name,Email,Phone,Message) values('"+Name+"','"+Email+"','"+Phone+"','"+Msg+"')";
            //calling the method of the adding data
            AddDelUpdate(Data);
        }
    }
}
