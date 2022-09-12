function [b] = guess_function(a)
    b = 0;
    game_runs = true;
    if isnumeric(a);
        if mod(a,1) == 0 & a > 0;
            random = int2str(randi([0,a],1));
        else
            disp("This is not a valid number")
            game_runs = false;
            b = [];
        end
    else
        disp("This is not a valid number")
            game_runs = false;
            b = [];
    end
    while(game_runs)
        guess = input("Enter your guess!", 's')
        if isequal(guess, random)
            disp("You did it!")
            game_runs = false;
        elseif isequal(guess, "q")
            disp("Exiting")
            game_runs = false;
        else
            disp("No. Guess again.")
            b = b+1
        end
    end
end