let converter (str:string) = 
    let rec reconverter (strList:string list) intList = 
        match strList with
        |[] -> intList
        |h::t -> reconverter t ((System.Convert.ToInt32 h)::intList)
    reconverter (List.ofArray (str.Split(' '))) []

let rec VstavkaDlyaSortirovki i = function
| h::t -> min h i::(VstavkaDlyaSortirovki (max h i) t)
| _ -> [i]

let SortVstavkami l = List.foldBack VstavkaDlyaSortirovki l []

[<EntryPoint>]
let main argv =
    let stroka = System.Console.ReadLine();
    printfn "%A" (SortVstavkami (converter stroka))
    0 // return an integer exit code
