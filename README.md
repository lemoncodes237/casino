# yj-casino

TO-DO before BETA release:
- Blackjack
- Three Card Poker
- Baccarat (Commission and No Comission Baccarat) - Just Tie, Player, and Banker for now.
- Payment System



TODOS:
- Check if double/split is even possible with the player's money

tag: yj-blackjack-ace-split1

Make original bet a score so we can easily double/split in blackjack


Blackjack Pipeline:
Stage 1: Deal first card, deal face down to dealer
Stage 2: Deal second card
Stage 3 (Dealer): If Ace, send insurance. Otherwise, send all players to Stage 6 and move Dealer to Stage 4
Stage 3 (Player): Wait for insurance decision. Insurance should show up in front of the player's bet. (Insurance always allowed if player has blackjack)
Stage 4 (Player): Waiting Stage for insurance
Stage 5 (Player): Insurance decision completed. Does not move until all players are at stage 5
Stage 4 (Dealer): Check Blackjack. If blackjack, send all players to Stage 99 and move Dealer to stage 100. Otherwise, continue. Otherwise, take insurance bets.
Stage 6 (First Player): If blackjack, get paid and move to Stage 100. Otherwise, decide (unless hard 21). Doubling sends to stage 74. Surrendering sends player from Stage 8 to Stage 100 and removes half of the bet.
Stage 7-61 (First Player): 0 mod 3: Wait. 1 mod 3: Look at decision and deal card. 2 mod 3: Decide and move to next stage to wait. Hard 21 and standing sends to Stage 60, Busting sends to Stage 70.
Repeat Stages 6-43 for every player.
Stage 5-24 (Dealer): Draw. Once at stopping point, go to Stage 75.


BUST CASE
Stage 70: Lose your bet. Move to Stage 100.

DOUBLE CASE
Stage 74: Dealt a card. If busted, go to stage 70
STAND CASE
Stage 75 (Dealer): Done with hand.
Stage 75: Done with hand. Get paid/lose bet. Go to Stage 100.

Stage 81: Done with hand. Split.


SPLIT CASES
Stage 80 (Player): The player split. Now deal with yj-stage-first through yj-stage-fourth to figure out what to do.
Stage 90 (Player): Get dealt a card, then go to stage 6.

SPLIT STAGES (actual stage numbers)
Stage 1: Get a card dealt.
Stage 2-60: 2 mod 3: Show decision screen. 0 mod 3: Wait. 1 mod 3: Deal with decision.
Stage 70: Busted. Take bet and set stage to 100.
Stage 98: Dealt a card. If busted, go to stage 70. This is doubling case.
Stage 99: Wait for payout/loss
Stage 100: Done

DEALER BLACKJACK
Stage 99 (Player): Lose initial bet (or push) and pay out insurance bets

Stage 100: Completed Stage