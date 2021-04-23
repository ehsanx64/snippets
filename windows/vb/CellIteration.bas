' This subroutine does following tasks:
' 01. Get customer id from a cell (row 9 col 11)
' 02. Iterate through all rows in active sheet and
'	a. If fifth column of current row is equal to customer id
'		x. Get value at fourth column of current row and add it to accumulator (PointsSum)
' 03. Put PointsSum value inside cell at (row10col11)
Sub Button10_Click()
    Dim CustomerId As Long
    Dim PointsSum As Long
    Dim CurrentPoint As Long
    Dim CurrentSheet As Worksheet
    Dim rng As Range

    Set CurrentSheet = ActiveSheet
    PointsSum = 0
    CurrentPoint = 0
    ' Row 9, column 11
    CustomerId = CurrentSheet.Cells(9, 11)

    For Each rng In CurrentSheet.Rows
        If CurrentSheet.Cells(rng.Row, 5).Value = CustomerId Then
            CurrentPoint = Int(CurrentSheet.Cells(rng.Row, 4).Value)
            PointsSum = PointsSum + CurrentPoint
        End If
    Next rng
    CurrentSheet.Cells(10, 11) = PointsSum
End Sub
