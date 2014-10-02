Imports System.Data

Partial Class ProductPage
    Inherits System.Web.UI.Page
    Private selectedProduct As Product




    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        selectedProduct = Me.GetSelectedProduct
    End Sub


    Private Function GetSelectedProduct() As Product

        Dim product As New Product
        product.ProductID = DetailsView1.Rows(0).Cells(1).Text()
        product.LongDescription = DetailsView1.Rows(1).Cells(1).Text()
        product.ShortDescription = DetailsView1.Rows(2).Cells(1).Text()
        product.Name = DetailsView1.Rows(3).Cells(1).Text()
        product.CategoryID = DetailsView1.Rows(4).Cells(1).Text()
        product.OnHand = DetailsView1.Rows(5).Cells(1).Text()
        product.UnitPrice = DetailsView1.Rows(6).Cells(1).Text()
        product.EventDate = DetailsView1.Rows(7).Cells(1).Text()
        Return product
    End Function





    Sub DetailsView1_ItemCommand(ByVal sender As Object, ByVal e As DetailsViewCommandEventArgs)


        If e.CommandName = "bttnAdd" Then
            Dim cart As CartItemList = CartItemList.GetCart
            Dim cartItem As CartItem = cart(selectedProduct.ProductID)
            If cartItem Is Nothing Then
                cart.AddItem(selectedProduct, 1)
            Else
                cartItem.AddQuantity(1)
            End If
            Response.Redirect("Cart.aspx")


        End If

    End Sub


    Protected Sub AccessDataSource1_Selecting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.SqlDataSourceSelectingEventArgs) Handles AccessDataSource1.Selecting

    End Sub
End Class
