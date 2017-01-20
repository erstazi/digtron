digtron.doc = {}

digtron.doc.core_longdesc = "A crafting component used in the manufacture of all Digtron block types."
digtron.doc.core_usagehelp = "Place the Digtron Core in the center of the crafting grid. All Digtron recipes consist of arranging various other materials around the central Digtron Core."

--------------------------------------------------------------------

digtron.doc.builder_longdesc = "A 'builder' module for a Digtron. By itself it does nothing, but as part of a Digtron it is used to construct user-defined blocks."
digtron.doc.builder_usagehelp = "A builder head is the most complex component of this system. It has period and offset properties, and also an inventory slot where you \"program\" it by placing an example of the block type that you want it to build.\n\n" ..
'When the "Save & Show" button is clicked the properties for period and offset will be saved, and markers will briefly be shown to indicate where the nearest spots corresponding to those values are. The builder will build its output at those locations provided it is moving along the matching axis.\n\n' ..
'The "output" side of a builder is the side with a black crosshair on it.\n\n' ..
'Builders also have a "facing" setting. If you haven\'t memorized the meaning of the 24 facing values yet, builder heads have a helpful "Read & Save" button to fill this value in for you. Simply build a temporary instance of the block in the output location in front of the builder, adjust it to the orientation you want using the screwdriver tool, and then when you click the "Read & Save" button the block\'s facing will be read and saved.'

--------------------------------------------------------------------

digtron.doc.inventory_longdesc = "Stores building materials for use by builder heads and materials dug up by digger heads."
digtron.doc.inventory_usagehelp = "Inventory modules have the same capacity as a chest. They're used both for storing the products of the digger heads and as the source of materials used by the builder heads. A digging machine whose builder heads are laying down cobble can automatically self-replenish in this way, but note that an inventory module is still required as buffer space even if the digger heads produced everything needed by the builder heads in a given cycle.\n\n"..
"Inventory modules are not required for a digging-only machine. If there's not enough storage space to hold the materials produced by the digging heads the excess material will be ejected out the back of the control block. They're handy for accumulating ores and other building materials, though.\n\n"..
"Digging machines can have multiple inventory modules added to expand their capacity."

digtron.doc.fuelstore_longdesc = "Stores fuel to run a Digtron"
digtron.doc.fuelstore_usagehelp = "Digtrons have an appetite. Build operations and dig operations require a certain amount of fuel, and that fuel comes from fuel hopper modules. Note that movement does not require fuel, only digging and building.\n\n"..
"When a control unit is triggered, it will tally up how much fuel is required for the next cycle and then burn items from the fuel hopper until a sufficient amount of heat has been generated to power the operation. Any leftover heat will be retained by the control unit for use in the next cycle; this is the \"heat remaining in controller furnace\". This means you don't have to worry too much about what kinds of fuel you put in the hopper, none will be wasted (unless you dig away a control unit with some heat remaining in it, that heat does get wasted).\n\n" ..
"The fuel costs for digging and building can be configured in the init.lua file. By default using one lump of coal as fuel a digtron can:\n"..
"\tBuild 40 blocks\n"..
"\tDig 40 stone blocks\n"..
"\tDig 60 wood blocks\n"..
"\tDig 80 dirt or sand blocks"

digtron.doc.combined_storage_longdesc = "Stores fuel for a Digtron and also has an inventory for building materials"
digtron.doc.combined_storage_usagehelp = "For smaller jobs the two dedicated modules may simply be too much of a good thing, wasting precious Digtron space to give unneeded capacity. The combined storage module is the best of both worlds, splitting its internal space between building material inventory and fuel storage. It has 3/4 building material capacity and 1/4 fuel storage capacity."

---------------------------------------------------------------------

digtron.doc.empty_crate_longdesc = "An empty crate that a Digtron can be stored in"
digtron.doc.empty_crate_usagehelp = "Digtrons can be pushed around and rotated, and that may be enough for getting them perfectly positioned for the start of a run. But once your digger is a kilometer down under a shaft filled with stairs, how to get it back to the surface to run another pass?\n\n" ..
"Place an empty Digtron crate next to a Digtron and right-click it to pack the Digtron (and all its inventory and settings) into the crate. You can then collect the crate, bring it somewhere else, build the crate, and then unpack the Digtron from it again. The Digtron will appear in the same relative location and orientation to the crate as when it was packed away inside it."

digtron.doc.loaded_crate_longdesc = "A crate containing a Digtron array"
digtron.doc.loaded_crate_usagehelp = "This crate contains a Digtron assembly that was stored in it earlier. Place it somewhere and right-click on it to access the label text that was applied to it. There's also a button that causes it to display the shape the deployed Digtron would take if you unpacked the crate, marking unbuildable blocks with a warning marker. And finally there's a button to actually deploy the Digtron, replacing this loaded crate with an empty that can be reused later."

----------------------------------------------------------------------

digtron.doc.controller_longdesc = "A basic controller to make a Digtron array move and operate."
digtron.doc.controller_usagehelp = "Right-click on this module to make the digging machine go one step. The digging machine will go in the direction that the control module is oriented.\n\n" ..
"A control module can only trigger once per second. Gives you time to enjoy the scenery and smell the flowers (or their mulched remains, at any rate).\n\n" ..
"If you're standing within the digging machine's volume, or in a block adjacent to it, you will be pulled along with the machine when it moves."

digtron.doc.auto_controller_longdesc = "A more sophisticated controller that includes the ability to set the number of cycles it will run for, as well as diagonal movement."
digtron.doc.auto_controller_usagehelp = "An Auto-control module can be set to run for an arbitrary number of cycles. Once it's running, right-click on it again to interrupt its rampage. If anything interrupts it - the player's click, an undiggable obstruction, running out of fuel - it will remember the number of remaining cycles so that you can fix the problem and set it running again to complete the original plan.\n\n" ..
"The digging machine will go in the direction that the control module is oriented.\n\n" ..
"Auto-controllers can also be set to move diagonally by setting the \"slope\" parameter to a non-zero value. The controller will then shunt the Digtron in the direction of the arrows painted on its sides every X steps it moves. The Digtron will trigger dig heads when it shunts to the side, but will not trigger builder modules or intermittent dig heads."

digtron.doc.pusher_longdesc = "A simplified controller that merely moves a Digtron around without triggering its builder or digger modules"
digtron.doc.pusher_usagehelp = "Aka the \"can you rebuild it six inches to the left\" module. This is a much simplified control module that does not trigger the digger or builder heads when right-clicked, it only moves the digging machine. It's up to you to ensure there's space for it to move into.\n\n"..
"Since movement alone does not require fuel, a pusher module has no internal furnace."

digtron.doc.axle_longdesc = "A device that allows one to rotate their Digtron into new orientations"
digtron.doc.axle_usagehelp = "This magical module can rotate a Digtron array in place around itself. Right-clicking on it will rotate the Digtron 90 degrees in the direction the orange arrows on its sides indicate (widdershins around the Y axis by default, use the screwdriver to change this) assuming there's space for the Digtron in its new orientation. Builders and diggers will not trigger on rotation."

---------------------------------------------------------------------

digtron.doc.digger_longdesc = "A standard Digtron digger head"
digtron.doc.digger_usagehelp = "Facing of a digger head is significant; it will excavate material from the block on the spinning grinder wheel face of the digger head. Generally speaking, you'll want these to face forward - though having them aimed to the sides can also be useful."

digtron.doc.dual_digger_longdesc = "Two standard Digtron digger heads merged at 90 degrees to each other"
digtron.doc.dual_digger_usagehelp = "This digger head is mainly of use when you want to build a Digtron capable of digging diagonal paths. A normal one-direction dig head would be unable to clear blocks in both of the directions it would be called upon to move, resulting in a stuck Digtron.\n\n" ..
"One can also make use of dual dig heads to simplify the size and layout of a Digtron, though this is generally not of practical use."

digtron.doc.dual_soft_digger_longdesc = "Two standard soft-material Digtron digger heads merged at 90 degrees to each other"
digtron.doc.dual_soft_digger_usagehelp = "This digger head is mainly of use when you want to build a Digtron capable of digging diagonal paths. A normal one-direction dig head would be unable to clear blocks in both of the directions it would be called upon to move, resulting in a stuck Digtron.\n\n" ..
"Like a normal single-direction soft digger head, this digger only excavates material belonging to groups softer than stone" ..
"One can make use of dual dig heads to simplify the size and layout of a Digtron, though this is generally not of practical use."

digtron.doc.intermittent_digger_longdesc = "A standard Digtron digger head that only triggers periodically"
digtron.doc.intermittent_digger_usagehelp = "This is a standard digger head capable of digging any material, but it will only trigger periodically as the Digtron moves. This can be useful for punching regularly-spaced holes in a tunnel wall, for example."

digtron.doc.intermittent_soft_digger_longdesc = "A standard soft-material Digtron digger head that only triggers periodically"
digtron.doc.intermittent_soft_digger_usagehelp = "This is a standard soft-material digger head capable of digging any material, but it will only trigger periodically as the Digtron moves. This can be useful for punching regularly-spaced holes in a tunnel wall, for example."

digtron.doc.soft_digger_longdesc = "A Digtron digger head that only excavates soft materials"
digtron.doc.soft_digger_usagehelp = 'This specialized digger head is designed to excavate only softer material such as sand or gravel. In technical terms, this digger digs blocks belonging to the "crumbly", "choppy", "snappy", "oddly_diggable_by_hand" and "fleshy" groups.\n\n'..
"The intended purpose of this digger is to be aimed at the ceiling or walls of a tunnel being dug, making spaces to allow shoring blocks to be inserted into unstable roofs but leaving the wall alone if it's composed of a more stable material.\n\n" ..
"It can also serve as part of a lawnmower or tree-harvester."

---------------------------------------------------------------------

digtron.doc.structure_longdesc = "Structural component for a Digtron array"
digtron.doc.structure_usagehelp = "These blocks allow otherwise-disconnected sections of digtron blocks to be linked together. They are not usually necessary for simple diggers but more elaborate builder arrays might have builder blocks that can't be placed directly adjacent to other digtron blocks and these blocks can serve to keep them connected to the controller.\n\n" ..
"They may also be used for providing additional traction if your digtron array is very tall compared to the terrain surface that it's touching.\n\n" ..
"You can also use them decoratively, or to build a platform to stand on as you ride your mighty mechanical leviathan through the landscape."

digtron.doc.light_longdesc = "Digtron light source"
digtron.doc.light_usagehelp = "A light source that moves along with the digging machine. Convenient if you're digging a tunnel that you don't intend to outfit with torches or other permanent light fixtures. Not quite as bright as a torch since the protective lens tends to get grimy while burrowing through the earth."

digtron.doc.panel_longdesc = "Digtron panel"
digtron.doc.panel_usagehelp = "A structural panel that can be made part of a Digtron to provide shelter for an operator, or just to look cool."

digtron.doc.edge_panel_longdesc = "Digtron edge panel"
digtron.doc.edge_panel_usagehelp = "A pair of structural panels that can be made part of a Digtron to provide shelter for an operator, or just to look cool."

digtron.doc.corner_panel_longdesc = "Digtron corner panel"
digtron.doc.corner_panel_usagehelp = "A trio of structural panels that can be made part of a Digtron to provide shelter for an operator, or just to look cool."
