{ lib, buildPythonPackage, docopt }:
buildPythonPackage rec {

	pname = "templateproject"; # TODO: change
	version = "0.0.1";

	src = ./.;
	doCheck = false;
	propagatedBuildInputs = [
		docopt
	];

	meta = with lib; {
		description = "A template Python cli app built with Nix"; # TODO: change
		homepage = "https://github.com/ihsanturk/template-nix-python-cli";
		license = licenses.mit;
		maintainers = [ maintainers.myname ]; # TODO: change this
	};

}
