open System

let rec delenie (x: int) (y: int) =
    Console.WriteLine(x / y) |> ignore
    let t = x % y

    if (t = 0) then
        0
    else
        delenie (t*10) y

[<EntryPoint>]
let main argv =
    let _ = delenie 1 4
    0 // return an integer exit code
