"use strict";
exports.__esModule = true;
exports.InstallDrivers = void 0;
var child_process = require("child_process");
var InstallDrivers = /** @class */ (function () {
    function InstallDrivers() {
        var exec = child_process.exec;
        var cmd = 'cd sh_commands && chmod +xinstall_nvidia.sh && ./install_nvidia.sh';
        exec(cmd, function (error, stdout, stderr) {
            // command output is in stdout
            console.log(stdout);
        });
    }
    return InstallDrivers;
}());
exports.InstallDrivers = InstallDrivers;
new InstallDrivers();
