# Generates HTML components to the Settings.html
import generator
import os

instructions = generator.readYaml("./instructions.yaml")["Settings"]

def readFile(file):
    try:
        return open(file,mode='r').read()
    except:
        print("A file reading error has occured")

def appendSetting(name,setting):
    
    html=""
    if setting["type"] == "boolean":
        button = readFile("./template/boolean.html")
        return button.replace("name",name).replace("default_value",str(setting["default"]).lower())
        pass
    if setting["type"] == "number":
        button = readFile("./template/number.html")
        return button.replace("name",name).replace("default_value",str(setting["default"]))
        pass
    if setting["type"] == "money":
        button = readFile("./template/money.html")
        return button.replace("name",name).replace("default_value",str(setting["default"]))
        pass
    if setting["type"] == "time":
        button = readFile("./template/time.html")
        return button.replace("name",name).replace("default_value",str(setting["default"]))
        pass
    if setting["type"] == "percent":
        button = readFile("./template/percent.html")
        return button.replace("name",name).replace("default_value",str(setting["default"]))
        pass
    if setting["type"] == "string":
        button = readFile("./template/string.html")
        return button.replace("name",name).replace("default_value",str(setting["default"]))
        pass
    return ""
    pass

header = readFile("./template/header.html").split("INSERT")

for list in instructions: # Generate the nav menu first
    header[0] += f"""
    <div class="subnav">
    <button class="subnavbtn">{list} <!--<i class="fa fa-caret-down"></i>--></button>
    <div class="subnav-content">"""

    
    for page in instructions[list]:
        header[0] += f"\n<a href=\"../{list}/{page}.html\">{page}</a>"
        
        pass
    header[0] += f"\n</div>\n</div>"
        
        
    pass
header[0] += header[1]

export = readFile("./template/export.html").split("INSERT")
old_import = readFile("./template/import.html").split("INSERT")
export_import = header[0]
new_import = old_import[0] 
new_export = export[0]





for list in instructions:
    for page in instructions[list]:
        new_html = header[0]

        for setting in instructions[list][page]:
            new_html += appendSetting(setting, instructions[list][page][setting])
            #print(setting)
            if "scoreboard" in instructions[list][page][setting]:
                #new_import += f""
                new_export += f"output += `###{setting}###${{resolveSetting(sessionStorage.getItem('ep.{setting}'), '{instructions[list][page][setting]['default']}')}}\\n`\n"
                new_export += f"output += `scoreboard players set {instructions[list][page][setting]['scoreboard']} ${{resolveSetting(sessionStorage.getItem('ep.{setting}'), '{instructions[list][page][setting]['default']}')}}\\n`;\n"
                pass
            elif "command" in instructions[list][page][setting]:
                new_export += f"output += `###{setting}###${{resolveSetting(sessionStorage.getItem('ep.{setting}'), '{instructions[list][page][setting]['default']}')}}\\n`\n"
                new_export += "output += `" + instructions[list][page][setting]['command'].replace('%value%', f"${{resolveSetting(sessionStorage.getItem('ep.{setting}'), \'{instructions[list][page][setting]['default']}\')}}") + "\\n`; \n"
                pass

            pass
        new_html += header[2]
        generator.recursiveCreateFolder("./" + list)
        file = open("./" + list + "/" + page + ".html","w")
        file.write(new_html)
        file.close()
        pass
    pass
#new_import += old_import[1]
new_export += export[1]
export_import += new_import + new_export + header[2]
file = open("./Core/export.html","w")
file.write(export_import)
file.close()

input("Press Enter to exit the program.")