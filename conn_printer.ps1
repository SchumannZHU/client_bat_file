##printer-defaultを設定
$WshNet = New-Object -ComObject WScript.Network
$PrinterPath = "\\servername\printername"
$WshNet.AddWindowsPrinterConnection($PrinterPath)

##デフォルトプリンタの名前は以下コマンドで確認する
##(New-Object -ComObject WScript.NetWork).EnumPrinterConnections()

##デフォルトプリンタ設定
(New-Object -ComObject WScript.Network).EnumPrinterConnections()
$WshNet.SetDefaultPrinter('\\servername\printername')

##接続を外す場合
##remove-Printer \\servername\printername
