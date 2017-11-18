module AppStyles exposing (..)

import Style exposing (..)
import Style.Font as Font
import Style.Color as Color
import Color exposing (..)


type MyStyles
    = BlockStyle
    | BodyStyle
    | PageStyle
    | ContentStyle
    | HeaderStyle
    | FooterStyle
    | SidebarStyle


sansSerif =
    Font.typeface [ Font.font "Helvetica" ]


stylesheet : StyleSheet MyStyles variation
stylesheet =
    Style.styleSheet
        [ Style.style BodyStyle
            [ Color.background darkGrey
            ]
        , Style.style BlockStyle
            [ sansSerif
            , Color.text black
            , Color.background yellow
            , Font.size 50
            ]
        , Style.style HeaderStyle
            [ sansSerif
            , Font.size 50
            , Color.background red
            ]
        , Style.style FooterStyle
            [ sansSerif
            , Font.size 50
            , Color.background green
            ]
        , Style.style SidebarStyle
            [ sansSerif
            , Font.size 50
            ]
        ]