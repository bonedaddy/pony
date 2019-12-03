primitive Woke
primitive Broke

type MentalState is (Woke | Broke)

actor Main

    new create(env: Env) =>
        let mentalState : MentalState = Woke
        let amIWoke : Bool = match mentalState
            | Broke => false
            | Woke => true
        end
        env.out.print("am i woke? " + amIWoke.string())