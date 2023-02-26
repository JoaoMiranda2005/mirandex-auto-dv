Config = {}

Config.deleteTimer = 30 -- Tempo em Minutos / Time in Minutes
Config.commandName = "delallveh",
    -- Nome do comando que vai ser executado
    -- Se o nome do comando for mudado tem de ser mudado na ace_perm do server.cfg (explicado em baixo)
Config.restrictCommand = true
    -- Meter este valor como false vai fazer com que todos os players consigam usar o comando.
    -- Se meter este valor como true tens de adicionar uma ace perm para as pessoas com o grupo de admin usarem
    -- Exemplo: add_ace superadmin commmand.delallveh allow
