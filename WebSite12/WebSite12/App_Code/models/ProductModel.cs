using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ProductModel
/// </summary>
public class ProductModel
{
  public string AddProduct(Product product)
    {
        try
        {
            CustProductEntities db = new CustProductEntities();
            db.Products.Add(product);
            db.SaveChanges();

            return product.ProductName + " was successfully added ";
        }
        catch (Exception e)
        {
            return "Error:" + e;
        }
    }

    public Product GetProduct(int id)
    {
        try {
            using(CustProductEntities db = new CustProductEntities())
            {
                Product product = db.Products.Find(id);
                return product;
            }
        }

    catch (Exception)
        {
            return null;
        }
    }

    public List<Product> GetAllProducts()
    {
        try
        {
            using (CustProductEntities db = new CustProductEntities())
            {
                List<Product> products = (from x in db.Products select x).ToList();
                return products;
            }
        }

        catch (Exception)
        {
            return null;
        }
    }

    public List<Product> GetitemsByTypeCategory(string typename, string categoryname)
    {
        try
        {
            using (CustProductEntities db = new CustProductEntities())
            {
                List<Product> Items = (from x in db.Products where x.ProductType == typename && x.ProductCategory == categoryname select x).ToList();
                return Items;
            }
        }

        catch (Exception)
        {
            return null;
        }
    }

    public List<Product> GetitemsByType(string typename)
    {
        try
        {
            using (CustProductEntities db = new CustProductEntities())
            {
                List<Product> Items = (from x in db.Products where x.ProductType == typename select x).ToList();
                return Items;
            }
        }

        catch (Exception)
        {
            return null;
        }
    }

    public List<Product> GetitemsByCategory(string categoryname)
    {
        try
        {
            using (CustProductEntities db = new CustProductEntities())
            {
                List<Product> Items = (from x in db.Products where x.ProductCategory == categoryname select x).ToList();
                return Items;
            }
        }

        catch (Exception)
        {
            return null;
        }
    }
}