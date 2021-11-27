Imports QRCoder
Imports System.IO
Imports System.Drawing

Partial Class VB
    Inherits System.Web.UI.Page
    Protected Sub btnGenerate_Click(sender As Object, e As EventArgs)
        Dim code As String = txtCode.Text
        Dim qrGenerator As New QRCodeGenerator()
        Dim qrCode As QRCodeGenerator.QRCode = qrGenerator.CreateQrCode(code, QRCodeGenerator.ECCLevel.Q)
        Dim imgBarCode As New System.Web.UI.WebControls.Image()
        imgBarCode.Height = 150
        imgBarCode.Width = 150
        Using bitMap As Bitmap = qrCode.GetGraphic(20)
            Using ms As New MemoryStream()
                bitMap.Save(ms, System.Drawing.Imaging.ImageFormat.Png)
                Dim byteImage As Byte() = ms.ToArray()
                imgBarCode.ImageUrl = "data:image/png;base64," + Convert.ToBase64String(byteImage)
            End Using
            plBarCode.Controls.Add(imgBarCode)
        End Using
    End Sub
End Class
