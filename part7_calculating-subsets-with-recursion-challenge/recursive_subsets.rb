def choose_team(num_of_people, members_per_team)
  return num_of_people if members_per_team == 1
  return 0 if num_of_people == 0
  choose_team(num_of_people-1, members_per_team-1) + choose_team(num_of_people-1, members_per_team)
end


p choose_team(6,2) == 15
p choose_team(6,3) == 20
p choose_team(24,4) == 10626