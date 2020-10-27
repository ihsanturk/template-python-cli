with import <nixpkgs> {};
let

	# # TODO: uncomment vip: if you want to add custom python modules
	# mach-nix = import (builtins.fetchGit {
	# 	url = "https://github.com/DavHau/mach-nix";
	# 	ref = "refs/heads/master";
	# 	rev = "3acbfc2ebd0b826cd046925493714a5e2f146d73";
	# }) {};
	# a-package-that-is-not-in-nixpkgs = mach-nix.buildPythonPackage { #TODO#0: change
	# 	src = "https://github.com/twintproject/twint/tarball/master";
	# 	overridesPre = [(
	# 		pySelf: pySuper: {
	# 			dateutil = null;
	# 		}
	# 	)];
	# };

	templateproject = pkgs.callPackage ./default.nix { # TODO: change
		# inherit a-package-that-is-not-in-nixpkgs; #TODO#0: change
		inherit lib;
		docopt = pkgs.python38Packages.docopt;
		buildPythonPackage = pkgs.python38Packages.buildPythonPackage;
	};

in mkShell {

	name = "templateproject"; # TODO: change
	buildInputs = [
		templateproject # TODO: change
	];

}
