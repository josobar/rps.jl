
rpsdict = Dict([(1, "r"), (2, "p"), (3, "s")])

function start()
    while true
        choice = rand(1:3)
        print("Enter either \"r\", \"p\", or \"s\": ")
        input= readline()

        while !(input in ["r", "p", "s"])
            print("Enter either \"r\", \"p\", or \"s\": ")
            input = readline()
        end

        (rpsdict[choice] == input) ? println("Tie") :
        (rpsdict[choice] == "r" && input == "p") ? println("You Win\n") :
        (rpsdict[choice] == "r" && input == "s") ? println("You Lose\n") :
        (rpsdict[choice] == "p" && input == "r") ? println("You Lose\n") :
        (rpsdict[choice] == "p" && input == "s") ? println("You win\n") :
        (rpsdict[choice] == "s" && input == "p") ? println("You Lose\n") :
        (rpsdict[choice] == "s" && input == "r") ? println("You win\n") : println("something went wrong")

        print("Enter q if you want to quit: ")
        again = readline()
        if again == "q"
            break
        end
    end
end
