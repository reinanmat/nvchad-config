local options = {
	override = {
		sh = {
			icon = "",
			color = "#ffffff",
			name = "Bash",
		},
		py = {
			icon = "",
			color = "#ffdb35",
			name = "Python",
		},
		md = {
			icon = "",
			color = "#ffffff",
			name = "Markdown",
		}
	},
	override_by_filename = {
		["requirements.txt"] = {
			icon = "",
			color = "#ffdb35",
			name = "PythonRequirements",
		},
		["docker-compose.yml"] = {
			icon = "",
			color = "#f55385",
			name = "DockerComposeYml",
		},
		["go.mod"] = {
			icon = "",
			color = "#ea507b",
			name = "GoMod",
		},
		["go.sum"] = {
			icon = "",
			color = "#ea507b",
			name = "GoSum",
		}
	},
}

return options
