Imports Microsoft.VisualBasic
Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Data

Namespace ExpandIfSelected
	Partial Public Class _Default
		Inherits System.Web.UI.Page
		Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)

		End Sub

		Protected Sub ASPxGridView1_DataBound(ByVal sender As Object, ByVal e As EventArgs)
			Dim selectedKeys As List(Of Object) = TryCast(ASPxGridView1.GetSelectedFieldValues("ProductID"), List(Of Object))
			For i As Integer = 0 To ASPxGridView1.VisibleRowCount - 1
				If ASPxGridView1.GetChildRowCount(i) <> 0 Then
					For j As Integer = 0 To ASPxGridView1.GetChildRowCount(i) - 1
						Dim rw As DataRow = TryCast(ASPxGridView1.GetChildDataRow(i, j), DataRow)
						Dim key As Object = rw("ProductID")
						If selectedKeys.Contains(key) Then
							ASPxGridView1.ExpandRow(i)
							Exit For
						End If
					Next j
				End If
			Next i
		End Sub
	End Class
End Namespace
