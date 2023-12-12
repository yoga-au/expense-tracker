{ pkgs, ... }: {

  # Which nixpkgs channel to use.
  channel = "stable-23.05"; # or "unstable"

  # Use https://search.nixos.org/packages to find packages
  packages = [
    pkgs.nodejs_18
  ];

  # Sets environment variables in the workspace
  env = {
    # SOME_ENV_VAR = "hello";
  };

  # Search for the extensions you want on https://open-vsx.org/ and use "publisher.id"
  idx.extensions = [
  ];

  # Enable previews and customize configuration
  idx.previews = {
    enable = true;
    previews = [
      {
        command = [
          "npm"
          "run"
          "dev"
          "--"
          "--port"
          "$PORT"
        ];
        manager = "web";
        id = "web";
      }
    ];
  };
}