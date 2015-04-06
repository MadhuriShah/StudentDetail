Imports System.Data.SqlClient
Partial Class Default2
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString)
    Dim fname, lname, mname, dob1, phone, doa1, add, lschool As String
    Dim cmd, cmd1 As SqlCommand
    Dim provider As Globalization.CultureInfo = Globalization.CultureInfo.InvariantCulture
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        fname = TextBox1.Text
        lname = TextBox2.Text
        mname = TextBox3.Text
        dob1 = TextBox4.Text
        add = TextBox5.Text
        phone = TextBox6.Text
        doa1 = TextBox7.Text
        lschool = TextBox8.Text
      

        Dim dob As Date = Date.Parse(dob1)
        Dim doa As Date = Date.Parse(doa1)
        cn.Open()


        Dim query2 As String = "Select max(ID) from student"
        cmd1 = New SqlCommand(query2, cn)
        Dim id As Integer = cmd1.ExecuteScalar()

        Dim query As String = "Insert into student values(" & id + 1 & ",'" & fname & "'," & "'" & mname & "','" & lname & "','" & dob & "','" & add & "'," & "'" & phone & "'," & "'" & doa & "'," & "'" & lschool & "')"
        cmd = New SqlCommand(query, cn)
        If (cmd.ExecuteNonQuery()) Then
            MsgBox("Inserted", MsgBoxStyle.Information)

        End If
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Response.Redirect("Default.aspx")
    End Sub
End Class
