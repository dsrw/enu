let sayings = [
  "Stop! You've been pre-selected for an exclusive timeshare offer!", 
  "Wait! I want to talk to you about the first rule of Fight Club!",
  "Excuse me! Do you have a moment to talk about the Flying Spaghetti Monster?",
  "Leeeroooooy Jeeeenkins!"
]

- wander:
  speed = 3
  forward 2..10
  turn -45..45
  
- chase:
  speed = 10
  turn player
  forward 5
  
- caught:
  say ""
  sleep 2
  say "Never mind. You probably wouldn't understand."
  sleep 2

loop:
  nil -> wander
  go_home -> wander
  caught -> go_home
  if start_position.far(20):
    wander -> go_home
  if player.near(10):
    # chase if the player is near and we're not too far from home base
    (wander, go_home) ==> chase:
      # this will be called once the command switches
      say cycle(sayings)
  if player.far(20):
    chase -> go_home
  if player.near(1.5):
    chase -> caught
        