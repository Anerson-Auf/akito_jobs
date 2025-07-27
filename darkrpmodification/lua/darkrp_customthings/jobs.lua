local StatsHP={
	slayer={
		leader=1200,
		stolp=900,
		hinst=600,
		dinst=500,
		inst=450,
		tsuguko=400,
		slayer=350,
		student=200,
		kakushi=250,
	}, 
	demon={
		leader=1700,
		hmoon=1000,
		lmoon=800,
		hinst=650,
		dinst=550,
		inst=500,
		dmoon=650,
		bdemon=450,
		sdemon=500,
		demon=410,
		wdemon=300,
	}
}
local StatsMS={
	slayer={
		leader=425,
		stolp=335,
		fstolp=315,
		hinst=290,
		dinst=275,
		inst=265,
		tsuguko=300,
		slayer=260,
		student=200,
		kakushi=200,

	},
	demon={
		leader=425,
		hmoon=380,
		lmoon=350,
		hinst=290,
		dinst=280,
		inst=260,
		dmoon=300,
		bdemon=270,
		sdemon=260,
		demon=250,
		wdemon=200,
		clowndemon=190000,

	}
}

--[[---------------------------------------------------------------------------
DarkRP custom jobs
---------------------------------------------------------------------------
This file contains your custom jobs.
This file should also contain jobs from DarkRP that you edited.

Note: If you want to edit a default DarkRP job, first disable it in darkrp_config/disabled_defaults.lua
      Once you've done that, copy and paste the job to this file and edit it.

The default jobs can be found here:
https://github.com/FPtje/DarkRP/blob/master/gamemode/config/jobrelated.lua

For examples and explanation please visit this wiki page:
https://darkrp.miraheze.org/wiki/DarkRP:CustomJobFields

Add your custom jobs under the following line:
---------------------------------------------------------------------------]]
local meta = FindMetaTable('Player')
function meta:_SetupStatPlayer(hp, speed)
	--self:SetMaxHealth(yufu.stats.base.hp + hp) self:SetHealth(yufu.stats.base.hp + hp) self:SetRunSpeed(yufu.stats.base.speed + speed)
	self:SetMaxHealth(hp) self:SetHealth(hp) self:SetRunSpeed(speed)
	self:SetWalkSpeed(200) self:SetJumpPower(270)
end
function meta:_SetupSlayer(leader, stolp, inst, student, kakushi, breath, tsuguko)
	self:SetNWBool('slayer.leader', leader or false) self:SetNWBool('slayer.stolp', stolp or false) self:SetNWBool('slayer.instructor', inst or false) self:SetNWBool('slayer.student', student or false) self:SetNWBool('slayer.kakushi', kakushi or false) self:SetNWBool('slayer', true) self:SetNWString('slayer.breathstyle', breath or 'nil') self:SetNWBool('demon.leader', false) self:SetNWBool('demon.highmoon', false) self:SetNWBool('demon.lowmoon', false) self:SetNWBool('demon.lowdemon', false) self:SetNWBool('demon', false) self:SetNWString('demon.bloodtype', 'nil') self:SetNWBool('slayer.tsuguko', tsuguko or false)
end
function meta:_SetupDemon(leader, hmoon, lmoon, ldemon, bloodtype)
	self:SetNWBool('slayer.leader', false) self:SetNWBool('slayer.stolp', false) self:SetNWBool('slayer.instructor', false) self:SetNWBool('slayer.student', false) self:SetNWBool('slayer.kakushi', false) self:SetNWBool('slayer', false) self:SetNWString('slayer.breathstyle', 'nil') self:SetNWBool('demon.leader', leader or false) self:SetNWBool('demon.highmoon', hmoon or false) self:SetNWBool('demon.lowmoon', lmoon or false) self:SetNWBool('demon.lowdemon', ldemon or false) self:SetNWBool('demon', true) self:SetNWString('demon.bloodmagic', bloodtype or 'nil') self:SetNWString('demon.bloodtype', bloodtype or 'nil') self:SetNWBool('slayer.tsuguko', false)
end
function meta:_SetupNeutral() self:SetNWBool('slayer.leader', false) self:SetNWBool('slayer.stolp', false) self:SetNWBool('slayer.instructor', false) self:SetNWBool('slayer.student', false) self:SetNWBool('slayer.kakushi', false) self:SetNWBool('slayer', false) self:SetNWString('slayer.breathstyle', 'nil') self:SetNWBool('demon.leader', false) self:SetNWBool('demon.highmoon', false) self:SetNWBool('demon.lowmoon', false) self:SetNWBool('demon.lowdemon', false) self:SetNWBool('demon', false) self:SetNWString('demon.bloodtype', 'nil') self:SetNWBool('slayer.tsuguko', false) end

local clr = {
    neutral = Color(255, 255, 255),
	water = Color(38,105,252),
	thunder = Color(245,242,86),
	stone = Color(116, 109, 109),
	wind = Color(150,205,214),
    fire = Color(219,155,71),
	love = Color(241,112,241),
	sound = Color(100,100,100),
	bug = Color(174,33,230),
	snake = Color(88,179,88),
	flower = Color(219,161,226),
	pig = Color(180,180,180),
	fog = Color(208,208,208),
	sun = Color(231,245,45),
	moon = Color(155,55,185),
	void = Color(155,85,255),
	darkness = Color(100,35,255),
	demon = Color(255, 28, 28, 255),
	sand = Color(206, 88, 41),
	light_demon = Color(152, 216, 186),
	default_slayer = Color(85, 69, 68),
	cerber = Color(122,122,122)
}

TEAM_FIRST = DarkRP.createJob('Скиталец', {
	description = [[Учится ОГНЮ.]], max = 0, salary = 0, admin = 0, vote = false, hasLicense = false, candemote = false,
	color = clr.neutral,
	model = {'models/yufu/oldjimmy/demonslayer/custom/custom_citizen_male1.mdl'},
	weapons = {},
	command = 'skitalec',
	category = 'Начальное',
	PlayerSpawn = function(ply)
		ply:_SetupNeutral()
		ply:_SetupStatPlayer(150, 150)
	end,
})

TEAM_FIRE = DarkRP.createJob('Ученик стиля Пламени', {
	command = 'TEAM_FIRE', description = '', max = 0, salary = 0, admin = 0, vote = false, hasLicense = false, candemote = false,
	category = 'Ученики', model = {'models/yufu/oldjimmy/demonslayer/custom/students_male.mdl', 'models/yufu/oldjimmy/demonslayer/custom/students_female.mdl'},
	color = clr.fire,
	weapons = {'akito_katana'},
	PlayerSpawn = function(ply)
		ply:_SetupStatPlayer(StatsHP.slayer.student, StatsMS.slayer.student)
		ply:_SetupSlayer(false, false, false, true, false, 'Fire')
	end,
})

TEAM_STONEBOY = DarkRP.createJob('Ученик стиля Камня', {
	command = 'TEAM_STONEBOY', description = '', max = 0, salary = 0, admin = 0, vote = false, hasLicense = false, candemote = false,
	category = 'Ученики', model = {'models/yufu/oldjimmy/demonslayer/custom/students_male.mdl', 'models/yufu/oldjimmy/demonslayer/custom/students_female.mdl'},
	color = clr.stone,
	weapons = {'akito_katana'},
	PlayerSpawn = function(ply)
		ply:_SetupStatPlayer(StatsHP.slayer.student, StatsMS.slayer.student)
		ply:_SetupSlayer(false, false, false, true, false, 'Stone')
	end,
})

TEAM_WATER = DarkRP.createJob('Ученик стиля Воды', {
	command = 'TEAM_WATER', description = '', max = 0, salary = 0, admin = 0, vote = false, hasLicense = false, candemote = false,
	category = 'Ученики', model = {'models/yufu/oldjimmy/demonslayer/custom/students_male.mdl', 'models/yufu/oldjimmy/demonslayer/custom/students_female.mdl'},
	color = clr.water,
	weapons = {'akito_katana'},
	PlayerSpawn = function(ply)
		ply:_SetupStatPlayer(StatsHP.slayer.student, StatsMS.slayer.student)
		ply:_SetupSlayer(false, false, false, true, false, 'Water')
	end,
})

TEAM_GROMBOY = DarkRP.createJob('Ученик стиля Грома', {
	command = 'TEAM_GROMBOY', description = '', max = 0, salary = 0, admin = 0, vote = false, hasLicense = false, candemote = false,
	category = 'Ученики', model = {'models/yufu/oldjimmy/demonslayer/custom/students_male.mdl', 'models/yufu/oldjimmy/demonslayer/custom/students_female.mdl'},
	color = clr.thunder,
	weapons = {'akito_katana'},
	PlayerSpawn = function(ply)
		ply:_SetupStatPlayer(StatsHP.slayer.student, StatsMS.slayer.student)
		ply:_SetupSlayer(false, false, false, true, false, 'Thunder')
	end,
})

TEAM_FLYBOY = DarkRP.createJob('Ученик стиля Ветра', {
	command = 'TEAM_FLYBOY', description = '', max = 0, salary = 0, admin = 0, vote = false, hasLicense = false, candemote = false,
	category = 'Ученики', model = {'models/yufu/oldjimmy/demonslayer/custom/students_male.mdl', 'models/yufu/oldjimmy/demonslayer/custom/students_female.mdl'},
	color = clr.wind,
	weapons = {'akito_katana'},
	PlayerSpawn = function(ply)
		ply:_SetupStatPlayer(StatsHP.slayer.student, StatsMS.slayer.student)
		ply:_SetupSlayer(false, false, false, true, false, 'Wind')
	end,
})

TEAM_DEMON3 = DarkRP.createJob('Демон магии крови', {
    command = 'TEAM_DEMON3', description = '', max = 0, salary = 0, admin = 0, vote = false, hasLicense = false, candemote = false,
    category = 'Демоны', model = {'models/yufu/oldjimmy/demonslayer/canon/blood_demon.mdl'},
	color = clr.demon,
	weapons = {'akito_claws'},
    PlayerSpawn = function(ply)
        ply:_SetupStatPlayer(StatsHP.demon.bdemon, StatsMS.demon.bdemon)
        ply:_SetupDemon(false, false, false, false, 'nil')
        --ply:_SetupDemon(leader, hmoon, lmoon, ldemon, bloodtype)
    end,
})

TEAM_GYOMEI = DarkRP.createJob('Гёмей Химеджима', {
	command = 'TEAM_GYOMEI', description = '', max = 0, salary = 0, admin = 0, vote = false, hasLicense = false, candemote = false,
	category = 'Столпы', model = {'models/yufu/oldjimmy/demonslayer/canon/gyomei_himejima.mdl'},
	color = clr.stone,
	weapons = {'akito_katana'},
	PlayerSpawn = function(ply)
		ply:_SetupStatPlayer(StatsHP.slayer.leader, StatsMS.slayer.leader)
		ply:_SetupSlayer(true, false, false, false, false, 'Stone')
	end,
})

TEAM_SANEMI = DarkRP.createJob('Санеми Шинадзугава', {
	command = 'TEAM_SANEMI', description = '', max = 0, salary = 0, admin = 0, vote = false, hasLicense = false, candemote = false,
	category = 'Столпы', model = {'models/yufu/oldjimmy/demonslayer/canon/sanemi_shinazugawa.mdl'},
	color = clr.wind,
	weapons = {'akito_katana'},
	PlayerSpawn = function(ply)
		ply:_SetupStatPlayer(StatsHP.slayer.stolp, StatsMS.slayer.stolp)
		ply:_SetupSlayer(false, true, false, false, false, 'Wind')
	end,
})

TEAM_GIYU = DarkRP.createJob('Гию Томиока', {
	command = 'TEAM_GIYU', description = '', max = 0, salary = 0, admin = 0, vote = false, hasLicense = false, candemote = false,
	category = 'Столпы', model = {'models/yufu/oldjimmy/demonslayer/canon/giyu_tomioka.mdl'},
	color = clr.water,
	weapons = {'akito_katana'},
	PlayerSpawn = function(ply)
		ply:_SetupStatPlayer(StatsHP.slayer.stolp, StatsMS.slayer.stolp)
		ply:_SetupSlayer(false, true, false, false, false, 'Water')
	end,
})

TEAM_KYOJIRO = DarkRP.createJob('Кёджуро Ренгоку', {
	command = 'TEAM_KYOJIRO', description = '', max = 0, salary = 0, admin = 0, vote = false, hasLicense = false, candemote = false,
	category = 'Столпы', model = {'models/yufu/oldjimmy/demonslayer/canon/kyojuro_rengoku.mdl'},
	color = clr.fire,
	weapons = {'akito_katana'},
	PlayerSpawn = function(ply)
		ply:_SetupStatPlayer(StatsHP.slayer.stolp, StatsMS.slayer.stolp)
		ply:_SetupSlayer(false, true, false, false, false, 'Fire')
	end,
})

TEAM_TENGEN = DarkRP.createJob('Тенген Узуй', {
	command = 'TEAM_TENGEN', description = '', max = 0, salary = 0, admin = 0, vote = false, hasLicense = false, candemote = false,
	category = 'Столпы', model = {'models/yufu/oldjimmy/demonslayer/canon/tengen.mdl'},
	color = clr.sound,
	weapons = {'akito_katana'},
	PlayerSpawn = function(ply)
		ply:_SetupStatPlayer(StatsHP.slayer.stolp, StatsMS.slayer.stolp)
		ply:_SetupSlayer(false, true, false, false, false, 'Sound')
	end,
})

TEAM_OBANAI = DarkRP.createJob('Обанай Игуро', {
	command = 'TEAM_OBANAI', description = '', max = 0, salary = 0, admin = 0, vote = false, hasLicense = false, candemote = false,
	category = 'Столпы', model = {'models/yufu/oldjimmy/demonslayer/canon/obanai_iguro.mdl', 'models/yufu/oldjimmy/demonslayer/canon/obanai_iguro_nomask.mdl'},
	color = clr.snake,
	weapons = {'akito_katana'},
	PlayerSpawn = function(ply)
		ply:_SetupStatPlayer(StatsHP.slayer.stolp, StatsMS.slayer.stolp)
		ply:_SetupSlayer(false, true, false, false, false, 'Snake')
	end,
})

TEAM_MITSURI = DarkRP.createJob('Мицури Канроджи', {
	command = 'TEAM_MITSURI', description = '', max = 0, salary = 0, admin = 0, vote = false, hasLicense = false, candemote = false,
	category = 'Столпы', model = {'models/yufu/oldjimmy/demonslayer/canon/mitsuri_kanroji.mdl'},
	color = clr.love,
	weapons = {'akito_katana'},
	PlayerSpawn = function(ply)
		ply:_SetupStatPlayer(StatsHP.slayer.stolp, StatsMS.slayer.stolp)
		ply:_SetupSlayer(false, true, false, false, false, 'Love')
	end,
})

TEAM_MUICHIRO = DarkRP.createJob('Муичиро Токито', {
	command = 'TEAM_MUICHIRO', description = '', max = 0, salary = 0, admin = 0, vote = false, hasLicense = false, candemote = false,
	category = 'Столпы', model = {'models/yufu/oldjimmy/demonslayer/canon/muichiro_tokito.mdl'},
	color = clr.fog,
	weapons = {'akito_katana'},
	PlayerSpawn = function(ply)
		ply:_SetupStatPlayer(StatsHP.slayer.stolp, StatsMS.slayer.stolp)
		ply:_SetupSlayer(false, true, false, false, false, 'Fog')
	end,
})

TEAM_SHINOBU = DarkRP.createJob('Шинобу Кочо', {
	command = 'TEAM_SHINOBU', description = '', max = 0, salary = 0, admin = 0, vote = false, hasLicense = false, candemote = false,
	category = 'Столпы', model = {'models/yufu/oldjimmy/demonslayer/canon/shinobu_kocho.mdl'},
	color = clr.bug,
	weapons = {'akito_katana'},
	PlayerSpawn = function(ply)
		ply:_SetupStatPlayer(StatsHP.slayer.stolp, StatsMS.slayer.stolp)
		ply:_SetupSlayer(false, true, false, false, false, 'Bug')
	end,
})

TEAM_STOLPGROM = DarkRP.createJob('Столп Грома', {
	command = 'TEAM_STOLPGROM', description = '', max = 0, salary = 0, admin = 0, vote = false, hasLicense = false, candemote = false,
	category = 'Столпы', model = {'models/yufu/oldjimmy/demonslayer/custom/students_male.mdl', 'models/yufu/oldjimmy/demonslayer/custom/students_female.mdl'},
	color = clr.thunder,
	weapons = {'akito_katana'},
	PlayerSpawn = function(ply)
		ply:_SetupStatPlayer(StatsHP.slayer.stolp, StatsMS.slayer.stolp)
		ply:_SetupSlayer(false, true, false, false, false, 'Thunder')
	end,
})

TEAM_STOLPFLOWER = DarkRP.createJob('Столп Цветка', {
	command = 'TEAM_STOLPFLOWER', description = '', max = 0, salary = 0, admin = 0, vote = false, hasLicense = false, candemote = false,
	category = 'Столпы', model = {'models/yufu/oldjimmy/demonslayer/custom/students_male.mdl', 'models/yufu/oldjimmy/demonslayer/custom/students_female.mdl'},
	color = clr.flower,
	weapons = {'akito_katana'},
	PlayerSpawn = function(ply)
		ply:_SetupStatPlayer(StatsHP.slayer.stolp, StatsMS.slayer.stolp)
		ply:_SetupSlayer(false, true, false, false, false, 'Flower')
	end,
})

TEAM_SHINJURO = DarkRP.createJob('Шинджуро Ренгоку', {
	command = 'TEAM_SHINJURO', description = '', max = 0, salary = 0, admin = 0, vote = false, hasLicense = false, candemote = false,
	category = 'Столпы', model = {'models/yufu/oldjimmy/demonslayer/canon/shinjuro_rengoku.mdl'},
	color = clr.fire,
	weapons = {'akito_katana'},
	PlayerSpawn = function(ply)
		ply:_SetupStatPlayer(StatsHP.slayer.fstolp, StatsMS.slayer.fstolp)
		ply:_SetupSlayer(false, true, false, false, false, 'Fire')
	end,
})

TEAM_JIGORO = DarkRP.createJob('Джигоро Куваджима', {
	command = 'TEAM_JIGORO', description = '', max = 0, salary = 0, admin = 0, vote = false, hasLicense = false, candemote = false,
	category = 'Столпы', model = {'models/yufu/oldjimmy/demonslayer/canon/jigoro_kuwajima.mdl'},
	color = clr.thunder,
	weapons = {'akito_katana'},
	PlayerSpawn = function(ply)
		ply:_SetupStatPlayer(StatsHP.slayer.fstolp, StatsMS.slayer.fstolp)
		ply:_SetupSlayer(false, true, false, false, false, 'Thunder')
	end,
})

TEAM_SAKONJI = DarkRP.createJob('Саконджи Урокодаки', {
	command = 'TEAM_SAKONJI', description = '', max = 0, salary = 0, admin = 0, vote = false, hasLicense = false, candemote = false,
	category = 'Столпы', model = {'models/yufu/oldjimmy/demonslayer/canon/sakonji_urokodaki.mdl'},
	color = clr.water,
	weapons = {'akito_katana'},
	PlayerSpawn = function(ply)
		ply:_SetupStatPlayer(StatsHP.slayer.fstolp, StatsMS.slayer.fstolp)
		ply:_SetupSlayer(false, true, false, false, false, 'Water')
	end,
})

TEAM_KOKUSHIBO = DarkRP.createJob('Кокушибо', {
    command = 'TEAM_KOKUSHIBO', description = '', max = 0, salary = 0, admin = 0, vote = false, hasLicense = false, candemote = false,
    category = 'Демоны 12 лун', model = {'models/yufu/oldjimmy/demonslayer/canon/kokushiba.mdl'},
	color = clr.demon,
	weapons = {'akito_claws'},
    PlayerSpawn = function(ply)
        ply:_SetupStatPlayer(StatsHP.demon.leader, StatsMS.demon.leader)
        ply:_SetupDemon(false, true, false, false, 'Kokushiba')
        --ply:_SetupDemon(leader, hmoon, lmoon, ldemon, bloodtype)
    end,
})

TEAM_DOUMA = DarkRP.createJob('Доума', {
    command = 'TEAM_DOUMA', description = '', max = 0, salary = 0, admin = 0, vote = false, hasLicense = false, candemote = false,
    category = 'Демоны 12 лун', model = {'models/yufu/oldjimmy/demonslayer/canon/douma.mdl', 'models/oldjimmy/demonslayer/canon/douma.mdl'},
	color = clr.demon,
	weapons = {'akito_claws'},
    PlayerSpawn = function(ply)
        ply:_SetupStatPlayer(StatsHP.demon.hmoon, StatsMS.demon.hmoon)
        ply:_SetupDemon(false, true, false, false, 'Douma')
        --ply:_SetupDemon(leader, hmoon, lmoon, ldemon, bloodtype)
    end,
})

TEAM_AKAZA = DarkRP.createJob('Аказа', {
    command = 'TEAM_AKAZA', description = '', max = 0, salary = 0, admin = 0, vote = false, hasLicense = false, candemote = false,
    category = 'Демоны 12 лун', model = {'models/yufu/oldjimmy/demonslayer/canon/akaza.mdl'},
	color = clr.demon,
	weapons = {'akito_claws'},
    PlayerSpawn = function(ply)
        ply:_SetupStatPlayer(StatsHP.demon.hmoon, StatsMS.demon.hmoon)
        ply:_SetupDemon(false, true, false, false, 'Akaza')
        --ply:_SetupDemon(leader, hmoon, lmoon, ldemon, bloodtype)
    end,
})

TEAM_ZOHAKUTEN = DarkRP.createJob('Зохакутен', {
    command = 'TEAM_ZOHAKUTEN', description = '', max = 0, salary = 0, admin = 0, vote = false, hasLicense = false, candemote = false,
    category = 'Демоны 12 лун', model = {'models/yufu/oldjimmy/demonslayer/canon/zohakuten.mdl'},
	color = clr.demon,
	weapons = {'akito_claws'},
    PlayerSpawn = function(ply)
        ply:_SetupStatPlayer(StatsHP.demon.hmoon, StatsMS.demon.hmoon)
        ply:_SetupDemon(false, true, false, false, 'Zohakuten')
        --ply:_SetupDemon(leader, hmoon, lmoon, ldemon, bloodtype)
    end,
})

TEAM_GYOKKO = DarkRP.createJob('Гёкко', {
    command = 'TEAM_GYOKKO', description = '', max = 0, salary = 0, admin = 0, vote = false, hasLicense = false, candemote = false,
    category = 'Демоны 12 лун', model = {'models/yufu/oldjimmy/demonslayer/canon/gekk0.mdl', 'models/yufu/oldjimmy/demonslayer/canon/gekko.mdl'},
	color = clr.demon,
	weapons = {'akito_claws'},
    PlayerSpawn = function(ply)
        ply:_SetupStatPlayer(StatsHP.demon.hmoon, StatsMS.demon.hmoon)
        ply:_SetupDemon(false, true, false, false, 'Gekko')
        --ply:_SetupDemon(leader, hmoon, lmoon, ldemon, bloodtype)
    end,
})

TEAM_GYUTARO = DarkRP.createJob('Гютаро', {
    command = 'TEAM_GYUTARO', description = '', max = 0, salary = 0, admin = 0, vote = false, hasLicense = false, candemote = false,
    category = 'Демоны 12 лун', model = {'models/yufu/oldjimmy/demonslayer/canon/gutaro.mdl'},
	color = clr.demon,
	weapons = {'akito_claws'},
    PlayerSpawn = function(ply)
        ply:_SetupStatPlayer(StatsHP.demon.hmoon, StatsMS.demon.hmoon)
        ply:_SetupDemon(false, true, false, false, 'Gutaro')
        --ply:_SetupDemon(leader, hmoon, lmoon, ldemon, bloodtype)
    end,
})

TEAM_DAKI = DarkRP.createJob('Даки', {
    command = 'TEAM_DAKI', description = '', max = 0, salary = 0, admin = 0, vote = false, hasLicense = false, candemote = false,
    category = 'Демоны 12 лун', model = {'models/yufu/oldjimmy/demonslayer/canon/daki.mdl', 'models/yufu/oldjimmy/demonslayer/canon/daki_mask.mdl'},
	color = clr.demon,
	weapons = {'akito_claws'},
    PlayerSpawn = function(ply)
        ply:_SetupStatPlayer(StatsHP.demon.hmoon, StatsMS.demon.hmoon)
        ply:_SetupDemon(false, true, false, false, 'Daki')
        --ply:_SetupDemon(leader, hmoon, lmoon, ldemon, bloodtype)
    end,
})

TEAM_ENMU = DarkRP.createJob('Энму', {
    command = 'TEAM_ENMU', description = '', max = 0, salary = 0, admin = 0, vote = false, hasLicense = false, candemote = false,
    category = 'Демоны 12 лун', model = {'models/yufu/oldjimmy/demonslayer/canon/enmu.mdl'},
	color = clr.demon,
	weapons = {'akito_claws'},
    PlayerSpawn = function(ply)
        ply:_SetupStatPlayer(StatsHP.demon.lmoon, StatsMS.demon.lmoon)
        ply:_SetupDemon(false, false, true, false, 'Enmu')
        --ply:_SetupDemon(leader, hmoon, lmoon, ldemon, bloodtype)
    end,
})

TEAM_RUI = DarkRP.createJob('Руи', {
    command = 'TEAM_RUI', description = '', max = 0, salary = 0, admin = 0, vote = false, hasLicense = false, candemote = false,
    category = 'Демоны 12 лун', model = {'models/yufu/oldjimmy/demonslayer/canon/rui.mdl'},
	color = clr.demon,
	weapons = {'akito_claws'},
    PlayerSpawn = function(ply)
        ply:_SetupStatPlayer(StatsHP.demon.lmoon, StatsMS.demon.lmoon)
        ply:_SetupDemon(false, false, true, false, 'Rui')
        --ply:_SetupDemon(leader, hmoon, lmoon, ldemon, bloodtype)
    end,
})

TEAM_MUDAK = DarkRP.createJob('Мудзан Кибуцуджи', {
    command = 'TEAM_MUDAK', description = '', max = 0, salary = 0, admin = 0, vote = false, hasLicense = false, candemote = false,
    category = 'Демоны 12 лун', model = {'models/yufu/oldjimmy/demonslayer/canon/muzan.mdl'},
	color = clr.demon,
	weapons = {'akito_claws'},
    PlayerSpawn = function(ply)
        ply:_SetupStatPlayer(StatsHP.demon.leader, StatsMS.demon.leader)
        ply:_SetupDemon(true, false, false, false, 'Muzan')
        --ply:_SetupDemon(leader, hmoon, lmoon, ldemon, bloodtype)
    end,
})



GAMEMODE.DefaultTeam = TEAM_FIRST
