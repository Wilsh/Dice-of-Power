local randomized = false

function onObjectRandomize(obj, color)
    if obj ~= self then return end
    if not randomized then
        randomized = true
        Wait.condition(rollFinished, || obj.resting)
    end
end

function rollFinished()
    randomized = false
    self.AssetBundle.playTriggerEffect(0)
end
