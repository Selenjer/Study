Attribute VB_Name = "Модуль1"
Public Type TMatrix
  MLine() As Double
  Size As Integer
End Type

Public Function GetMatrix(ByRef Matrix() As TMatrix) As Integer
  Dim MatrixText As String
  Dim ParLine As String
  Dim Pars() As String
  Dim i As Byte
  Dim j As Byte
  MatrixText = Form1.Text1.Text
 Do While Len(MatrixText) > 0
  If InStr(1, MatrixText, Chr(13)) Then
     ParLine = Left(MatrixText, InStr(1, MatrixText, Chr(13)) - 1)
     MatrixText = Right(MatrixText, Len(MatrixText) - InStr(1, MatrixText, Chr(10)))
  Else
     ParLine = MatrixText
     MatrixText = ""
  End If
   ReDim Preserve Matrix(j)
   i = 0
   Do While Len(ParLine) > 0
      ReDim Preserve Matrix(j).MLine(i)
      If InStr(1, ParLine, ";") > 0 Then
        Matrix(j).MLine(i) = Left(ParLine, InStr(1, ParLine, ";") - 1)
        ParLine = Right(ParLine, Len(ParLine) - InStr(1, ParLine, ";"))
      Else
        Matrix(j).MLine(i) = ParLine
        ParLine = ""
      End If
      i = i + 1
   Loop
  Matrix(j).Size = i
  j = j + 1
 Loop
GetMatrix = j
End Function

Public Function CreateOutMatrix(ByRef OutMatrix() As TMatrix, ByRef Matrix() As TMatrix, ByRef MatrixSize As Integer) As Integer
  Dim i As Integer
  Dim j As Integer
  ReDim Preserve OutMatrix(Matrix(j).Size - 1)
   For j = 0 To MatrixSize - 1
    For i = 0 To Matrix(j).Size - 1
        ReDim Preserve OutMatrix(i).MLine(j)
        OutMatrix(i).MLine(j) = Matrix(j).MLine(i)
        OutMatrix(i).Size = MatrixSize
    Next
   Next
  CreateOutMatrix = Matrix(j - 1).Size
End Function
