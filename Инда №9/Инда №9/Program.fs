open System

let rec UdalenitNuli list =
    if (list = []) then
        []
    else
        match (List.head list) with
            |0 -> UdalenitNuli (List.tail list)
            |_ -> list

let prov x y =
    let rec delenie (x: int) (y: int) list =
        let div = x / y
        let modd = x % y
        let modlist = div :: list
        if (List.length list = 1000) then
            0
        else
            if (modd = 0) then
                0
            else
                let Nuli = UdalenitNuli list
                match List.tryFindIndex (fun x -> x = div) Nuli with
                |None -> delenie (modd*10) y modlist
                |Some value -> value + 1
                
    printf "%A" (delenie 1 7 [])        

[<EntryPoint>]
let main argv =
    let _ = prov 15 2
    0 // return an integer exit code
