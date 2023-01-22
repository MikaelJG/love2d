-- something like
-- conversations = {
    -- {},
    -- {},
    -- {},

    -- conversations.HowToJump = {}
    -- conversations.HowToDive = {}
    -- conversations.HowToLeap = {}
-- }

conversations.test_convo = {
    {"Starting conversation", "text_prime", "bottom", false, nil},
    {"Second conversation", "text_prime", "bottom", false, nil},
    {"last conversation", "text_prime", "bottom", false, endGeneric},
}

conversations.HowToJump = {
    {"Press <SPACE> to jump.", "text_prime", "top", false, nil},
    {"While in the air, press it again\nto flap your wings!", "text_prime", "top", false, nil},
}

conversations.HowToDive = {
    {"While in midair, hold <DOWN> before\npressing <SPACE> to dive", "text_prime", "top", false, nil},
    {"Diving breaks barriers!", "text_prime", "top", false, nil},
}

conversations.HowToLeap = {
    {"Hold <UP>, then <SPACE>\nto perform a leap", "text_prime", "top", false, nil},
}
