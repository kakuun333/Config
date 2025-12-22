return {
  "Civitasv/cmake-tools.nvim",
  opts = {},
  config = function()
    require("cmake-tools").setup({
      cmake_generate_options = {
        '"-DCMAKE_MAKE_PROGRAM=C:\\Program Files\\Microsoft Visual Studio\\18\\Community\\Common7\\IDE\\CommonExtensions\\Microsoft\\CMake\\Ninja\\ninja.exe"',
      },
    })
  end,
}
