Imports System.Data.SqlClient
Partial Class Default2
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString)
    Dim fname, lname, query, mname, dob1, doa3, dob3, phone, doa1, add, lschool As String
    Dim cmd, cmd1 As SqlCommand
    Dim dob, doa As Date
    Dim result As Boolean
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

        If (dob1 = "") Then
            result = True
            dob3 = "null"
        Else
            dob = Date.Parse(dob1)
            result = False
        End If
        If (doa1 = "") Then
            result = True
            doa3 = "null"
        Else
            doa = Date.Parse(doa1)

        End If



        cn.Open()


        Dim query2 As String = "Select max(ID) from student"
        cmd1 = New SqlCommand(query2, cn)
        Dim id As Integer = cmd1.ExecuteScalar()
        If (doa1 = "") Then
            query = "Insert into student values(" & id + 1 & ",'" & fname & "'," & "'" & mname & "','" & lname & "','" & dob & "','" & add & "'," & "'" & phone & "'," & "'" & doa3 & "'," & "'" & lschool & "')"
        ElseIf (dob1 = "") Then
            query = "Insert into student values(" & id + 1 & ",'" & fname & "'," & "'" & mname & "','" & lname & "','" & dob3 & "','" & add & "'," & "'" & phone & "'," & "'" & doa & "'," & "'" & lschool & "')"
        Else
            query = "Insert into student values(" & id + 1 & ",'" & fname & "'," & "'" & mname & "','" & lname & "','" & dob & "','" & add & "'," & "'" & phone & "'," & "'" & doa & "'," & "'" & lschool & "')"


        End If



        cmd = New SqlCommand(query, cn)
        If (cmd.ExecuteNonQuery()) Then
            MsgBox("Inserted", MsgBoxStyle.Information)

        End If
    End Sub

    
End Class
