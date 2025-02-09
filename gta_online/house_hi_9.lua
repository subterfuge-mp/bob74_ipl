-- 2866 Hillcrest Avenue
-- High end house 9: -744.8009, 585.9765, 146.0602
exports('GetGTAOHouseHi9Object', function()
	return GTAOHouseHi9
end)

GTAOHouseHi9 = {
	interiorId = 208641,

	Strip = {
		A = "Apart_Hi_Strip_A",
		B = "Apart_Hi_Strip_B",
		C = "Apart_Hi_Strip_C",

		Enable = function(details, state, refresh)
			SetIplPropState(GTAOHouseHi9.interiorId, details, state, refresh)
		end
	},
	Booze = {
		A = "Apart_Hi_Booze_A",
		B = "Apart_Hi_Booze_B",
		C = "Apart_Hi_Booze_C",

		Enable = function(details, state, refresh)
			SetIplPropState(GTAOHouseHi9.interiorId, details, state, refresh)
		end
	},
	Smoke = {
		A = "Apart_Hi_Smokes_A",
		B = "Apart_Hi_Smokes_B",
		C = "Apart_Hi_Smokes_C",

		Enable = function(details, state, refresh)
			SetIplPropState(GTAOHouseHi9.interiorId, details, state, refresh)
		end
	},

	LoadDefault = function()
		GTAOHouseHi9.Strip.Enable({
			GTAOHouseHi9.Strip.A,
			GTAOHouseHi9.Strip.B,
			GTAOHouseHi9.Strip.C
		}, false)
		GTAOHouseHi9.Booze.Enable({
			GTAOHouseHi9.Booze.A,
			GTAOHouseHi9.Booze.B,
			GTAOHouseHi9.Booze.C
		}, false)
		GTAOHouseHi9.Smoke.Enable({
			GTAOHouseHi9.Smoke.A,
			GTAOHouseHi9.Smoke.B,
			GTAOHouseHi9.Smoke.C
		}, false)


		RequestIpl("apa_stilt_ch2_09c_int")
		RefreshInterior(GTAOHouseHi9.interiorId)
	end
}
