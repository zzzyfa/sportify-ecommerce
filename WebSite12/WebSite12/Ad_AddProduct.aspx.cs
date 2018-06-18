using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;         
using System.Web.UI.WebControls;

public partial class Add_Product : System.Web.UI.Page
{
    

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] == null)
        {
            Response.Redirect("Ad_Log.aspx");
        }
    }


    private Product CreateProduct()
    {
        Product product = new Product();

        string file_name4 = productpic4.FileName.ToString() + "";
        productpic4.PostedFile.SaveAs(Server.MapPath("~/Upload/") + file_name4);
        string filePath4 = productpic4.PostedFile.FileName;
        string filename4 = Path.GetFileName(filePath4);
        string ext4 = Path.GetExtension(filename4);
        string contenttype4 = String.Empty;
        switch (ext4)
        {
            case ".jpg":
                contenttype4 = "image/jpg";
                break;
            case ".png":
                contenttype4 = "image/png";
                break;
            case ".gif":
                contenttype4 = "image/gif";
                break;
        }
        Stream fs4 = productpic4.PostedFile.InputStream;
        BinaryReader br4 = new BinaryReader(fs4);
        Byte[] bytes4 = br4.ReadBytes((Int32)fs4.Length);





        string file_name3 = productpic3.FileName.ToString() + "";
        productpic3.PostedFile.SaveAs(Server.MapPath("~/Upload/") + file_name3);
        string filePath3 = productpic3.PostedFile.FileName;
        string filename3 = Path.GetFileName(filePath3);
        string ext3 = Path.GetExtension(filename3);
        string contenttype3 = String.Empty;
        switch (ext3)
        {
            case ".jpg":
                contenttype3 = "image/jpg";
                break;
            case ".png":
                contenttype3 = "image/png";
                break;
            case ".gif":
                contenttype3 = "image/gif";
                break;
        }
        Stream fs3 = productpic3.PostedFile.InputStream;
        BinaryReader br3 = new BinaryReader(fs3);
        Byte[] bytes3 = br3.ReadBytes((Int32)fs3.Length);



        string file_name2 = productpic2.FileName.ToString() + "";
        productpic2.PostedFile.SaveAs(Server.MapPath("~/Upload/") + file_name2);
        string filePath2 = productpic2.PostedFile.FileName;
        string filename2 = Path.GetFileName(filePath2);
        string ext2 = Path.GetExtension(filename2);
        string contenttype2 = String.Empty;
        switch (ext2)
        {
            case ".jpg":
                contenttype2 = "image/jpg";
                break;
            case ".png":
                contenttype2 = "image/png";
                break;
            case ".gif":
                contenttype2 = "image/gif";
                break;
        }
        Stream fs2 = productpic2.PostedFile.InputStream;
        BinaryReader br2 = new BinaryReader(fs2);
        Byte[] bytes2 = br2.ReadBytes((Int32)fs2.Length);





        string file_name = productpic1.FileName.ToString() + "";
        productpic1.PostedFile.SaveAs(Server.MapPath("~/Upload/") + file_name);
        string filePath = productpic1.PostedFile.FileName;
        string filename = Path.GetFileName(filePath);
        string ext = Path.GetExtension(filename);
        string contenttype = String.Empty;
        switch (ext)
        {
            case ".jpg":
                contenttype = "image/jpg";
                break;
            case ".png":
                contenttype = "image/png";
                break;
            case ".gif":
                contenttype = "image/gif";
                break;
        }
        Stream fs = productpic1.PostedFile.InputStream;
        BinaryReader br = new BinaryReader(fs);
        Byte[] bytes = br.ReadBytes((Int32)fs.Length);

        if (contenttype != String.Empty && contenttype2 != String.Empty && contenttype3 != String.Empty && contenttype4 != String.Empty)
        {
            product.ProductCategory = Request.Form["productcategory"];
            product.ProductType = Request.Form["producttype"];
            product.ProductName = Request.Form["productname"];
            product.ProductDescp = Request.Form["productdescp"];
            product.ProductSize = Request.Form["productsize"];
            product.ProductPrice = Convert.ToDecimal(Request.Form["productprice"]);
            product.Product_Image_Name1 = filename;
            product.Product_Image_Name2 = filename2;
            product.Product_Image_Name3 = filename3;
            product.Product_Image_Name4 = filename4;
            product.Product_Image_binary = bytes;
            product.Product_Image_binary2 = bytes2;
            product.Product_Image_binary3 = bytes3;
            product.Product_Image_binary4 = bytes4;

        }

        return product;


    }

    protected void btnaddproduct_Click(object sender, EventArgs e)
    {
        ProductModel productmodel = new ProductModel();
        Product product = CreateProduct();

        LblResult.Text = productmodel.AddProduct(product);
    }
}
