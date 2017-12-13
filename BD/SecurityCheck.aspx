<%@ Page Language="C#" %>
<%@ Import Namespace="System.Drawing" %>
<%@ Import Namespace="System.Drawing.Imaging" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        Random Ran = new Random();
        Bitmap Bmp = new Bitmap(90, 50);
        Graphics Gfx = Graphics.FromImage(Bmp);
        Font fnt = new Font("impact", 13, FontStyle.Strikeout);

        int intNum = Ran.Next(100000, 999999);
        
        Gfx.Clear(Color.White);

        Gfx.DrawString(intNum.ToString(), fnt, Brushes.Red, 15, 15);

        int RanY1 = Ran.Next(0, 50);
        int RanY2 = Ran.Next(0, 50);
        Gfx.DrawLine(Pens.Black, 0, RanY1, 90, RanY2);


        RanY1 = Ran.Next(0, 50);
        RanY2 = Ran.Next(0, 50);
        Gfx.DrawLine(Pens.Blue, 90, RanY1, 0, RanY2);

        RanY1 = Ran.Next(0, 50);
        RanY2 = Ran.Next(0, 50);
        Gfx.DrawLine(Pens.Blue, 0, RanY1, 90, RanY2);

        Bmp.Save(Response.OutputStream, ImageFormat.Gif);

        Session["rannum"] = intNum;
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>
