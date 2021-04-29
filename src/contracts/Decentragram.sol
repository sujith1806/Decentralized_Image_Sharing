pragma solidity >=0.5.0;

contract Decentragram {
  // Code goes here...
  string public name = "Sujith";

  uint public imageCount = 0;
  mapping (uint => Image) public images;

  struct Image{
    uint id;
    string hash;
    string desc;
    uint tipamount;
    address payable author;
  }

  event ImageCreated(
    uint id,
    string hash,
    string desc,
    uint tipamount,
    address payable author
  );

   event ImageTipped(
    uint id,
    string hash,
    string desc,
    uint tipamount,
    address payable author
   );
  // _ is for local variables not state ones 
  function uploadImage(string memory _imgHash,string memory _desc) public{
    //validation checks
    require(bytes(_desc).length>0);
    require(bytes(_imgHash).length>0);
    require(msg.sender != address(0x0));
    imageCount++;

    images[imageCount] = Image(imageCount,_imgHash,_desc,0,msg.sender);

    emit ImageCreated(imageCount,_imgHash,_desc,0,msg.sender);
  }  

  //Store Images

  //Create Images

  //Tip Images
  function tipImageOwner(uint _id) public payable{
    Image memory _image = images[_id];
    address payable _author = _image.author;
    //fetch author
    address(_author).transfer(msg.value);
    //update the total tip amount of the image
    _image.tipamount = _image.tipamount + msg.value;
    //upload back to blockchain
    images[_id] = _image;
    
    emit ImageTipped(_id,_image.hash,_image.desc,_image.tipamount,_author);

  }
}