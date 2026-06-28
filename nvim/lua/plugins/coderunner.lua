return {
  "CRAG666/code_runner.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  keys = {
    { "<leader>r",  "<cmd>RunCode<cr>",    desc = "Run Code" },
    { "<leader>rf", "<cmd>RunFile<cr>",    desc = "Run File" },
    { "<leader>rp", "<cmd>RunProject<cr>", desc = "Run Project" },
    { "<leader>rc", "<cmd>RunClose<cr>",   desc = "Close Runner" },
  },
  opts = {
    mode = "float",
    filetype = {
      cpp = {
        "cd $dir && g++ -std=c++17 $fileName -o $fileNameWithoutExt && ./$fileNameWithoutExt",
      },
      c = {
        "cd $dir && gcc $fileName -o $fileNameWithoutExt && ./$fileNameWithoutExt",
      },
      python = "python3 -u $dir/$fileName",
    },
    -- Uncomment and edit below to use RunProject.
    -- The key is a directory path (use ~ for home).
    -- Three ways to configure a project:

    project = {
      -- 1) Use the filetype default command, just specify the entry file
      ["~/projects/my-cpp-app"] = {
        name = "My C++ App",
        file_name = "src/main.cpp",
      },
      -- 2) Override with a custom command + entry file
      ["~/projects/my-other-app"] = {
        name = "Other App",
        file_name = "main.cpp",
        command = "g++ -O2 -o out main.cpp && ./out",
      },
      -- 3) Run a build system (no file_name needed, runs from project root)
      ["~/projects/my-cmake-project"] = {
        name = "CMake Project",
        command = "cmake --build build && ./build/main",
      },
    },
  },
}
