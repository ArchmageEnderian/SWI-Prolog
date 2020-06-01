open System

let prov x y =
    let rec delenie (x: int) (y: int) list =
        let modd = x % y
        let div = x / y
        let modlist = div :: list
        if (List.length list = 1000) then
            []
        else
            if (modd = 0) then
                modlist
            else
                match List.tryFindIndex (fun x -> x = div) list with
                |None -> delenie (modd*10) y modlist
                |_ -> [1;2;3;4;5]
                
    printf "%A" (delenie 1 16 [])        

[<EntryPoint>]
let main argv =
    let _ = prov 15 2
    0 // return an integer exit code
