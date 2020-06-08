let form = new System.Windows.Forms.Form(Width = 300, Height = 180)

let label = new System.Windows.Forms.Label(Text = "Введите список кортежей:", Width = 280, Height = 20)
label.Location <- new System.Drawing.Point(10, 10)
form.Controls.Add(label)

let KortegTextBox = new System.Windows.Forms.TextBox(Text = "7 3 4 5 6; 2 3 4 6 7; 2 3 4 5 6; 4 3 10 4 5", Width = 265, Height = 25)
KortegTextBox.Location <- new System.Drawing.Point(10, 30)
form.Controls.Add(KortegTextBox)

let obrabotka_odnogo (kor:string) =
    match kor.Trim().Split(' ') with

    | [|a; b; c; d; e|] ->
        let convert = List.ofArray [|a; b; c; d; e|]
        let ToIntConvert = [ System.Convert.ToInt32(a); System.Convert.ToInt32(b); System.Convert.ToInt32(c); System.Convert.ToInt32(d); System.Convert.ToInt32(e) ]
        if (List.forall (fun x -> x < 10) ToIntConvert) then
            (ToIntConvert.Item(0), ToIntConvert.Item(1), ToIntConvert.Item(2), ToIntConvert.Item(3), ToIntConvert.Item(4))
        else
            (-1, -1, -1, -1, -1)

    | _ -> (-1, -1, -1, -1, -1) //Если не условие, то нафиг его

// Обработка списка введенных кортежей
let obrabotka_vsa (str:string) =
    let rec Razdelenie list razdelInt =
        match list with
        | [] -> List.filter ( fun x -> not (x = (-1, -1, -1, -1, -1))   ) razdelInt
        | h::t ->
            let TekKorteg = obrabotka_odnogo(h)
            Razdelenie t (List.append razdelInt [TekKorteg])

    Razdelenie (List.ofArray (str.Split(';'))) []

// Кушает список кортежей и выдает список интов
let fromKorToInt input =
    let rec PreobrazovatelvInt list clearIntegers =
        match list with
        | [] -> clearIntegers
        | h::t ->
            match h with
            | (a, b, c, d, e) ->
                let OtvetIzKorteg = e + d*10 + c*100 + b*1000 + a*10000
                PreobrazovatelvInt t (List.append clearIntegers [OtvetIzKorteg])

    PreobrazovatelvInt input []

//*****************************************************************
let rec VstavkaDlyaSortirovki i = function
| h::t -> min h i::(VstavkaDlyaSortirovki (max h i) t)
| _ -> [i]

let SortVstavkami l = List.foldBack VstavkaDlyaSortirovki l []
//*****************************************************************


let mainbuttonobrabotka _ =
    let ListRazdel = obrabotka_vsa KortegTextBox.Text
    let ListIntov = fromKorToInt ListRazdel
    let intListSorted = SortVstavkami ListIntov
    intListSorted.ToString()

let button = new System.Windows.Forms.Button(Text = "Посчитать", Width = 265)
button.Location <- new System.Drawing.Point(10, 50)
button.Click.Add(fun evArgs -> System.Windows.Forms.MessageBox.Show(mainbuttonobrabotka 666) |> ignore)
form.Controls.Add(button)

[<EntryPoint>]
let main argv =
    System.Windows.Forms.Application.Run(form)
    0