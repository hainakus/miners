import * as os from "os";
import * as child_process from 'child_process'

export enum osSystems {
    windows,
    linux,
    mac
}
export class MinerInstall {
    constructor() {

        switch(this.checkOS()) {
            case "linux":
                console.log('linux')
                this.InstallMiner()
                break
            case "darwin":
                console.log('dammit')
                break
            case "win32":
                console.log('Windows ne')
                this.installWinMiner()
                break
            default:
                console.log('no operating sys')
        }
    }

    checkOS() {
        console.log(Object.keys(osSystems))
        return os.platform()
    }
    filterEnumKeys(os: any) {
        return Object.keys(osSystems).filter((key:any) => isNaN(key) && key === os)
    }
    installNvidia() {
        const exec = child_process.exec
        const cmd = 'cd sh_commands && chmod +x miner_install.sh && ./miner_install.sh';

        exec(cmd, function(error, stdout, stderr) {
            // command output is in stdout
            console.log(stdout)
        });
    }
    InstallMiner() {
        const exec = child_process.exec
        const cmd = 'cd sh_commands && chmod +x miner_install.sh && ./miner_install.sh';

        exec(cmd, function(error, stdout, stderr) {
            // command output is in stdout
            console.log(stdout)
        });
    }
    installWinMiner() {
        const exec = child_process.exec
        const cmd = 'bash -c "cd sh_commands && chmod +x miner_install_win.sh && ./miner_install_win.sh"'

        exec(cmd, function(error, stdout, stderr) {
            // command output is in stdout
            console.log(stdout)
        });
    }
}

new MinerInstall()