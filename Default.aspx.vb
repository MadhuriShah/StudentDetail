
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
        Else
            Label1.Visible = False

        End If


    End Sub
End Class
