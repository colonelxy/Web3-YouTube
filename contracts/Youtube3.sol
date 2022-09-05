//SPDX-License-Identifier: Unlicense

pragma solidity ^0.8.0;

contract YouTube3 {
    //declare the video count: default is 0
    uint public videoCount = 0;
    //the contract name
    string public name = "YouTube3";
    //create mapping of videoCount to Video
    mapping(uint => Video) public videos;

    //create a struct "Video" as follows
    struct Video {
        uint id;
        string hash;
        string title;
        string description;
        string location;
        string category;
        string thumbnailHash;
        string date;
        address author;
    }

    //create "VideoUploaded" event, this will emit the properties of the video
    event VideoUploaded(
        uint id,
        string hash,
        string title,
        string description,
        string location,
        string category,
        string thumbnailHash,
        string date,
        address author
    );
    constructor() {}

    //create the function to upload video
    function uploadVideo(
        string memory _videoHash,
        string memory _title,
        string memory _description,
        string memory _location,
        string memory _category,
        string memory _thumbnailHash,
        string memory _date
    ) public {
        // validate the video hash, title nd author's address 
        require(bytes(_videoHash).length > 0);
        require(bytes(_title).length >0);
        require(msg.sender != address(0));
        // Increment the video count upload
        videoCount++;
        // Add the video count to the contract 
        videos[videoCount] = Video(
            videoCount,
            _videoHash,
            _title,
            _description,
            _location,
            _category,
            _thumbnailHash,
            _date,
            msg.sender
        );
        // trigger an event 
        emit VideoUploaded(videoCount,
            _videoHash,
            _title,
            _description,
            _location,
            _category,
            _thumbnailHash,
            _date,
            msg.sender);
    }
}