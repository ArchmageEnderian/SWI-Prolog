let form = new System.Windows.Forms.Form(Width = 300, Height = 180)

let label = new System.Windows.Forms.Label(Text = "Введите список:", Width = 280, Height = 20)
label.Location <- new System.Drawing.Point(10, 10)
form.Controls.Add(label)

let TextBox = new System.Windows.Forms.TextBox(Text = "", Width = 265, Height = 25)
TextBox.Location <- new System.Drawing.Point(10, 30)
form.Controls.Add(TextBox)

let button = new System.Windows.Forms.Button(Text = "Считай!", Width = 265)
button.Location <- new System.Drawing.Point(10, 50)
form.Controls.Add(button)



[<EntryPoint>]
let main argv =
    System.Windows.Forms.Application.Run(form)
    0