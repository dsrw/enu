color = green

let hellos = [
  "Stop! You've been pre-selected for an exclusive timeshare offer!", 
  "Wait! I want to talk to you about the first rule of Fight Club!",
  "Excuse me! Do you have a moment to talk about the Flying Spaghetti Monster?",
  "Leeeroooooy Jeeeenkins!"
]

let goodbyes = [
  "Never mind. You probably wouldn't understand.",
  "Pleasure doing business with you.",
  "Wait... who are you?",
]

- wander:
  speed = 3
  forward 2..10
  turn -45..45
  
- chase:
  speed = 6
  turn player
  forward 5
  
- caught:
  say ""
  sleep 2
  say random(goodbyes)
  sleep 2

loop:
  nil -> wander
  (go_home, give_up) -> wander
  caught -> go_home as give_up
  if start_position.far(20):
    wander -> go_home
  if player.near(10) and
    start_position.near(30):
      
    # chase if the player is near and we're not too far from home base
    (wander, go_home) ==> chase:
      # this will be called once the command switches
      say cycle(hellos)
  if player.far(20):
    chase -> go_home as give_up
  if player.near(3):
    chase -> caught
        