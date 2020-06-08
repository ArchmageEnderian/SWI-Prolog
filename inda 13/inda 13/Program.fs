let converter (str:string) = 
    let rec reconverter (strList:string list) intList = 
        match strList with
        |[] -> intList
        |h::t -> reconverter t ((System.Convert.ToInt32 h)::intList)
    reconverter (List.ofArray (str.Split(' '))) []

[<EntryPoint>]
let main argv =
    printfn "%A" (converter "1 8 3 16 5 6")
    0 // return an integer exit code
