# Lulu-star

**Programming light into textile**

Lulu is a hardware solution that interfaces between an LED light source, an optic fiber strand or bundle and soft circuit connections.
Providing an optic fiber connection toolset and workflow for E-Textiles and Wearable Technology applications.

This project is still in a beta phase, where drastic changes may occur and backwards compatibility is not guaranteed until the final release.

![Lulu-star](https://farm6.staticflickr.com/5506/29792500474_7d4b125e57_m_d.jpg)
![Lulu-star](https://farm5.staticflickr.com/4607/25119732977_b1e0567c12_m_d.jpg)
![Lulu-star](https://farm5.staticflickr.com/4871/46734489012_74dfaaa930_m_d.jpg)

### About The project
Lulu is providing a simple, reliable toolset for people who want to use side glow optical fibers in their eTextile and wearable projects.
Use of light in textile and fashion design is becoming more and more common and many schools started to teach this subject as a part of their textile design curriculum.
Optic fibers could be embedded in textiles as embroidery, in weaving, knitting and knotting process and many textile designs have been realized in recent years.
But often the designers lack the toolset for connecting the light sources with the embedded optic fibers, resulting in re-purposing bulky connectors and technology and hiding them behind the textiles.
Currently, each designer has to come up with their own re-purposed or DIY solution.
Lulu is a connector that optimizes the efficiency of the connection between the light source and the optical fibers to get a strong illumination.
Instead of struggling to solve the light source and connection problem, the designer can concentrate on the aesthetic and textile making process issues.

### Lulu branches
- **Lulu-star** (master)
  - This branch provide a tiny PCB with a 200mA LED, PWM driver and optic fiber connector.
- **Lulu-daisy**
  - This branch provide a tiny PCB with an addressable LED (WS2812-mini, Dotstar, etc) and an optic fiber connector.
- **Lulu-MCU**
  - This branch provide a tiny PCB with a built in MCU (ATTiny10) that allow one-wire communication bus system.
- **Lulu**
  - This branch provides a motherboard (Lucette) that drives up to 16 Lulus that each only contain a power LED and an optic fiber connector.

###  Branche naming conventions / Version Control
- First number is used to specify Lulu type
  - 2.0.0 -> Lulu-star
  - 3.0.0 -> Lulu-daisy
  - 4.0.0 -> Lulu-MCU
- Second number is used to specify the PCB shape
  - 2.0.0 -> Lulu-star/Circle (this is the most common eTextile PCB shape but doesn't fit the zero waste).
  - 2.1.0 -> Lulu-star/Triangle (this shape fit the three wire connectors and zero waste panelization process).
  - 2.2.0 -> Lulu-star/Blob...
- Third number is used to specify the iteration
  - 2.1.1 -> [Made with Upverter an online PCB router software.](https://upverter.com/DataPaulette/08fe1452dfd87b08/Lulu-star_211/ "Made with Upvetrter, online PCB router software") 
  - 2.1.2 -> [Made with KiCad 5.0.0](./kicad_Lulu_star/Lulu_star_212/ "Made with KiCad 5.0.0") 

### Development tools & DOCs
 * **Web page**: [http://lulu.eTextile.org](http://lulu.eTextile.org "The project Web page")
 * **Kobakant web page**: [http://www.kobakant.at/KOBA/lulu-developments](http://www.kobakant.at/KOBA/lulu-developments "Kobakant project Web page")
 * **Repository**: [https://github.com/eTextile/Lulu/tree/master](https://github.com/eTextile/Lulu/tree/master "The project repository")
 * **License**: [CC-BY-SA](https://github.com/eTextile/Lulu/blob/master/LICENSE "See the Lulu license project")
 * **Video**: [Lulu project by Hannah](https://www.youtube.com/watch?v=drAoLd_eUWk "Lulu project Introduction")
 * **Video**: [Lulu project by Maurin](https://vimeo.com/249171264 "eTextile bus solution")
 * **Mail**: [lulu@etextile.org](mailto:lulu@etextile.org "eMail us")
 * **IRC**: [Riot](https://vector.im/develop/#/room/#lulu:matrix.org "Join us on the chat to collaborate in the development")
 * **Pictures**: [Flickr](https://www.flickr.com/groups/3908991@N25/ "Share your Lulu pictures project")

```
*Editable / multipurpose
                                 Forkable
             Low|-------------------|//////////////////////////////////////////|High

*Production method
                            Crafter
             DIY|--------------|///////////////////////////////////////////////|Industry

*Price
                                             6€
             Low|////////////////////////////|---------------------------------|High

*Skils level of users
                                                 Crafter
        Beginers|///////////////////////////////////|--------------------------|Expert

*Level of integration
               PCB                   PCB++
        Standard|/////////////////////|----------------------------------------|Non standard (e-textile)

*Level of complexity
                                                                          Lulu + LED-driver
                                                           Lulu + LED-driver   + MCU
              Lulu               Lulu + LED-driver         Lulu + MCU          + Battery & charger
             Low|/////////////////////| ------------------------|--------------|High

*Robusness / Life span (Connectors, testing, evaluating)
         Fragile|/////////////////////| ------------------------|--------------|Stong

*Project ethics
                                                         Sparkfun
              DIY  Crow-fonded  Localy                   Adafruit  Seed      China
           High|--------|--------|//////////////////////////|--------|---------|low

*Optic Fibers
               20cm    1m     2m
           Schot|------|///////|-----------------------------------------------|Long

*Tech
                                                OpenPCB                  Open-cylycium
          Closed|-------------------------|////////|///////|-------------------|Free & Full Open

*Liscence
          Closed|--------------------------------------------------------------|Free & Open

*Peripherals
     Free (Open)|-------------------|-----------------------|------------------|Closed

```
