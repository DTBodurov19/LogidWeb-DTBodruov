using Logid_Web.Models;
using Microsoft.AspNetCore.Mvc;
using System.Data.SqlClient;
using System.Diagnostics;

namespace Logid_Web.Controllers
{
    public class HomeController : Controller
    {
       
        public ActionResult<List<CustomerModel>> Customers()
        {
            List<CustomerModel> listCustomers = new List<CustomerModel>();
            try
            {

                string connectionString = _configuration["ConnectionString"];
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    string sql = "SELECT * FROM Customers";
                    using (SqlCommand command = new SqlCommand(sql, connection))
                    {
                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                CustomerModel customerInfo = new CustomerModel();

                                customerInfo.CustomerID = reader.GetInt32(0);
                                customerInfo.Name = reader.IsDBNull(1) ? "" : reader.GetString(1);
                                customerInfo.ZIP = reader.IsDBNull(2) ? "" : reader.GetString(2);
                                customerInfo.Phone = reader.IsDBNull(3) ? "" : reader.GetString(3);
                                customerInfo.Address = reader.IsDBNull(4) ? "" : reader.GetString(4);

                                listCustomers.Add(customerInfo);
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                ViewBag.ErrorMessage = "An error occurred while retrieving customers: " + ex.ToString();
            }

            return View("Customers", listCustomers);
        }


        private readonly ILogger<HomeController> _logger;


        private readonly IConfiguration _configuration;

        public HomeController(IConfiguration configuration)
        {
            _configuration = configuration;
        }

        // GET: Client/Create
        public ActionResult Create()
        {
            CustomerModel model = new();
            return View(model);
        }

        // POST: Client/Create
        [HttpPost]
        public ActionResult Create(CustomerModel model)
        {
            if (ModelState.IsValid)
            {
                try
                {
                   string connectionString = _configuration["ConnectionString"];
                    using (var connection = new SqlConnection(connectionString))
                    {
                        connection.Open();
                        var query = "INSERT INTO Customers (Name, ZIP, Phone, Address) VALUES (@Name, @ZIP, @Phone, @Address)";
                        var command = new SqlCommand(query, connection);
                        command.Parameters.AddWithValue("@Name", model.Name);
                        command.Parameters.AddWithValue("@ZIP", model.ZIP);
                        command.Parameters.AddWithValue("@Phone", model.Phone);
                        command.Parameters.AddWithValue("@Address", model.Address);
                        command.ExecuteNonQuery();
                    }
                    return RedirectToAction("Index", "Home"); // Redirect to the home page after successful submission
                }
                catch (Exception ex)
                {
                    ModelState.AddModelError("", "An error occurred while saving the client: " + ex.Message);
                }
            }

            return View(model);
        }


        public IActionResult Index()
        {
            return View();
        }

        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }









        public ActionResult Stock()
        {
            List<StockModel> listStocks = new List<StockModel>();
            try
            {

                string connectionString = _configuration["ConnectionString"];
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    string sql = "SELECT * FROM Stocks";
                    using (SqlCommand command = new SqlCommand(sql, connection))
                    {
                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                StockModel StockInfo = new StockModel();

                                StockInfo.StockID = reader.GetInt32(0);
                                StockInfo.Unit_price = reader.GetInt32(1);


                                listStocks.Add(StockInfo);
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                ViewBag.ErrorMessage = "An error occurred while retrieving Stocks: " + ex.ToString();
            }

            return View("Stocks", listStocks);
        }

        // GET: Client/Create
        public ActionResult StockCreate()
        {
            StockModel model = new();
            return View(model);
        }

        // POST: Client/Create
        [HttpPost]
        
        public ActionResult StockCreate(StockModel model)
        {
            if (ModelState.IsValid)
            {
                try
                {
                    string connectionString = _configuration["ConnectionString"];
                    using (var connection = new SqlConnection(connectionString))
                    {
                        connection.Open();
                        var query = "INSERT INTO Stocks (Unit_price) VALUES (@Unit_price)";
                        var command = new SqlCommand(query, connection);
                        
                        command.Parameters.AddWithValue("@Unit_price", model.Unit_price);
                        
                        command.ExecuteNonQuery();
                    }
                    return RedirectToAction("Index", "Home"); // Redirect to the home page after successful submission
                }
                catch (Exception ex)
                {
                    ModelState.AddModelError("", "An error occurred while saving the Stocks: " + ex.Message);
                }
            }

            return View(model);
        }











        public ActionResult Discounts()
        {
            List<DiscountModel> listDiscounts = new List<DiscountModel>();
            try
            {

                string connectionString = _configuration["ConnectionString"];
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    string sql = "SELECT * FROM Discounts";
                    using (SqlCommand command = new SqlCommand(sql, connection))
                    {
                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                DiscountModel DiscountInfo = new DiscountModel();

                                DiscountInfo.DiscountID = reader.GetInt32(0);
                                DiscountInfo.Code = reader.IsDBNull(1) ? "" : reader.GetString(1);




                                listDiscounts.Add(DiscountInfo);
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                ViewBag.ErrorMessage = "An error occurred while retrieving Discounts: " + ex.ToString();
            }

            return View("Discounts", listDiscounts);
        }

        // GET: Client/Create
        public ActionResult DiscountCreate()
        {
            DiscountModel model = new();
            return View(model);
        }

        // POST: Client/Create
        [HttpPost]
        public ActionResult DiscountCreate(DiscountModel model)
        {
            if (ModelState.IsValid)
            {
                try
                {
                    string connectionString = _configuration["ConnectionString"];
                    using (var connection = new SqlConnection(connectionString))
                    {
                        connection.Open();
                        var query = "INSERT INTO Discounts (Code) VALUES (@Code)";
                        var command = new SqlCommand(query, connection);

                        command.Parameters.AddWithValue("@Code", model.Code);

                        command.ExecuteNonQuery();
                    }
                    return RedirectToAction("Index", "Home"); // Redirect to the home page after successful submission
                }
                catch (Exception ex)
                {
                    ModelState.AddModelError("", "An error occurred while saving the Discounts: " + ex.Message);
                }
            }

            return View(model);
        }

    }
    
}