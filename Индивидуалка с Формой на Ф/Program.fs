open System
open System.Windows.Forms

let MainForm = new Form(Width = 400, Height = 300, Text = "F# Main Form")


let ScrollBar1 = new TrackBar(Top = 50, Maximum = 100, Width = 400)
let E1M1Button = new Button(Top = 100, Left = 150, Text="Ад на земле")

MainForm.Controls.Add(ScrollBar1)
MainForm.Controls.Add(E1M1Button)
let Change _ = E1M1Button.Size.Width <- ScrollBar1.Value
let _ = ScrollBar1.ValueChanged.Add(Change)


[<EntryPoint>]
let main argv = 
    Application.Run(MainForm)
    0 // return an integer exit code
