function conky_renk_degis()
    -- Conky'nin çalışma süresini (updater'i) alıyoruz.
    -- update_interval = 0.1 ise, bu sayı saniyede 10 artar.
    -- Bu, bize tam istediğimiz hassasiyeti verir.
    local sayac = tonumber(conky_parse("$updates"))
    
    -- HIZ AYARI:
    -- % 2 => Her güncellemede değişir (Çok Hızlı/Titreşimli)
    -- % 4 => 2 güncellemede bir değişir (Hızlı)
    -- % 10 => 5 güncellemede bir değişir (Daha Yumuşak)
    local durum = sayac % 2
    
    if durum == 0 then
        return "${color0}" -- Beyaz
    else
        return "${color1}" -- Gri
    end
end
