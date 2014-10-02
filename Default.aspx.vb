
Partial Class _Default
    Inherits System.Web.UI.Page

    'Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.SelectedIndexChanged
    '    Dim pid As String = ListView1.SelectedValue
    '    Response.Redirect("ProductPage.aspx?prod=" & pid)
    'End Sub

    Protected Sub ListView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ListView1.SelectedIndexChanged
        Dim pid As String = ListView1.SelectedValue
        Response.Redirect("ProductPage.aspx?prod=" & pid)

    End Sub
End Class
