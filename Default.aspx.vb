
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub DetailsView1_ItemDeleted(sender As Object, e As DetailsViewDeletedEventArgs) Handles DetailsView1.ItemDeleted
        GridView1.DataBind()
        GridView1.SelectRow(-1)
    End Sub

    Protected Sub DetailsView1_ItemUpdated(sender As Object, e As DetailsViewUpdatedEventArgs) Handles DetailsView1.ItemUpdated
        GridView1.DataBind()
        GridView1.SelectRow(-1)
    End Sub

    Protected Sub Page_PreRender(sender As Object, e As EventArgs) Handles Me.PreRender

        If IsNothing(GridView1.SelectedRow) Then
            Label1.Visible = True
            Label2.Visible = False
        Else
            Label1.Visible = False
            Label2.Visible = True
        End If


    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Response.Redirect("Default2.aspx")
    End Sub
End Class
