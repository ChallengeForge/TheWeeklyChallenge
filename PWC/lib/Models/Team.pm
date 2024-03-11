package Models::Team;

# Implement methods for accessing team data
sub get_team_info {
  # Logic to retrieve team information from data source
  # ... (replace with your implementation)
  return {
    # Sample data
    members => [
      { name => 'Memeber Uno' },
      { name => 'Member Duo' },
    ],
    description => 'The A-Team of TheWeeklyChallenge',
  };
}

1;
