pragma solidity ^0.4.4;

contract IscoreStore {

    function GetScore(string name) returns(int);

}



contract MyGame {

    function ShowScore(string name) returns(int) {

        IscoreStore scoreStore = IscoreStore(0x888827d4c06eb25913f96f28d77047b823c52a42);
        return scoreStore.GetScore(name);
    }


}