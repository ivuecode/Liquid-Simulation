# Liquid Effect :ocean:
An implemntation of liquid simulation effect in Unity.  

This project uses blur shaders along with 2D rigidbody sprites to create the illusion of a liquid body. Render textures and material instancing are methods also used to achieve this inexpensive fluid motion look.

## Preview :eyes:
![gif demo](https://i.imgur.com/4WCtDzh.gif)  

## Getting Started :page_with_curl:
Clone or download this repository and open the project with your favourite flavour of Unity.  
_This project was built with Unity 2018.2_

## Optimizations :pencil2:
There are a few points to consider when using this application:
* Using thousands of rigidbodys is very taxing. This effect should not be used to recreate the ocean. For a simple motion graphic effect such as the example gif, won't cause you any problems at all.

* Recreating this project with the new Unity ECS or Job System will drastically increase particle count.

## Contributing :muscle:
Looking to contribute something to this project? **Here's how you can help.**  
If you believe something needs to be immediately fixed please open an issue and document the problem. Fork this project and create a pull request with your solution to the problem. Thank you.  

[VueCode YouTube](https://www.youtube.com/channel/UCtP-1zQ2g_jpgYvvBqkWltA)  
[VueCode Twitter](https://twitter.com/VueCode/)  
[VueCode Discord](https://discord.gg/qWpEtR3)

