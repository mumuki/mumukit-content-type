#
# Notice: This file was extracted from https://github.com/elm-city-craftworks/md_emoji
#
##
## Copyright (c) 2011 Jordan Byron
##
## Permission is hereby granted, free of charge, to any person obtaining a copy of this software
## and associated documentation files (the "Software"), to deal in the Software without restriction,
## including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense,
## and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so,
## subject to the following conditions:
##
## The above copyright notice and this permission notice shall be included in all copies or substantial
## portions of the Software.
##
## THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT
## NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
## IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
## WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH
## THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

module MdEmoji
  EMOJI = %w{+1 -1 0 1 100 109 1234 2 3 4 5 6 7 8 8ball 9 a ab abc abcd accept admission_tickets aerial_tramway
    airplane airplane_arriving airplane_departure alarm_clock alembic alien ambulance amphora anchor angel anger
    angry anguished ant apple aquarius aries arrow_backward arrow_double_down arrow_double_up arrow_down arrow_down_small
    arrow_forward arrow_heading_down arrow_heading_up arrow_left arrow_lower_left arrow_lower_right arrow_right
    arrow_right_hook arrow_up arrow_up_down arrow_up_small arrow_upper_left arrow_upper_right arrows_clockwise
    arrows_counterclockwise art articulated_lorry astonished athletic_shoe atm atom_symbol b baby baby_bottle
    baby_chick baby_symbol back badminton_racquet_and_shuttlecock baggage_claim balloon ballot_box_with_ballot
    ballot_box_with_check bamboo banana bangbang bank bar_chart barber barely_sunny baseball basketball bath bathtub
    battery beach_with_umbrella bear bed bee beer beers beetle beginner bell bellhop_bell bento bicyclist bike bikini
    biohazard_sign bird birthday black_circle black_circle_for_record black_joker black_large_square
    black_left_pointing_double_triangle_with_vertical_bar black_medium_small_square black_medium_square black_nib
    black_right_pointing_double_triangle_with_vertical_bar black_right_pointing_triangle_with_double_vertical_bar black_small_square
    black_square black_square_button black_square_for_stop blossom blowfish blue_book blue_car blue_heart blush boar boat bomb
    book bookmark bookmark_tabs books boom boot bouquet bow bow_and_arrow bowling bowtie boy bread bride_with_veil bridge_at_night
    briefcase broken_heart bug building_construction bulb bullettrain_front bullettrain_side burrito bus busstop bust_in_silhouette
    busts_in_silhouette cactus cake calendar calling camel camera camera_with_flash camping cancer candle candy capital_abcd
    capricorn car card_file_box card_index card_index_dividers carousel_horse cat cat2 cd chains champagne chart
    chart_with_downwards_trend chart_with_upwards_trend checkered_flag cheese_wedge cherries cherry_blossom chestnut chicken
    children_crossing chipmunk chocolate_bar christmas_tree church cinema circus_tent city_sunrise city_sunset cityscape cl clap clapper
    classical_building clipboard clock1 clock10 clock1030 clock11 clock1130 clock12 clock1230 clock130 clock2 clock230 clock3 clock330
    clock4 clock430 clock5 clock530 clock6 clock630 clock7 clock730 clock8 clock830 clock9 clock930 closed_book closed_lock_with_key
    closed_umbrella cloud clubs cn cocktail coffee coffin cold_sweat collision comet compression computer confetti_ball confounded
    confused congratulations construction construction_worker control_knobs convenience_store cookie cool cop copyright corn couch_and_lamp
    couple couple_with_heart couplekiss cow cow2 crab credit_card crescent_moon cricket_bat_and_ball crocodile crossed_flags crossed_swords
    crown cry crying_cat_face crystal_ball cupid curly_loop currency_exchange curry custard customs cyclone dagger_knife dancer
    dancers dango dark_sunglasses dart dash date de deciduous_tree department_store derelict_house_building desert desert_island
    desktop_computer diamond_shape_with_a_dot_inside diamonds disappointed disappointed_relieved dizzy dizzy_face do_not_litter dog dog2
    dollar dolls dolphin door double_vertical_bar doughnut dove_of_peace dragon dragon_face dress dromedary_camel droplet dvd e-mail
    ear ear_of_rice earth_africa earth_americas earth_asia egg eggplant egplant eight eight_pointed_black_star eight_spoked_asterisk
    electric_plug elephant email end envelope envelope_with_arrow es euro european_castle european_post_office evergreen_tree exclamation
    expressionless eye eyeglasses eyes face_with_head_bandage face_with_rolling_eyes face_with_thermometer facepunch factory fallen_leaf
    family fast_forward fax fearful feelsgood feet ferris_wheel ferry field_hockey_stick_and_ball file_cabinet file_folder film_frames
    film_projector finnadie fire fire_engine fireworks first_quarter_moon first_quarter_moon_with_face fish fish_cake fishing_pole_and_fish
    fist five flag-ac flag-ad flag-ae flag-af flag-ag flag-ai flag-al flag-am flag-ao flag-aq flag-ar flag-as flag-at flag-au flag-aw flag-ax
    flag-az flag-ba flag-bb flag-bd flag-be flag-bf flag-bg flag-bh flag-bi flag-bj flag-bl flag-bm flag-bn flag-bo flag-bq flag-br flag-bs
    flag-bt flag-bv flag-bw flag-by flag-bz flag-ca flag-cc flag-cd flag-cf flag-cg flag-ch flag-ci flag-ck flag-cl flag-cm flag-cn flag-co
    flag-cp flag-cr flag-cu flag-cv flag-cw flag-cx flag-cy flag-cz flag-de flag-dg flag-dj flag-dk flag-dm flag-do flag-dz flag-ea flag-ec
    flag-ee flag-eg flag-eh flag-er flag-es flag-et flag-eu flag-fi flag-fj flag-fk flag-fm flag-fo flag-fr flag-ga flag-gb flag-gd flag-ge
    flag-gf flag-gg flag-gh flag-gi flag-gl flag-gm flag-gn flag-gp flag-gq flag-gr flag-gs flag-gt flag-gu flag-gw flag-gy flag-hk flag-hm
    flag-hn flag-hr flag-ht flag-hu flag-ic flag-id flag-ie flag-il flag-im flag-in flag-io flag-iq flag-ir flag-is flag-it flag-je flag-jm
    flag-jo flag-jp flag-ke flag-kg flag-kh flag-ki flag-km flag-kn flag-kp flag-kr flag-kw flag-ky flag-kz flag-la flag-lb flag-lc flag-li
    flag-lk flag-lr flag-ls flag-lt flag-lu flag-lv flag-ly flag-ma flag-mc flag-md flag-me flag-mf flag-mg flag-mh flag-mk flag-ml flag-mm
    flag-mn flag-mo flag-mp flag-mq flag-mr flag-ms flag-mt flag-mu flag-mv flag-mw flag-mx flag-my flag-mz flag-na flag-nc flag-ne flag-nf
    flag-ng flag-ni flag-nl flag-no flag-np flag-nr flag-nu flag-nz flag-om flag-pa flag-pe flag-pf flag-pg flag-ph flag-pk flag-pl flag-pm
    flag-pn flag-pr flag-ps flag-pt flag-pw flag-py flag-qa flag-re flag-ro flag-rs flag-ru flag-rw flag-sa flag-sb flag-sc flag-sd flag-se
    flag-sg flag-sh flag-si flag-sj flag-sk flag-sl flag-sm flag-sn flag-so flag-sr flag-ss flag-st flag-sv flag-sx flag-sy flag-sz flag-ta
    flag-tc flag-td flag-tf flag-tg flag-th flag-tj flag-tk flag-tl flag-tm flag-tn flag-to flag-tr flag-tt flag-tv flag-tw flag-tz flag-ua
    flag-ug flag-um flag-us flag-uy flag-uz flag-va flag-vc flag-ve flag-vg flag-vi flag-vn flag-vu flag-wf flag-ws flag-xk flag-ye flag-yt
    flag-za flag-zm flag-zw flags flashlight fleur_de_lis flipper floppy_disk flower_playing_cards flushed fog foggy football footprints
    fork_and_knife fountain four four_leaf_clover fr frame_with_picture free fried_shrimp fries frog frowning fu fuelpump full_moon
    full_moon_with_face funeral_urn game_die gb gear gem gemini ghost gift gift_heart girl globe_with_meridians goat goberserk godmode
    golf golfer grapes green_apple green_book green_heart grey_exclamation grey_question grimacing grin grinning guardsman guitar gun
    haircut hamburger hammer hammer_and_pick hammer_and_wrench hamster hand handbag hankey hash hatched_chick hatching_chick headphones
    hear_no_evil heart heart_decoration heart_eyes heart_eyes_cat heartbeat heartpulse hearts heavy_check_mark heavy_division_sign
    heavy_dollar_sign heavy_exclamation_mark heavy_heart_exclamation_mark_ornament heavy_minus_sign heavy_multiplication_x heavy_plus_sign
    helicopter helmet_with_white_cross herb hibiscus high_brightness high_heel hocho hole honey_pot honeybee horse horse_racing hospital
    hot_pepper hotdog hotel hotsprings hourglass hourglass_flowing_sand house house_buildings house_with_garden hugging_face hurtrealbad
    hushed ice_cream ice_hockey_stick_and_puck ice_skate icecream id ideograph_advantage imp inbox_tray incoming_envelope information_desk_person
    information_source innocent interrobang iphone it izakaya_lantern jack_o_lantern japan japanese_castle japanese_goblin japanese_ogre
    jeans joy joy_cat joystick jp kaaba key keyboard keycap_star keycap_ten kimono kiss kissing kissing_cat kissing_closed_eyes kissing_face
    kissing_heart kissing_smiling_eyes knife knife_fork_plate koala koko kr label lantern large_blue_circle large_blue_diamond large_orange_diamond
    last_quarter_moon last_quarter_moon_with_face latin_cross laughing leaves ledger left_luggage left_right_arrow left_speech_bubble
    leftwards_arrow_with_hook lemon leo leopard level_slider libra light_rail lightning lightning_cloud link linked_paperclips lion_face
    lips lipstick lock lock_with_ink_pen lollipop loop loud_sound loudspeaker love_hotel love_letter low_brightness lower_left_ballpoint_pen
    lower_left_crayon lower_left_fountain_pen lower_left_paintbrush m mag mag_right mahjong mailbox mailbox_closed mailbox_with_mail
    mailbox_with_no_mail man man-heart-man man-kiss-man man-man-boy man-man-boy-boy man-man-girl man-man-girl-boy man-man-girl-girl
    man-woman-boy man-woman-boy-boy man-woman-girl man-woman-girl-boy man-woman-girl-girl man_in_business_suit_levitating man_with_gua_pi_mao
    man_with_turban mans_shoe mantelpiece_clock maple_leaf mask massage meat_on_bone medal mega melon memo menorah_with_nine_branches mens
    metal metro microphone microscope middle_finger milky_way minibus minidisc mobile_phone_off money_mouth_face money_with_wings moneybag
    monkey monkey_face monorail moon mortar_board mosque mostly_sunny motor_boat motorway mount_fuji mountain mountain_bicyclist mountain_cableway
    mountain_railway mouse mouse2 movie_camera moyai muscle mushroom musical_keyboard musical_note musical_score mute nail_care name_badge
    national_park neckbeard necktie negative_squared_cross_mark nerd_face neutral_face new new_moon new_moon_with_face newspaper ng night_with_stars
    nine no_bell no_bicycles no_entry no_entry_sign no_good no_mobile_phones no_mouth no_pedestrians no_smoking non-potable_water nose notebook
    notebook_with_decorative_cover notes nut_and_bolt o o2 ocean octocat octopus oden office oil_drum ok ok_hand ok_woman old_key
    older_man older_woman om_symbol on oncoming_automobile oncoming_bus oncoming_police_car oncoming_taxi one open_book open_file_folder
    open_hands open_mouth ophiuchus orange_book orthodox_cross outbox_tray ox package page_facing_up page_with_curl pager palm_tree panda_face
    paperclip parking part_alternation_mark partly_sunny partly_sunny_rain passenger_ship passport_control paw_prints peace_symbol peach pear
    pencil pencil2 penguin pensive performing_arts persevere person_frowning person_with_ball person_with_blond_hair person_with_pouting_face phone
    pick pig pig2 pig_nose pill pineapple pisces pizza place_of_worship plus1 point_down point_left point_right point_up point_up_2 police_car poodle
    poop popcorn post_office postal_horn postbox potable_water pouch poultry_leg pound pouting_cat pray prayer_beads princess printer punch
    purple_heart purse pushpin put_litter_in_its_place question rabbit rabbit2 racehorse racing_car racing_motorcycle radio radio_button
    radioactive_sign rage rage1 rage2 rage3 rage4 railway_car railway_track rain_cloud rainbow raised_hand raised_hand_with_fingers_splayed
    raised_hands raising_hand ram ramen rat recycle red_car red_circle registered relaxed relieved reminder_ribbon repeat repeat_one restroom
    reversed_hand_with_middle_finger_extended revolving_hearts rewind ribbon rice rice_ball rice_cracker rice_scene right_anger_bubble ring robot_face
    rocket rolled_up_newspaper roller_coaster rooster rose rosette rotating_light round_pushpin rowboat ru rugby_football runner running
    running_shirt_with_sash sa sagittarius sailboat sake sandal santa satellite satisfied saxophone scales school school_satchel scissors scorpion
    scorpius scream scream_cat scroll seat secret see_no_evil seedling seven shamrock shaved_ice sheep shell shield shinto_shrine ship shipit shirt
    shit shoe shopping_bags shower showman sign_of_the_horns signal_strength six six_pointed_star ski skier skull skull_and_crossbones sleeping
    sleeping_accommodation sleepy sleuth_or_spy slightly_frowning_face slightly_smiling_face slot_machine small_airplane small_blue_diamond
    small_orange_diamond small_red_triangle small_red_triangle_down smile smile_cat smiley smiley_cat smiling_imp smirk smirk_cat smoking snail
    snake snow_capped_mountain snow_cloud snowboarder snowflake snowman sob soccer soon sos sound space_invader spades spaghetti sparkle sparkler
    sparkles sparkling_heart speak_no_evil speaker speaking_head_in_silhouette speech_balloon speedboat spider spider_web spiral_calendar_pad
    spiral_note_pad spock-hand sports_medal squirrel stadium star star2 star_and_crescent star_of_david stars station statue_of_liberty
    steam_locomotive stew stopwatch straight_ruler strawberry stuck_out_tongue stuck_out_tongue_closed_eyes stuck_out_tongue_winking_eye
    studio_microphone sun_behind_cloud sun_behind_rain_cloud sun_small_cloud sun_with_face sunflower sunglasses sunny sunrise sunrise_over_mountains
    surfer sushi suspect suspension_railway sweat sweat_drops sweat_smile sweet_potato swimmer symbols synagogue syringe table_tennis_paddle_and_ball
    taco tada tanabata_tree tangerine taurus taxi tea telephone telephone_receiver telescope tennis tent the_horns thermometer thinking_face
    thought_balloon three three_button_mouse thumbsdown thumbsup thunder_cloud_and_rain ticket tiger tiger2 timer_clock tired_face tm toilet tokyo_tower
    tomato tongue tongue2 top tophat tornado tornado_cloud trackball tractor traffic_light train train2 tram triangular_flag_on_post triangular_ruler
    trident triumph trolleybus trollface trophy tropical_drink tropical_fish truck trumpet tshirt tulip turkey turtle tv twisted_rightwards_arrows two
    two_hearts two_men_holding_hands two_women_holding_hands u5272 u5408 u55b6 u6307 u6708 u6709 u6e80 u7121 u7533 u7981 u7a7a uk umbrella
    umbrella_on_ground unamused underage unicorn_face unlock up upside_down_face us v vertical_traffic_light vhs vibration_mode video_camera video_game
    violin virgo volcano volleyball vs walking waning_crescent_moon waning_gibbous_moon warning wastebasket watch water_buffalo watermelon wave
    waving_black_flag waving_white_flag wavy_dash waxing_crescent_moon waxing_gibbous_moon wc weary wedding weight_lifter whale whale2 wheel_of_dharma
    wheelchair white_check_mark white_circle white_flower white_frowning_face white_large_square white_medium_small_square white_medium_square
    white_small_square white_square white_square_button wind_blowing_face wind_chime wine_glass wink wink2 wolf woman woman-heart-woman woman-kiss-woman
    woman-woman-boy woman-woman-boy-boy woman-woman-girl woman-woman-girl-boy woman-woman-girl-girl womans_clothes womans_hat womens world_map worried
    wrench writing_hand x yellow_heart yen yin_yang yum zap zero zipper_mouth_face zzz}
end


module MdEmoji
  class Render < Redcarpet::Render::HTML
    def initialize(options={})
      @options = options.merge(:no_intra_emphasis => true)
      super @options
    end

    def paragraph(text)
      text.gsub!("\n", "<br>\n") if @options[:hard_wrap]

      "<p>#{replace_emoji(text)}</p>\n"
    end

    def list_item(text, list_type)
      "<li>#{replace_emoji(text)}</li>"
    end

    # Replaces valid emoji characters, ie :smile:, with img tags
    #
    # Valid emoji charaters are listed in +MdEmoji::EMOJI+
    def replace_emoji(text)
      text.gsub(/:([^\s:])+:/) do |emoji|

        emoji_code = emoji #.gsub("|", "_")
        emoji      = emoji_code.gsub(":", "")

        if MdEmoji::EMOJI.include?(emoji)
          file_name    = "#{emoji.gsub('+', 'plus')}.png"
          default_size = %{height="20" width="20"}

          %{<img src="/assets/emojis/#{file_name}" class="emoji" } +
            %{title="#{emoji_code}" alt="#{emoji_code}" #{default_size}>}
        else
          emoji_code
        end
      end
    end

    private

    # Returns +true+ if emoji are present in +text+, otherwise returns +false+
    def include_emoji?(text)
      text && text[/:\S+:/]
    end
  end
end
