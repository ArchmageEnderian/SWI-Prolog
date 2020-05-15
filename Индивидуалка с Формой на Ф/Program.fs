open System
open System.Windows.Forms

let MainForm = new Form(Width = 420, Height = 300, Text = "F# Main Form")


let TrackBarForButton = new TrackBar(Top = 50,Minimum = 100, Maximum = 400, Width = 400)
let E1M1Button = new Button(Top = 100, Width = 100, Text="У врат Ада")

MainForm.Controls.Add(TrackBarForButton)
MainForm.Controls.Add(E1M1Button)

let Change _ = (E1M1Button.Width <- TrackBarForButton.Value)
let _ = TrackBarForButton.ValueChanged.Add(Change)



[<EntryPoint>]
let main argv = 
    Application.Run(MainForm)
    0 // return an integer exit code
