var VaccineRegistration = artifacts.require("./VaccineRegistration.sol");

module.exports = function(deployer) {
  const one = "0xf17f52151EbEF6C7334FAD080c5704D77216b732";
  const two = "0xC5fdf4076b8F3A5357c5E395ab970B5B54098Fef";
  deployer.deploy(VaccineRegistration, one, two);
};
