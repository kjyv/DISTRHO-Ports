
dofile("../../../scripts/make-project.lua")

package = make_juce_lv2_project("Obxd")

if (os.getenv("LINUX_EMBED")) then
package.files = {
  matchfiles (
    "../source/PluginProcessor.cpp",
    "../source/msfa/*.cc",
    "../../../libs/juce-plugin/JucePluginMain.cpp"
  )
}
else
package.files = {
  matchfiles (
    "../source/*.cpp",
    "../source/Gui/*.cpp",
    "../source/Engine/freeverb/*.cpp",
    "../../../libs/juce-plugin/JucePluginMain.cpp"
  )
}
end
