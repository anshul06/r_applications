# Rock-Paper-Scissors Game in R

play_game <- function() {
  choices <- c("rock", "paper", "scissors")
  
  # Player input
  cat("Enter your choice (rock, paper, scissors): ")
  player_choice <- tolower(trimws(readline()))
  
  # Validate input
  if (!player_choice %in% choices) {
    cat("Invalid choice! Please choose rock, paper, or scissors.\n")
    return()
  }
  
  # Computer's random choice
  computer_choice <- sample(choices, 1)
  
  # Display choices
  cat("You chose:", player_choice, "\n")
  cat("Computer chose:", computer_choice, "\n")
  
  # Determine the winner
  if (player_choice == computer_choice) {
    cat("It's a tie!\n")
  } else if (
    (player_choice == "rock" && computer_choice == "scissors") ||
    (player_choice == "paper" && computer_choice == "rock") ||
    (player_choice == "scissors" && computer_choice == "paper")
  ) {
    cat("You win!\n")
  } else {
    cat("Computer wins!\n")
  }
}

# Start the game
play_game()
