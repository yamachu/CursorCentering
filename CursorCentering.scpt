on run
    tell application "System Events"
        -- ActiveなWindowの一つ目を取得
        set activeAppName to name of first process whose frontmost is true

        tell process activeAppName
            -- set activeWindow to window 1 で決め打ちでもいいけど，使えないWindowもあったので，
            -- 一般的なWindowのsubroleを持つものにした
            try
                set activeWindow to item 1 of (every window whose subrole is "AXStandardWindow")
            on error Err
                -- for debug
                display dialog Err
            end try

            -- スクリプトエディタ上で見るとWindowの持つpropertyが見える
            -- for debug
            -- properties of activeWindow

            set activeWindowSize to size of activeWindow			
            set activeWindowPosition to position of activeWindow

            -- 実数型になるのでintにキャスト
            set centerX to ((item 1 of activeWindowPosition) + (item 1 of activeWindowSize) / 2) as integer
            set centerY to ((item 2 of activeWindowPosition) + (item 2 of activeWindowSize) / 2) as integer

            -- cliclickはあらかじめbrewで入れておくこと
            do shell script ("/usr/local/bin/cliclick m:" & centerX & "," & centerY)
        end tell
    end tell
end run
