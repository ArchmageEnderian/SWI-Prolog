let form = new System.Windows.Forms.Form(Width = 300, Height = 180)

let label = new System.Windows.Forms.Label(Text = "Введите список кортежей:", Width = 280, Height = 20)
label.Location <- new System.Drawing.Point(10, 10)
form.Controls.Add(label)

let KortegTextBox = new System.Windows.Forms.TextBox(Text = "7 3 4 5 6; 2 3 4 6 7; 2 3 4 5 6; 4 3 10 4 5", Width = 265, Height = 25)
KortegTextBox.Location <- new System.Drawing.Point(10, 30)
form.Controls.Add(KortegTextBox)

//*****************************************************************
let rec VstavkaDlyaSortirovki i = function
| h::t -> min h i::(VstavkaDlyaSortirovki (max h i) t)
| _ -> [i]

let SortVstavkami l = List.foldBack VstavkaDlyaSortirovki l []
//*****************************************************************

let button = new System.Windows.Forms.Button(Text = "Посчитать", Width = 265)
button.Location <- new System.Drawing.Point(10, 50)
form.Controls.Add(button)

[<EntryPoint>]
let main argv =
    System.Windows.Forms.Application.Run(form)
    0
