return function(...)
    local info = debug.getinfo(2)
    if info and info.name == nil and info.what == "Lua" and info.source == "=[C]" then
        -- Ejecutado desde variable, no permitido
        error("❌ Esta función no puede ser almacenada en una variable.")
    end

    print("✅ Ejecutado correctamente con parámetro:", ...)
end
