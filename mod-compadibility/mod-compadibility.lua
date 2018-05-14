require "bobs-mods"
require "add-mods"

--Format for each entry in the table is {"entity_type", "entity_name"}
--Valid entity_types are as follows:
--1x1, 2x2, 3x3, 4x4, 5x5, 9x10, custom

--Iterates over all of the mods and adds compadible entities to the arrays
function modCompadibility()
	for mod, _ in pairs(game.active_mods) do
		check_bobassembly(mod)
		check_boblogistics(mod)
		check_bobmining(mod)
		check_bobmodules(mod)
		check_bobplates(mod)
		check_bobpower(mod)
		check_bobtech(mod)
		check_bobwarfare(mod)
		check_doublefurnace(mod)
		check_AssemblyZero(mod)
		check_FlareStack(mod)
		check_airfilteringpatched(mod)
		check_bioindustries(mod)
		check_darkmatterreplicators(mod)
		check_deadlockcrating(mod)
		check_electricfurnaces(mod)
		check_electrictrain(mod)
		check_geothermal(mod)
		check_kspower(mod)
		check_largelamp(mod)
		check_liquidscience(mod)
		check_miningtools(mod)
		check_plc(mod)
		check_railloader(mod)
		check_scanningradar(mod)
		check_vehicleradar(mod)
		check_waterwell(mod)
		check_wirelesssignals(mod)
		check_stormwalls(mod)
		check_realisticreactors(mod)
		check_nauvisday(mod)
		check_dp77sulfur(mod)
		check_nanobots(mod)
		check_specializedoil(mod)
		check_deepmine(mod)
		check_macerator(mod)
		check_poweronabelt(mod)
		check_pyindustry(mod)
		check_reversefactory(mod)
		check_riteg(mod)
		check_sigmanuclear(mod)
	end
end


--Adds entities to the arrays
function add_to_table(array)
	for _, entity in ipairs(array) do
		local entity_type = entity[1]
		local entity_name = entity[2]
		
		if (entity_type == "1x1") then
			table.insert(entities1x1, entity_name)
		elseif (entity_type == "2x2") then
			table.insert(entities2x2, entity_name)
		elseif (entity_type == "3x3") then
			table.insert(entities3x3, entity_name)
		elseif (entity_type == "4x4") then
			table.insert(entities4x4, entity_name)
		elseif (entity_type == "5x5") then
			table.insert(entities5x5, entity_name)
		elseif (entity_type == "9x10") then
			table.insert(entities9x10, entity_name)
		elseif (entity_type == "custom") then
			table.insert(entitiesCustom, entity_name)
		end
	end
end
