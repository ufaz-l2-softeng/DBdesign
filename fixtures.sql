-- Insert users into 'users' table
INSERT INTO users (id, username, password) VALUES
(1, 'player1', 'pass1'),
(2, 'player2', 'pass2'),
(3, 'player3', 'pass3');

-- Insert inventory associated with each user
INSERT INTO inventory (id, name, rarity, image, user_id) VALUES
(1, 'Player1 Inventory', 3, 'inventory1.png', 1),
(2, 'Player2 Inventory', 2, 'inventory2.png', 2),
(3, 'Player3 Inventory', 4, 'inventory3.png', 3);

-- Insert items into the 'items' table
INSERT INTO items (id, name, rarity, image) VALUES
(1, 'AK-47 | Bloodsport', 5, 'ak47_bloodsport.png'),
(2, 'AWP | Oni Taiji', 4, 'awp_onitaiji.png'),
(3, 'M4A4 | Hellfire', 3, 'm4a4_hellfire.png'),
(4, 'USP-S | Neo-Noir', 3, 'usps_neonoir.png'),
(5, 'AK-47 | Neon Revolution', 4, 'ak47_neonrevolution.png'),
(6, 'SCAR-20 | Bloodsport', 2, 'scar20_bloodsport.png'),
(7, 'Tec-9 | Fuel Injector', 3, 'tec9_fuelinjector.png'),
(8, 'M4A1-S | Decimator', 4, 'm4a1s_decimator.png'),
(9, 'AWP | Fever Dream', 5, 'awp_feverdream.png'),
(10, 'M4A1-S | Chantico''s Fire', 5, 'm4a1s_chantico.png');

-- Insert cases into the 'cases' table
INSERT INTO cases (id, name, image) VALUES
(1, 'Operation Hydra Case', 'operation_hydra_case.png'),
(2, 'Spectrum Case', 'spectrum_case.png'),
(3, 'Chroma 3 Case', 'chroma3_case.png'),
(4, 'Gamma 2 Case', 'gamma2_case.png');

-- Associate items with cases in 'case_items' table
INSERT INTO case_items (case_id, item_id) VALUES
(1, 2),  -- Operation Hydra Case contains AWP | Oni Taiji
(1, 3),  -- Operation Hydra Case contains M4A4 | Hellfire
(2, 1),  -- Spectrum Case contains AK-47 | Bloodsport
(2, 4),  -- Spectrum Case contains USP-S | Neo-Noir
(2, 8),  -- Spectrum Case contains M4A1-S | Decimator
(2, 9),  -- Spectrum Case contains AWP | Fever Dream
(3, 10), -- Chroma 3 Case contains M4A1-S | Chantico's Fire
(4, 5),  -- Gamma 2 Case contains AK-47 | Neon Revolution
(4, 6),  -- Gamma 2 Case contains SCAR-20 | Bloodsport
(4, 7);  -- Gamma 2 Case contains Tec-9 | Fuel Injector