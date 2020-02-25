#encoding: utf-8

Before do
    @base = BaseAppium.new
    @app = App.new
end

After do
    evidence_name = "evidence_" + Time.now.strftime("%Y_%m_%d_%H%M%S")

    screenshot = "./reports/screenshots/#{evidence_name + ".png"}"
    $driver.screenshot(screenshot)
    embed(screenshot, 'image/png', 'PRINTSCREEN')
end