##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=GameEngine
ConfigurationName      :=Debug
WorkspacePath          :=/home/paulo/estudos/games/GameEngine
ProjectPath            :=/home/paulo/estudos/games/GameEngine/GameEngine
IntermediateDirectory  :=./Debug
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=Paulo Ricardo
Date                   :=28/06/18
CodeLitePath           :=/home/paulo/.codelite
LinkerName             :=g++
SharedObjectLinkerName :=g++ -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=.o.d
PreprocessSuffix       :=.o.i
DebugSwitch            :=-gstab
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputFile             :=$(IntermediateDirectory)/$(ProjectName)
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E 
ObjectsFileList        :="GameEngine.txt"
PCHCompileFlags        :=
MakeDirCommand         :=mkdir -p
LinkOptions            :=  
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch)/usr/include/SFML 
IncludePCH             := 
RcIncludePath          := 
Libs                   := $(LibrarySwitch)sfml-graphics $(LibrarySwitch)sfml-window $(LibrarySwitch)sfml-system 
ArLibs                 :=  "sfml-graphics" "sfml-window" "sfml-system" 
LibPath                := $(LibraryPathSwitch). 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := ar rcus
CXX      := g++
CC       := gcc
CXXFLAGS :=  -g -O0 -Wall $(Preprocessors)
CFLAGS   :=  -g -O0 -Wall $(Preprocessors)
ASFLAGS  := 
AS       := as


##
## User defined environment variables
##
CodeLiteDir:=/usr/share/codelite
Objects0=$(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IntermediateDirectory)/Update.cpp$(ObjectSuffix) $(IntermediateDirectory)/Engine.cpp$(ObjectSuffix) $(IntermediateDirectory)/Bob.cpp$(ObjectSuffix) $(IntermediateDirectory)/Draw.cpp$(ObjectSuffix) $(IntermediateDirectory)/Input.cpp$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: $(OutputFile)

$(OutputFile): $(IntermediateDirectory)/.d $(Objects) 
	@$(MakeDirCommand) $(@D)
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

PostBuild:
	@echo Executing Post Build commands ...
	cp -r images Debug
	@echo Done

MakeIntermediateDirs:
	@test -d ./Debug || $(MakeDirCommand) ./Debug


$(IntermediateDirectory)/.d:
	@test -d ./Debug || $(MakeDirCommand) ./Debug

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/main.cpp$(ObjectSuffix): main.cpp $(IntermediateDirectory)/main.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/paulo/estudos/games/GameEngine/GameEngine/main.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/main.cpp$(DependSuffix): main.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/main.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/main.cpp$(DependSuffix) -MM main.cpp

$(IntermediateDirectory)/main.cpp$(PreprocessSuffix): main.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/main.cpp$(PreprocessSuffix) main.cpp

$(IntermediateDirectory)/Update.cpp$(ObjectSuffix): Update.cpp $(IntermediateDirectory)/Update.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/paulo/estudos/games/GameEngine/GameEngine/Update.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Update.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Update.cpp$(DependSuffix): Update.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Update.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Update.cpp$(DependSuffix) -MM Update.cpp

$(IntermediateDirectory)/Update.cpp$(PreprocessSuffix): Update.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Update.cpp$(PreprocessSuffix) Update.cpp

$(IntermediateDirectory)/Engine.cpp$(ObjectSuffix): Engine.cpp $(IntermediateDirectory)/Engine.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/paulo/estudos/games/GameEngine/GameEngine/Engine.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Engine.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Engine.cpp$(DependSuffix): Engine.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Engine.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Engine.cpp$(DependSuffix) -MM Engine.cpp

$(IntermediateDirectory)/Engine.cpp$(PreprocessSuffix): Engine.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Engine.cpp$(PreprocessSuffix) Engine.cpp

$(IntermediateDirectory)/Bob.cpp$(ObjectSuffix): Bob.cpp $(IntermediateDirectory)/Bob.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/paulo/estudos/games/GameEngine/GameEngine/Bob.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Bob.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Bob.cpp$(DependSuffix): Bob.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Bob.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Bob.cpp$(DependSuffix) -MM Bob.cpp

$(IntermediateDirectory)/Bob.cpp$(PreprocessSuffix): Bob.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Bob.cpp$(PreprocessSuffix) Bob.cpp

$(IntermediateDirectory)/Draw.cpp$(ObjectSuffix): Draw.cpp $(IntermediateDirectory)/Draw.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/paulo/estudos/games/GameEngine/GameEngine/Draw.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Draw.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Draw.cpp$(DependSuffix): Draw.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Draw.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Draw.cpp$(DependSuffix) -MM Draw.cpp

$(IntermediateDirectory)/Draw.cpp$(PreprocessSuffix): Draw.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Draw.cpp$(PreprocessSuffix) Draw.cpp

$(IntermediateDirectory)/Input.cpp$(ObjectSuffix): Input.cpp $(IntermediateDirectory)/Input.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/paulo/estudos/games/GameEngine/GameEngine/Input.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Input.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Input.cpp$(DependSuffix): Input.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Input.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Input.cpp$(DependSuffix) -MM Input.cpp

$(IntermediateDirectory)/Input.cpp$(PreprocessSuffix): Input.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Input.cpp$(PreprocessSuffix) Input.cpp


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r ./Debug/


