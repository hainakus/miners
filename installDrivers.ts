import * as child_process from 'child_process'
export class InstallDrivers {
    constructor() {

        const exec = child_process.exec
        const cmd = 'cd sh_commands && chmod +xinstall_nvidia.sh && ./install_nvidia.sh';

        exec(cmd, function(error, stdout, stderr) {
            // command output is in stdout
            console.log(stdout)
        });
    }
}

new InstallDrivers()