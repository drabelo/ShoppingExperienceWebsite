
Partial Class Cart
    Inherits System.Web.UI.Page

    Private cart As CartItemList


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        cart = CartItemList.GetCart
        If Not IsPostBack Then
            Me.DisplayCart()
        End If
    End Sub

    Private Sub DisplayCart()
        lstCart.Items.Clear()
        Dim cartItem As CartItem
        For i = 0 To cart.Count - 1
            cartItem = cart(i)
            lstCart.Items.Add(cartItem.Display)
        Next
    End Sub

    Protected Sub btnRemove_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnRemove.Click
        If cart.Count > 0 Then
            If lstCart.SelectedIndex > -1 Then
                cart.RemoveAt(lstCart.SelectedIndex)
                Me.DisplayCart()
            End If
        End If
    End Sub

    Protected Sub btnEmpty_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnEmpty.Click
        If cart.Count > 0 Then
            cart.Clear()
            lstCart.Items.Clear()
        End If
    End Sub

    Protected Sub btnCheckOut_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnCheckOut.Click
        Response.Redirect("Home.aspx")
    End Sub
End Class
