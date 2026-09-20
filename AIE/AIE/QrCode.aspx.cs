using System;
//using DevExpress.BarCodes;
namespace AIE
{
    public partial class QrCode : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //public byte[] GetBarCodeImage(string parameter)
        //{
        //    DevExpress.XtraPrinting.BarCode barCode = new DevExpress.XtraPrinting.BarCode();
        //    barCode.Symbology = Symbology.QRCode;
        //    barCode.CodeText = parameter;
        //    barCode.BackColor = Color.White;
        //    barCode.ForeColor = Color.DarkSlateBlue;

        //    barCode.RotationAngle = 0;
        //    barCode.CodeBinaryData = Encoding.Default.GetBytes(barCode.CodeText);
        //    barCode.Options.QRCode.CompactionMode = DevExpress.BarCodes.QRCodeCompactionMode.Byte;
        //    barCode.Options.QRCode.ErrorLevel = QRCodeErrorLevel.Q;
        //    barCode.Options.QRCode.ShowCodeText = false;
        //    barCode.DpiX = 80;
        //    barCode.DpiY = 80;
        //    return ImageToByte(barCode.BarCodeImage);
        //}

        //public static byte[] ImageToByte(System.Drawing.Image img)
        //{
        //    ImageConverter converter = new ImageConverter();
        //    return (byte[])converter.ConvertTo(img, typeof(byte[]));
        //}
    }
}