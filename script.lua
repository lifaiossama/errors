if getgenv().AlreadyExecutedMrJack then
     return end;
     getgenv().AlreadyExecutedMrJack=true;task.spawn(
        function()local queue_on_teleport=syn and syn.queue_on_teleport or queue_on_teleport or queueonteleport;if queue_on_teleport then pcall(
            function()queue_on_teleport'loadstring(game:HttpGet"https://thedragonslayer2.github.io/AutoExec.html")()'end)end end)
            loadstring(game:HttpGet"https://thedragonslayer2.github.io")()