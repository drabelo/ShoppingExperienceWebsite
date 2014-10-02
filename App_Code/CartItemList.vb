Imports Microsoft.VisualBasic

Public Class CartItemList

    Private cartItems As List(Of CartItem)

    Public Sub New()
        cartItems = New List(Of CartItem)
    End Sub

    Public ReadOnly Property Count As Integer
        Get
            Return cartItems.Count
        End Get
    End Property

    Default Public Property Item(ByVal index As Integer) As CartItem
        Get
            Return cartItems(index)
        End Get
        Set(ByVal value As CartItem)
            cartItems(index) = value
        End Set
    End Property

    Default Public ReadOnly Property Item(ByVal id As String) As CartItem
        Get
            For Each c As CartItem In cartItems
                If c.Product.ProductID = id Then
                    Return c
                End If
            Next
            Return Nothing
        End Get
    End Property

    Public Shared Function GetCart() As CartItemList
        If CType(HttpContext.Current.Session("Cart"), CartItemList) Is Nothing Then
            HttpContext.Current.Session.Add("Cart", New CartItemList)
        End If
        Return CType(HttpContext.Current.Session("Cart"), CartItemList)
    End Function

    Public Sub AddItem(ByVal product As Product, ByVal quantity As Integer)
        Dim c As New CartItem(product, quantity)
        cartItems.Add(c)
    End Sub

    Public Sub RemoveAt(ByVal index As Integer)
        cartItems.RemoveAt(index)
    End Sub

    Public Sub Clear()
        cartItems.Clear()
    End Sub

End Class
