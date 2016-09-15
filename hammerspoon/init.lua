function reloadConfig(files)
   doReload = false
   for _,file in pairs(files) do
      if file:sub(-4) == ".lua" then
        doReload = true
      end
   end
   if doReload then
      showNotification('Hammerspoon', 'Config reloaded')
      hs.reload()
   end
end
hs.pathwatcher.new(os.getenv("HOME") .. "/Projects/dotfiles/hammerspoon/", reloadConfig):start()

-- Display an alert on the screen
function showAlert(text)
   hs.alert.show(text)
end

-- Display a notification
function showNotification(title, body)
   hs.notify.new({title=title, informativeText=body}):send()
end
