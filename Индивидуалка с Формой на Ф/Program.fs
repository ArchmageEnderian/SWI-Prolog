open System
open System.Windows.Forms

let MainForm = new Form(Width = 400, Height = 300, Text = "F# Main Form")


let ProgressBar1 = new ProgressBar(Dock=DockStyle.Top)
let ScrollBar1 = new TrackBar(Top = 50, Maximum = 100, Width = 400)
let Button1 = new Button(Top = 100, Left = 150, Text="Перейти на форму 3")
MainForm.Controls.Add(ProgressBar1)
MainForm.Controls.Add(ScrollBar1)
MainForm.Controls.Add(Button1)
let Change _ = ProgressBar1.Value <- ScrollBar1.Value
let _ = ScrollBar1.ValueChanged.Add(Change)


[<EntryPoint>]
let main argv = 
    Application.Run(MainForm)
    0 // return an integer exit code
