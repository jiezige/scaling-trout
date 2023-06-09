Attribute VB_Name = "模块3_开通与交维情况统计"
Option Explicit

Sub 按钮3_Click()   '开通与交维情况统计

    Dim MyWorkbook As Workbook
    Dim i As Long, MyRows As Long
    Dim fName As String, filename As String
    Dim TempArray, TempArray1, TempArray2, TempArray3, TempArray4, TempArray5 As Variant

    Set MyWorkbook = ThisWorkbook

    Application.ScreenUpdating = False
    Application.DisplayAlerts = False
    
    

    MyRows = Sheet8.UsedRange.Rows.Count
    If MyRows > 1 Then
        Sheet8.Select
        Range("Q2").FormulaR1C1 = "=COUNTIFS(当日审核工单!C[-16],RC[-3],当日审核工单!C[-3],""通过"")"
        Range("R2").FormulaR1C1 = "=COUNTIFS(当日审核工单!C[-17],RC[-4],当日审核工单!C[-4],""退回"")"
        Range("Q2:R" & MyRows).Select
        Selection.FillDown
        Selection.Copy
        Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks:=False, Transpose:=False
        Range("A1").Select
    End If

    MyRows = Sheet1.UsedRange.Rows.Count
    If MyRows > 1 Then
        Sheet1.Select
        Range("R2").FormulaR1C1 = "=IFERROR(INDEX('5G站点开通清单'!C[-16],MATCH(RC[-17],'5G站点开通清单'!C[-3],0)),"""")"
        Range("T2").FormulaR1C1 = "=IFERROR(INDEX('5G站点开通清单'!C[-11],MATCH(RC[-19],'5G站点开通清单'!C[-5],0)),"""")"
        Range("R2:T" & MyRows).Select
        Selection.FillDown
        Selection.Copy
        Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks:=False, Transpose:=False
        Range("A1").Select
    End If
    
    
    MyRows = Sheet3.UsedRange.Rows.Count
    If MyRows > 1 Then
        Sheet3.Select
        Range("R2").FormulaR1C1 = "=IFERROR(INDEX('5G站点开通清单'!C[-16],MATCH(RC[-17],'5G站点开通清单'!C[-3],0)),"""")"
        Range("T2").FormulaR1C1 = "=IFERROR(INDEX('5G站点开通清单'!C[-11],MATCH(RC[-19],'5G站点开通清单'!C[-5],0)),"""")"
        Range("R2:T" & MyRows).Select
        Selection.FillDown
        Selection.Copy
        Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks:=False, Transpose:=False
        Range("A1").Select
    End If
    

    Sheet4.Select
    Range("B3").FormulaR1C1 = "=SUM(COUNTIFS(当日审核工单!C[3],RC[-1],当日审核工单!C[12],""通过"",当日审核工单!C,""入网""))"
    Range("C3").FormulaR1C1 = "=SUM(COUNTIFS(当日审核工单!C[2],RC[-2],当日审核工单!C[11],""退回"",当日审核工单!C[-1],""入网""))"
    Range("D3").FormulaR1C1 = "=SUM(COUNTIFS(当日审核工单!C[1],RC[-3],当日审核工单!C[10],""通过"",当日审核工单!C[-2],{""调整"",""调整2.0""}))"
    Range("E3").FormulaR1C1 = "=SUM(COUNTIFS(当日审核工单!C,RC[-4],当日审核工单!C[9],""退回"",当日审核工单!C[-3],{""调整"",""调整2.0""}))"
    Range("F3").FormulaR1C1 = "=SUM(COUNTIFS(当日审核工单!C[-1],RC[-5],当日审核工单!C[8],""通过""))"
    Range("G3").FormulaR1C1 = "=SUM(COUNTIFS(当日审核工单!C[-2],RC[-6],当日审核工单!C[7],""退回""))"
    Range("H3").FormulaR1C1 = "=RC[-1]+RC[-2]"
    Range("I3").FormulaR1C1 = "=IFERROR(RC[-2]/RC[-1],0)"
    Range("J3").FormulaR1C1 = "=SUM(COUNTIFS(当日审核工单!C[-5],RC[-9],当日审核工单!C[4],""通过"",当日审核工单!C[3],""*反向*""))"
    Range("K3").FormulaR1C1 = "=SUM(COUNTIFS(当日审核工单!C[-6],RC[-10],当日审核工单!C[3],""退回"",当日审核工单!C[2],""*反向*""))"
    Range("B3:K13").Select
    Selection.FillDown

    Range("B20").FormulaR1C1 = "=COUNTIFS('5G站点开通清单'!C[1],RC[-1],'5G站点开通清单'!C[7],""宏站"",'5G站点开通清单'!C[8],""*开通*"")"
    Range("C20").FormulaR1C1 = "=COUNTIFS('5G站点开通清单'!C,RC[-2],'5G站点开通清单'!C[6],""室分"",'5G站点开通清单'!C[7],""*开通*"")"
    Range("D20").FormulaR1C1 = "=COUNTIFS('5G站点开通清单'!C[-1],RC[-3],'5G站点开通清单'!C[5],""宏站"",'5G站点开通清单'!C[6],""*开通*"",'5G站点开通清单'!C[13],""已交维"")"
    Range("E20").FormulaR1C1 = "=COUNTIFS('5G站点开通清单'!C[-2],RC[-4],'5G站点开通清单'!C[4],""室分"",'5G站点开通清单'!C[5],""*开通*"",'5G站点开通清单'!C[12],""已交维"")"
    Range("F20").FormulaR1C1 = "=IFERROR((RC[-2]+RC[-1])/(RC[-4]+RC[-3]),"""")"
    Range("G20").FormulaR1C1 = "=RC[-5]-RC[-3]"
    Range("H20").FormulaR1C1 = "=RC[-5]-RC[-3]"
    Range("I20").FormulaR1C1 = "=COUNTIFS('5G站点开通清单'!C[-6],RC[-8],'5G站点开通清单'!C,""宏站"",'5G站点开通清单'!C[4],1,'5G站点开通清单'!C[8],""未交维"")"
    Range("J20").FormulaR1C1 = "=COUNTIFS('5G站点开通清单'!C[-7],RC[-9],'5G站点开通清单'!C[-1],""室分"",'5G站点开通清单'!C[3],1,'5G站点开通清单'!C[7],""未交维"")"
    Range("K20").FormulaR1C1 = "=COUNTIFS('5G站点开通清单'!C[-8],RC[-10],'5G站点开通清单'!C[-2],""宏站"",'5G站点开通清单'!C[3],1,'5G站点开通清单'!C[6],""未交维"")"
    Range("L20").FormulaR1C1 = "=COUNTIFS('5G站点开通清单'!C[-9],RC[-11],'5G站点开通清单'!C[-3],""室分"",'5G站点开通清单'!C[2],1,'5G站点开通清单'!C[5],""未交维"")"
    Range("M20").FormulaR1C1 = "=SUM(COUNTIFS(当日审核工单!C[-8],RC[-12],当日审核工单!C[1],""通过"",当日审核工单!C,{""5G入网"",""*NR*入网"",""*NR-700*"",""*700M*""}))"
    Range("N20").FormulaR1C1 = "=SUM(COUNTIFS(当日审核工单!C[-9],RC[-13],当日审核工单!C,""退回"",当日审核工单!C[-1],{""5G入网"",""*NR*入网"",""*NR-700*"",""*700M*""}))"
    Range("O20").FormulaR1C1 = "=IFERROR(RC[-1]/(RC[-2]+RC[-1]),0)"
    Range("B20:O30").Select
    Selection.FillDown
    Selection.Copy
    Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks:=False, Transpose:=False

    Range("B37").FormulaR1C1 = "=COUNTIFS('5G站点开通清单'!C,""5G二期"",'5G站点开通清单'!C[1],RC[-1],'5G站点开通清单'!C[7],""宏站"",'5G站点开通清单'!C[8],""*开通*"")"
    Range("C37").FormulaR1C1 = "=COUNTIFS('5G站点开通清单'!C[-1],""5G二期"",'5G站点开通清单'!C,RC[-2],'5G站点开通清单'!C[6],""室分"",'5G站点开通清单'!C[7],""*开通*"")"
    Range("D37").FormulaR1C1 = "=COUNTIFS('5G站点开通清单'!C[-2],""5G二期"",'5G站点开通清单'!C[-1],RC[-3],'5G站点开通清单'!C[5],""宏站"",'5G站点开通清单'!C[6],""*开通*"",'5G站点开通清单'!C[13],""已交维"")"
    Range("E37").FormulaR1C1 = "=COUNTIFS('5G站点开通清单'!C[-3],""5G二期"",'5G站点开通清单'!C[-2],RC[-4],'5G站点开通清单'!C[4],""室分"",'5G站点开通清单'!C[5],""*开通*"",'5G站点开通清单'!C[12],""已交维"")"
    Range("F37").FormulaR1C1 = "=IFERROR((RC[-2]+RC[-1])/(RC[-4]+RC[-3]),"""")"
    Range("G37").FormulaR1C1 = "=RC[-5]-RC[-3]"
    Range("H37").FormulaR1C1 = "=RC[-5]-RC[-3]"
    Range("I37").FormulaR1C1 = "=COUNTIFS('5G站点开通清单'!C[-7],""5G二期"",'5G站点开通清单'!C[-6],RC[-8],'5G站点开通清单'!C,""宏站"",'5G站点开通清单'!C[4],1,'5G站点开通清单'!C[8],""未交维"")"
    Range("J37").FormulaR1C1 = "=COUNTIFS('5G站点开通清单'!C[-8],""5G二期"",'5G站点开通清单'!C[-7],RC[-9],'5G站点开通清单'!C[-1],""室分"",'5G站点开通清单'!C[3],1,'5G站点开通清单'!C[7],""未交维"")"
    Range("K37").FormulaR1C1 = "=COUNTIFS('5G站点开通清单'!C[-9],""5G二期"",'5G站点开通清单'!C[-8],RC[-10],'5G站点开通清单'!C[-2],""宏站"",'5G站点开通清单'!C[3],1,'5G站点开通清单'!C[6],""未交维"")"
    Range("L37").FormulaR1C1 = "=COUNTIFS('5G站点开通清单'!C[-10],""5G二期"",'5G站点开通清单'!C[-9],RC[-11],'5G站点开通清单'!C[-3],""室分"",'5G站点开通清单'!C[2],1,'5G站点开通清单'!C[5],""未交维"")"
    Range("M37").FormulaR1C1 = "=SUM(COUNTIFS(当日审核工单!C[5],""5G二期"",当日审核工单!C[-8],RC[-12],当日审核工单!C[1],""通过"",当日审核工单!C,{""5G入网"",""*NR*入网""}))"
    Range("N37").FormulaR1C1 = "=SUM(COUNTIFS(当日审核工单!C[4],""5G二期"",当日审核工单!C[-9],RC[-13],当日审核工单!C,""退回"",当日审核工单!C[-1],{""5G入网"",""*NR*入网""}))"
    Range("O37").FormulaR1C1 = "=IFERROR(RC[-1]/(RC[-2]+RC[-1]),0)"
    Range("B37:O47").Select
    Selection.FillDown
    Selection.Copy
    Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks:=False, Transpose:=False
    
    Range("B102").FormulaR1C1 = "=COUNTIFS('5G站点开通清单'!C,""5G三期二阶段"",'5G站点开通清单'!C[1],RC[-1],'5G站点开通清单'!C[7],""宏站"",'5G站点开通清单'!C[8],""*开通*"")"
    Range("C102").FormulaR1C1 = "=COUNTIFS('5G站点开通清单'!C[-1],""5G三期二阶段"",'5G站点开通清单'!C,RC[-2],'5G站点开通清单'!C[6],""室分"",'5G站点开通清单'!C[7],""*开通*"")"
    Range("D102").FormulaR1C1 = "=COUNTIFS('5G站点开通清单'!C[-2],""5G三期二阶段"",'5G站点开通清单'!C[-1],RC[-3],'5G站点开通清单'!C[5],""宏站"",'5G站点开通清单'!C[6],""*开通*"",'5G站点开通清单'!C[13],""已交维"")"
    Range("E102").FormulaR1C1 = "=COUNTIFS('5G站点开通清单'!C[-3],""5G三期二阶段"",'5G站点开通清单'!C[-2],RC[-4],'5G站点开通清单'!C[4],""室分"",'5G站点开通清单'!C[5],""*开通*"",'5G站点开通清单'!C[12],""已交维"")"
    Range("F102").FormulaR1C1 = "=IFERROR((RC[-2]+RC[-1])/(RC[-4]+RC[-3]),"""")"
    Range("G102").FormulaR1C1 = "=RC[-5]-RC[-3]"
    Range("H102").FormulaR1C1 = "=RC[-5]-RC[-3]"
    Range("I102").FormulaR1C1 = "=COUNTIFS('5G站点开通清单'!C[-7],""5G三期二阶段"",'5G站点开通清单'!C[-6],RC[-8],'5G站点开通清单'!C,""宏站"",'5G站点开通清单'!C[4],1,'5G站点开通清单'!C[8],""未交维"")"
    Range("J102").FormulaR1C1 = "=COUNTIFS('5G站点开通清单'!C[-8],""5G三期二阶段"",'5G站点开通清单'!C[-7],RC[-9],'5G站点开通清单'!C[-1],""室分"",'5G站点开通清单'!C[3],1,'5G站点开通清单'!C[7],""未交维"")"
    Range("K102").FormulaR1C1 = "=COUNTIFS('5G站点开通清单'!C[-9],""5G三期二阶段"",'5G站点开通清单'!C[-8],RC[-10],'5G站点开通清单'!C[-2],""宏站"",'5G站点开通清单'!C[3],1,'5G站点开通清单'!C[6],""未交维"")"
    Range("L102").FormulaR1C1 = "=COUNTIFS('5G站点开通清单'!C[-10],""5G三期二阶段"",'5G站点开通清单'!C[-9],RC[-11],'5G站点开通清单'!C[-3],""室分"",'5G站点开通清单'!C[2],1,'5G站点开通清单'!C[5],""未交维"")"
    Range("M102").FormulaR1C1 = "=SUM(COUNTIFS(当日审核工单!C[5],""5G三期二阶段"",当日审核工单!C[-8],RC[-12],当日审核工单!C[1],""通过"",当日审核工单!C,{""5G入网"",""*NR*入网""}))"
    Range("N102").FormulaR1C1 = "=SUM(COUNTIFS(当日审核工单!C[4],""5G三期二阶段"",当日审核工单!C[-9],RC[-13],当日审核工单!C,""退回"",当日审核工单!C[-1],{""5G入网"",""*NR*入网""}))"
    Range("O102").FormulaR1C1 = "=IFERROR(RC[-1]/(RC[-2]+RC[-1]),0)"
    Range("B102:O112").Select
    Selection.FillDown
    Selection.Copy
    Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks:=False, Transpose:=False

    Range("C53").FormulaR1C1 = "=COUNTIF('3DMIMO二期开通清单'!C[-1],RC[-2])"
    Range("D53").FormulaR1C1 = "=COUNTIFS('3DMIMO二期开通清单'!C[-2],RC[-3],'3DMIMO二期开通清单'!C[5],""*开通*"")"
    Range("E53").FormulaR1C1 = "=COUNTIFS('3DMIMO二期开通清单'!C[-3],RC[-4],'3DMIMO二期开通清单'!C[4],""*开通*"",'3DMIMO二期开通清单'!C[11],""已交维"")"
    Range("F53").FormulaR1C1 = "=COUNTIFS('3DMIMO二期开通清单'!C[-4],RC[-5],'3DMIMO二期开通清单'!C[3],""*开通*"",'3DMIMO二期开通清单'!C[9],""已归档"")"
    Range("G53").FormulaR1C1 = "=RC[-2]/RC[-4]"
    Range("H53").FormulaR1C1 = "=RC[-3]/RC[-4]"
    Range("I53").FormulaR1C1 = "=COUNTIFS('3DMIMO二期开通清单'!C[-7],RC[-8],'3DMIMO二期开通清单'!C[3],1,'3DMIMO二期开通清单'!C[7],""未交维"")"
    Range("C53:I63").Select
    Selection.FillDown
    Selection.Copy
    Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks:=False, Transpose:=False

    Range("B69").FormulaR1C1 = "=COUNTIF(NB三期开通清单!C,RC[-1])"
    Range("C69").FormulaR1C1 = "=COUNTIFS(NB三期开通清单!C[-1],RC[-2],NB三期开通清单!C[6],""*开通*"")"
    Range("D69").FormulaR1C1 = "=COUNTIFS(NB三期开通清单!C[-2],RC[-3],NB三期开通清单!C[5],""*开通*"",NB三期开通清单!C[9],""已交维"")"
    Range("E69").FormulaR1C1 = "=RC[-1]/RC[-2]"
    Range("B69:E79").Select
    Selection.FillDown
    Selection.Copy
    Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks:=False, Transpose:=False

    Range("B86").FormulaR1C1 = "=COUNTIF(FDD调整专项开通清单!C,RC[-1])"
    Range("C86").FormulaR1C1 = "=COUNTIFS(FDD调整专项开通清单!C[-1],RC[-2],FDD调整专项开通清单!C[6],""*开通*"")"
    Range("D86").FormulaR1C1 = "=COUNTIFS(FDD调整专项开通清单!C[-2],RC[-3],FDD调整专项开通清单!C[5],""*开通*"",FDD调整专项开通清单!C[12],""已交维"")"
    Range("E86").FormulaR1C1 = "=COUNTIFS(FDD调整专项开通清单!C[-3],RC[-4],FDD调整专项开通清单!C[4],""*开通*"",FDD调整专项开通清单!C[11],""未交维"")"
    Range("F86").FormulaR1C1 = "=COUNTIFS(FDD调整专项开通清单!C[-4],RC[-5],FDD调整专项开通清单!C[7],1,FDD调整专项开通清单!C[10],""未交维"")"
    Range("G86").FormulaR1C1 = "=COUNTIFS(FDD调整专项开通清单!C[-5],RC[-6],FDD调整专项开通清单!C[10],1)"
    Range("H86").FormulaR1C1 = "=COUNTIFS(FDD调整专项开通清单!C[-6],RC[-7],FDD调整专项开通清单!C[10],1)"
    Range("I86").FormulaR1C1 = "=IFERROR(RC[-1]/(RC[-2]+RC[-1]),0)"
    Range("B86:I96").Select
    Selection.FillDown
    Selection.Copy
    Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks:=False, Transpose:=False
    
    Range("B118").FormulaR1C1 = "=COUNTIFS('5G站点开通清单'!C[1],RC[-1],'5G站点开通清单'!C[8],""*开通*"",'5G站点开通清单'!C[6],""NR-700"")"
    Range("C118").FormulaR1C1 = "=COUNTIFS('5G站点开通清单'!C[0],RC[-2],'5G站点开通清单'!C[7],""*开通*"",'5G站点开通清单'!C[5],""NR-700"",'5G站点开通清单'!C[14],""已交维"")"
    Range("D118").FormulaR1C1 = "=IFERROR(RC[-1]/RC[-2],0)"
    Range("E118").FormulaR1C1 = "=RC[-3]-RC[-2]"
    Range("F118").FormulaR1C1 = "=COUNTIFS('5G站点开通清单'!C[-3],RC[-5],'5G站点开通清单'!C[7],1,'5G站点开通清单'!C[2],""NR-700"",'5G站点开通清单'!C[11],""未交维"")"
    Range("G118").FormulaR1C1 = "=COUNTIFS('5G站点开通清单'!C[-4],RC[-6],'5G站点开通清单'!C[6],1,'5G站点开通清单'!C[1],""NR-700"",'5G站点开通清单'!C[10],""未交维"")"
    Range("H118").FormulaR1C1 = "=SUM(COUNTIFS(当日审核工单!C[-3],RC[-7],当日审核工单!C[6],""通过"",当日审核工单!C[5],{""*NR-700*"",""*700M*""}))"
    Range("I118").FormulaR1C1 = "=SUM(COUNTIFS(当日审核工单!C[-4],RC[-8],当日审核工单!C[5],""退回"",当日审核工单!C[4],{""*NR-700*"",""*700M*""}))"
    Range("J118").FormulaR1C1 = "=IFERROR(RC[-1]/（RC[-1]+RC[-2]）,0)"
    Range("B118:J128").Select
    Selection.FillDown
    Selection.Copy
    Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks:=False, Transpose:=False
    
    Range("B136").FormulaR1C1 = "=COUNTIFS('5G站点开通清单'!C,""5G四期"",'5G站点开通清单'!C[1],RC[-1],'5G站点开通清单'!C[7],""宏站"",'5G站点开通清单'!C[8],""*开通*"")"
    Range("C136").FormulaR1C1 = "=COUNTIFS('5G站点开通清单'!C[-1],""5G四期"",'5G站点开通清单'!C,RC[-2],'5G站点开通清单'!C[6],""室分"",'5G站点开通清单'!C[7],""*开通*"")"
    Range("D136").FormulaR1C1 = "=COUNTIFS('5G站点开通清单'!C[-2],""5G四期"",'5G站点开通清单'!C[-1],RC[-3],'5G站点开通清单'!C[5],""宏站"",'5G站点开通清单'!C[6],""*开通*"",'5G站点开通清单'!C[13],""已交维"")"
    Range("E136").FormulaR1C1 = "=COUNTIFS('5G站点开通清单'!C[-3],""5G四期"",'5G站点开通清单'!C[-2],RC[-4],'5G站点开通清单'!C[4],""室分"",'5G站点开通清单'!C[5],""*开通*"",'5G站点开通清单'!C[12],""已交维"")"
    Range("F136").FormulaR1C1 = "=IFERROR((RC[-2]+RC[-1])/(RC[-4]+RC[-3]),"""")"
    Range("G136").FormulaR1C1 = "=RC[-5]-RC[-3]"
    Range("H136").FormulaR1C1 = "=RC[-5]-RC[-3]"
    Range("I136").FormulaR1C1 = "=COUNTIFS('5G站点开通清单'!C[-7],""5G四期"",'5G站点开通清单'!C[-6],RC[-8],'5G站点开通清单'!C,""宏站"",'5G站点开通清单'!C[4],1,'5G站点开通清单'!C[8],""未交维"")"
    Range("J136").FormulaR1C1 = "=COUNTIFS('5G站点开通清单'!C[-8],""5G四期"",'5G站点开通清单'!C[-7],RC[-9],'5G站点开通清单'!C[-1],""室分"",'5G站点开通清单'!C[3],1,'5G站点开通清单'!C[7],""未交维"")"
    Range("K136").FormulaR1C1 = "=COUNTIFS('5G站点开通清单'!C[-9],""5G四期"",'5G站点开通清单'!C[-8],RC[-10],'5G站点开通清单'!C[-2],""宏站"",'5G站点开通清单'!C[3],1,'5G站点开通清单'!C[6],""未交维"")"
    Range("L136").FormulaR1C1 = "=COUNTIFS('5G站点开通清单'!C[-10],""5G四期"",'5G站点开通清单'!C[-9],RC[-11],'5G站点开通清单'!C[-3],""室分"",'5G站点开通清单'!C[2],1,'5G站点开通清单'!C[5],""未交维"")"
    Range("M136").FormulaR1C1 = "=SUM(COUNTIFS(当日审核工单!C[5],""5G四期"",当日审核工单!C[-8],RC[-12],当日审核工单!C[1],""通过"",当日审核工单!C,{""5G入网"",""*NR*入网""}))"
    Range("N136").FormulaR1C1 = "=SUM(COUNTIFS(当日审核工单!C[4],""5G四期"",当日审核工单!C[-9],RC[-13],当日审核工单!C,""退回"",当日审核工单!C[-1],{""5G入网"",""*NR*入网""}))"
    Range("O136").FormulaR1C1 = "=IFERROR(RC[-1]/(RC[-2]+RC[-1]),0)"
    Range("B136:O146").Select
    Selection.FillDown
    Selection.Copy
    Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks:=False, Transpose:=False

    
    Range("B152").FormulaR1C1 = "=COUNTIFS('5G站点开通清单'!C[1],RC[-1],'5G站点开通清单'!C[8],""*开通*"",'5G站点开通清单'!C[0],""NR-700M二期"")"
    Range("C152").FormulaR1C1 = "=COUNTIFS('5G站点开通清单'!C[0],RC[-2],'5G站点开通清单'!C[7],""*开通*"",'5G站点开通清单'!C[-1],""NR-700M二期"",'5G站点开通清单'!C[14],""已交维"")"
    Range("D152").FormulaR1C1 = "=IFERROR(RC[-1]/RC[-2],0)"
    Range("E152").FormulaR1C1 = "=RC[-3]-RC[-2]"
    Range("F152").FormulaR1C1 = "=COUNTIFS('5G站点开通清单'!C[-3],RC[-5],'5G站点开通清单'!C[7],1,'5G站点开通清单'!C[-4],""NR-700M二期"",'5G站点开通清单'!C[11],""未交维"")"
    Range("G152").FormulaR1C1 = "=COUNTIFS('5G站点开通清单'!C[-4],RC[-6],'5G站点开通清单'!C[6],1,'5G站点开通清单'!C[-5],""NR-700M二期"",'5G站点开通清单'!C[10],""未交维"")"
    Range("H152").FormulaR1C1 = "=SUM(COUNTIFS(当日审核工单!C[-3],RC[-7],当日审核工单!C[6],""通过"",当日审核工单!C[5],{""*NR-700*"",""*700M*""}))"
    Range("I152").FormulaR1C1 = "=SUM(COUNTIFS(当日审核工单!C[-4],RC[-8],当日审核工单!C[5],""退回"",当日审核工单!C[4],{""*NR-700*"",""*700M*""}))"
    Range("J152").FormulaR1C1 = "=IFERROR(RC[-1]/（RC[-1]+RC[-2]）,0)"
    Range("B152:J162").Select
    Selection.FillDown
    Selection.Copy
    Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks:=False, Transpose:=False
    
    
    Range("B169").FormulaR1C1 = "=SUM(COUNTIFS(高质量交维累计!C[1],RC[-1],高质量交维累计!C[7],""室分"",高质量交维累计!C[19],""重要场景""))"
    Range("C169").FormulaR1C1 = "=SUM(COUNTIFS(高质量交维累计!C,RC[-2],高质量交维累计!C[6],""室分"",高质量交维累计!C[18],""一般场景""))"
    Range("D169").FormulaR1C1 = "=SUM(COUNTIFS(5G站点开通清单!C[-1],RC[-3],5G站点开通清单!C[5],""室分"",5G站点开通清单!C[7],"">0"",5G站点开通清单!C[13],""未交维""))"
    Range("E169").FormulaR1C1 = "=SUM(COUNTIFS(当日审核工单!C,RC[-4],当日审核工单!C[9],""通过"",当日审核工单!C[-3],""入网"",当日审核工单!C[12],""重要场景""))"
    Range("F169").FormulaR1C1 = "=SUM(COUNTIFS(当日审核工单!C[-1],RC[-5],当日审核工单!C[8],""退回"",当日审核工单!C[-4],""入网"",当日审核工单!C[11],""重要场景""))"
    Range("G169").FormulaR1C1 = "=IFERROR(RC[-2]/(RC[-1]+RC[-2]),0)"
    Range("H169").FormulaR1C1 = "=SUM(COUNTIFS(当日审核工单!C[-3],RC[-7],当日审核工单!C[6],""通过"",当日审核工单!C[-6],""入网"",当日审核工单!C[9],""一般场景""))"
    Range("I169").FormulaR1C1 = "=SUM(COUNTIFS(当日审核工单!C[-4],RC[-8],当日审核工单!C[5],""退回"",当日审核工单!C[-7],""入网"",当日审核工单!C[8],""一般场景""))"
    Range("J169").FormulaR1C1 = "=IFERROR(RC[-2]/(RC[-1]+RC[-2]),0)"
    Range("K169").FormulaR1C1 = "=IFERROR((RC[-6]+RC[-3])/(RC[-6]+RC[-5]+RC[-3]+RC[-2]),0)"
    Range("B169:K179").Select
    Selection.FillDown
    Selection.Copy
    Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks:=False, Transpose:=False
            
    
    Range("M185") = "=SUM(N185:O185)"
    Range("N185") = "=SUM(B169:C169)"
    Range("O185") = "=SUM(D169)"
    Range("P185") = "=SUM(E169)"
    Range("Q185") = "=SUM(F169)"
    Range("R185") = "=SUM(G169)"
    Range("S185") = "=SUM(H169)"
    Range("T185") = "=SUM(I169)"
    Range("U185") = "=SUM(J169)"
    Range("V185") = "=SUM(K169)"
    Range("M185:V196").Select
    Selection.FillDown
    Selection.Copy
    Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks:=False, Transpose:=False
    
    
        
    Range("B202").FormulaR1C1 = "=COUNTIFS('5G站点开通清单'!C,""5G五期"",'5G站点开通清单'!C[1],RC[-1],'5G站点开通清单'!C[7],""宏站"",'5G站点开通清单'!C[8],""*开通*"")"
    Range("C202").FormulaR1C1 = "=COUNTIFS('5G站点开通清单'!C[-1],""5G五期"",'5G站点开通清单'!C,RC[-2],'5G站点开通清单'!C[6],""室分"",'5G站点开通清单'!C[7],""*开通*"")"
    Range("D202").FormulaR1C1 = "=COUNTIFS('5G站点开通清单'!C[-2],""5G五期"",'5G站点开通清单'!C[-1],RC[-3],'5G站点开通清单'!C[5],""宏站"",'5G站点开通清单'!C[6],""*开通*"",'5G站点开通清单'!C[13],""已交维"")"
    Range("E202").FormulaR1C1 = "=COUNTIFS('5G站点开通清单'!C[-3],""5G五期"",'5G站点开通清单'!C[-2],RC[-4],'5G站点开通清单'!C[4],""室分"",'5G站点开通清单'!C[5],""*开通*"",'5G站点开通清单'!C[12],""已交维"")"
    Range("F202").FormulaR1C1 = "=IFERROR((RC[-2]+RC[-1])/(RC[-4]+RC[-3]),"""")"
    Range("G202").FormulaR1C1 = "=RC[-5]-RC[-3]"
    Range("H202").FormulaR1C1 = "=RC[-5]-RC[-3]"
    Range("I202").FormulaR1C1 = "=COUNTIFS('5G站点开通清单'!C[-7],""5G五期"",'5G站点开通清单'!C[-6],RC[-8],'5G站点开通清单'!C,""宏站"",'5G站点开通清单'!C[4],1,'5G站点开通清单'!C[8],""未交维"")"
    Range("J202").FormulaR1C1 = "=COUNTIFS('5G站点开通清单'!C[-8],""5G五期"",'5G站点开通清单'!C[-7],RC[-9],'5G站点开通清单'!C[-1],""室分"",'5G站点开通清单'!C[3],1,'5G站点开通清单'!C[7],""未交维"")"
    Range("K202").FormulaR1C1 = "=COUNTIFS('5G站点开通清单'!C[-9],""5G五期"",'5G站点开通清单'!C[-8],RC[-10],'5G站点开通清单'!C[-2],""宏站"",'5G站点开通清单'!C[3],1,'5G站点开通清单'!C[6],""未交维"")"
    Range("L202").FormulaR1C1 = "=COUNTIFS('5G站点开通清单'!C[-10],""5G五期"",'5G站点开通清单'!C[-9],RC[-11],'5G站点开通清单'!C[-3],""室分"",'5G站点开通清单'!C[2],1,'5G站点开通清单'!C[5],""未交维"")"
    Range("M202").FormulaR1C1 = "=SUM(COUNTIFS(当日审核工单!C[5],""5G五期"",当日审核工单!C[-8],RC[-12],当日审核工单!C[1],""通过"",当日审核工单!C,{""5G入网"",""*NR*入网""}))"
    Range("N202").FormulaR1C1 = "=SUM(COUNTIFS(当日审核工单!C[4],""5G五期"",当日审核工单!C[-9],RC[-13],当日审核工单!C,""退回"",当日审核工单!C[-1],{""5G入网"",""*NR*入网""}))"
    Range("O202").FormulaR1C1 = "=IFERROR(RC[-1]/(RC[-2]+RC[-1]),0)"
    Range("B202:O212").Select
    Selection.FillDown
    Selection.Copy
    Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks:=False, Transpose:=False
         
      
    MyRows = Sheet3.UsedRange.Rows.Count
    If MyRows > 1 Then
        Sheet3.Select
        TempArray = Array("定点", "CQT", "网优工程师测试表格", "ping", "平层", "拨测页", "吞吐量", "通道平衡")                 'CQT
        TempArray1 = Array("未测全", "距离", "覆盖", "轨迹", "DT", "连续低速率", "切换", "外泄", "图例", "效果图")                     'DT
        TempArray2 = Array("资管", "纬度", "区县", "场景")                   '资管
        TempArray3 = Array("单验报告", "无需填写")                   '其他
        TempArray4 = Array("未遍历")
        TempArray5 = Array("TRP")
        
        For i = 2 To MyRows
            If Sheet3.Range("J" & i) <> "" Then
                If StrCheck(Sheet3.Range("J" & i), TempArray5) = True Then
                Sheet3.Range("S" & i) = "TRP"
                End If
            End If
        Next i
        
        For i = 2 To MyRows
            If Sheet3.Range("F" & i) <> "" Then
                        If StrCheck(Sheet3.Range("F" & i), TempArray4) = True Then
                            Sheet3.Range("S" & i) = "未遍历"
                        ElseIf StrCheck(Sheet3.Range("F" & i), TempArray) = True Then
                            Sheet3.Range("S" & i) = "CQT"
                        ElseIf StrCheck(Sheet3.Range("F" & i), TempArray1) = True Then
                            Sheet3.Range("S" & i) = "DT"
                        ElseIf StrCheck(Sheet3.Range("F" & i), TempArray2) = True Then
                            Sheet3.Range("S" & i) = "资管"
                        ElseIf StrCheck(Sheet3.Range("F" & i), TempArray3) = True Then
                            Sheet3.Range("S" & i) = "其他"
                        End If
            End If
        Next i
    End If
    
       
    
    
    Range("A1").Select

    按钮4_Click


    fName = Application.GetSaveAsFilename("交维日报_" & Format(Now() - 1, "yyyymmdd"))
    If fName = "False" Then Exit Sub
    Sheets(Array("当日审核工单", "审核情况汇总", "当日退回工单", "统计")).Copy
    ActiveWorkbook.SaveAs filename:=fName
    ActiveWorkbook.Save

    MyWorkbook.Activate
    Sheet4.Select
    Application.DisplayAlerts = True
    Application.ScreenUpdating = True

End Sub
