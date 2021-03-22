cc_library(
    name = "ponder",
    srcs = glob(["deps/ponder/src/*.cpp"]),
    hdrs = glob([
        "deps/ponder/include/ponder/*.hpp",
        "deps/ponder/include/ponder/*.inl",
        "deps/ponder/include/ponder/detail/*.hpp",
        "deps/ponder/include/ponder/detail/*.inl",
        "deps/ponder/include/ponder/uses/*.hpp",
        "deps/ponder/include/ponder/uses/*.inl",
        "deps/ponder/include/ponder/uses/detail/*.hpp",
    ]),
    defines = [
        "PONDER_USING_LUA",
    ],
    includes = [
        "deps/ponder/include",
    ],
    deps = ["@lua"],
)

cc_library(
    name = "Gwork",
    srcs = [
        # "attic/renderers/Direct2D/Direct2D.cpp",
        # "attic/renderers/Direct2D/Direct2DSample.cpp",
        # "attic/renderers/GDIPlus/GDIPlus.cpp",
        # "attic/renderers/GDIPlus/GDIPlusBuffered.cpp",
        # "attic/renderers/GDIPlus/GDIPlusSample.cpp",
        "source/gwork/source/Anim.cpp",
        "source/gwork/source/BaseRender.cpp",
        "source/gwork/source/ControlList.cpp",
        "source/gwork/source/Controls/Base.cpp",
        "source/gwork/source/Controls/Button.cpp",
        "source/gwork/source/Controls/Canvas.cpp",
        "source/gwork/source/Controls/CheckBox.cpp",
        "source/gwork/source/Controls/CollapsibleCategory.cpp",
        "source/gwork/source/Controls/ColorControls.cpp",
        "source/gwork/source/Controls/ColorPicker.cpp",
        "source/gwork/source/Controls/ComboBox.cpp",
        "source/gwork/source/Controls/CrossSplitter.cpp",
        "source/gwork/source/Controls/Dialog/FileOpen.cpp",
        "source/gwork/source/Controls/Dialog/FileSave.cpp",
        "source/gwork/source/Controls/Dialog/FolderOpen.cpp",
        "source/gwork/source/Controls/Dialog/Query.cpp",
        "source/gwork/source/Controls/DockBase.cpp",
        "source/gwork/source/Controls/DockedTabControl.cpp",
        "source/gwork/source/Controls/Dragger.cpp",
        "source/gwork/source/Controls/GroupBox.cpp",
        "source/gwork/source/Controls/HSVColorPicker.cpp",
        "source/gwork/source/Controls/HorizontalScrollBar.cpp",
        "source/gwork/source/Controls/HorizontalSlider.cpp",
        "source/gwork/source/Controls/ImagePanel.cpp",
        "source/gwork/source/Controls/Label.cpp",
        "source/gwork/source/Controls/LabelClickable.cpp",
        "source/gwork/source/Controls/ListBox.cpp",
        "source/gwork/source/Controls/Menu.cpp",
        "source/gwork/source/Controls/MenuItem.cpp",
        "source/gwork/source/Controls/MenuStrip.cpp",
        "source/gwork/source/Controls/NumericUpDown.cpp",
        "source/gwork/source/Controls/PageControl.cpp",
        "source/gwork/source/Controls/ProgressBar.cpp",
        "source/gwork/source/Controls/Properties.cpp",
        "source/gwork/source/Controls/PropertyTree.cpp",
        "source/gwork/source/Controls/RadioButton.cpp",
        "source/gwork/source/Controls/RadioButtonController.cpp",
        "source/gwork/source/Controls/Rectangle.cpp",
        "source/gwork/source/Controls/ResizableControl.cpp",
        "source/gwork/source/Controls/Resizer.cpp",
        "source/gwork/source/Controls/RichLabel.cpp",
        "source/gwork/source/Controls/ScrollBar.cpp",
        "source/gwork/source/Controls/ScrollBarBar.cpp",
        "source/gwork/source/Controls/ScrollBarButton.cpp",
        "source/gwork/source/Controls/ScrollControl.cpp",
        "source/gwork/source/Controls/Slider.cpp",
        "source/gwork/source/Controls/SplitterBar.cpp",
        "source/gwork/source/Controls/TabButton.cpp",
        "source/gwork/source/Controls/TabControl.cpp",
        "source/gwork/source/Controls/TabStrip.cpp",
        "source/gwork/source/Controls/Text.cpp",
        "source/gwork/source/Controls/TextBox.cpp",
        "source/gwork/source/Controls/TextBoxNumeric.cpp",
        "source/gwork/source/Controls/TreeControl.cpp",
        "source/gwork/source/Controls/TreeNode.cpp",
        "source/gwork/source/Controls/VerticalScrollBar.cpp",
        "source/gwork/source/Controls/VerticalSlider.cpp",
        "source/gwork/source/Controls/WindowCanvas.cpp",
        "source/gwork/source/Controls/WindowControl.cpp",
        "source/gwork/source/DragAndDrop.cpp",
        "source/gwork/source/Events.cpp",
        "source/gwork/source/Gwork.cpp",
        "source/gwork/source/Hook.cpp",
        "source/gwork/source/InputHandler.cpp",
        # "source/gwork/source/Reflection.cpp",
        "source/gwork/source/Skin.cpp",
        "source/gwork/source/Tooltip.cpp",
        # "source/platform/platforms/Allegro5Platform.cpp",
        "source/platform/platforms/CrossPlatform.cpp",
        # "source/platform/platforms/NullPlatform.cpp",
        "source/platform/platforms/PlatformCommon.cpp",
        "source/platform/platforms/Utility.cpp",
        # "source/platform/platforms/WindowsPlatform.cpp",
        # "source/platform/renderers/Allegro5/Allegro5.cpp",
        # "source/platform/renderers/DirectX11/DirectX11.cpp",
        # "source/platform/renderers/DirectX9/DirectX9.cpp",
        # "source/platform/renderers/Irrlicht/Irrlicht.cpp",
        # "source/platform/renderers/Null/Null.cpp",
        # "source/platform/renderers/OpenGL/DebugFont/OpenGL_DebugFont.cpp",
        # "source/platform/renderers/OpenGL/OpenGL.cpp",
        # "source/platform/renderers/OpenGLCore/OpenGLCore.cpp",
        "source/platform/renderers/SDL2/SDL2.cpp",
        # "source/platform/renderers/SFML2/SFML2.cpp",
        # "source/platform/renderers/Software/Software.cpp",
        # "source/samples/Allegro5/Allegro5Sample.cpp",
        # "source/samples/DirectX11/DirectX11Sample.cpp",
        # "source/samples/DirectX9/DirectX9Sample.cpp",
        # "source/samples/Irrlicht/IrrlichtSample.cpp",
        # "source/samples/Null/NullSample.cpp",
        # "source/samples/OpenGL/OpenGLSample.cpp",
        # "source/samples/OpenGLCore/OpenGLCoreSample.cpp",
        # "source/samples/SDL2/SDL2Sample.cpp",
        # "source/samples/SFML2/SFML2Sample.cpp",
        # "source/samples/Software/SoftwareSample.cpp",
        # "source/samples/WindowCanvas/CrossPlatform.cpp",

        # "source/test/source/Test.cpp",
        # "source/test/source/api/Button.cpp",
        # "source/test/source/api/Checkbox.cpp",
        # "source/test/source/api/CollapsibleList.cpp",
        # "source/test/source/api/ColorPicker.cpp",
        # "source/test/source/api/ComboBox.cpp",
        # "source/test/source/api/CrossSplitter.cpp",
        # "source/test/source/api/GroupBox.cpp",
        # "source/test/source/api/ImagePanel.cpp",
        # "source/test/source/api/Label.cpp",
        # "source/test/source/api/LabelMultiline.cpp",
        # "source/test/source/api/ListBox.cpp",
        # "source/test/source/api/MenuStrip.cpp",
        # "source/test/source/api/Numeric.cpp",
        # "source/test/source/api/PageControl.cpp",
        # "source/test/source/api/ProgressBar.cpp",
        # "source/test/source/api/Properties.cpp",
        # "source/test/source/api/RadioButton.cpp",
        # "source/test/source/api/ScrollControl.cpp",
        # "source/test/source/api/Slider.cpp",
        # "source/test/source/api/StatusBar.cpp",
        # "source/test/source/api/TabControl.cpp",
        # "source/test/source/api/TestAPI.cpp",
        # "source/test/source/api/TextBox.cpp",
        # "source/test/source/api/TreeControl.cpp",
        # "source/test/source/api/Window.cpp",
        # "source/test/source/reflection/ReflectButton.cpp",
        # "source/test/source/reflection/TestReflect.cpp",

        # "source/util/source/ControlFactory/FilePicker_Factory.cpp",
        # "source/util/source/ControlFactory/Image_Factory.cpp",
        # "source/util/source/ControlFactory/Label_Factory.cpp",
        # "source/util/source/ControlFactory/ListBox_Factory.cpp",
        # "source/util/source/ControlFactory/MenuStrip_Factory.cpp",
        # "source/util/source/ControlFactory/PageControl_Factory.cpp",
        # "source/util/source/ControlFactory/ProgressBar_Factory.cpp",
        # "source/util/source/ControlFactory/Rectangle_Factory.cpp",
        # "source/util/source/ControlFactory/Slider_Factory.cpp",
        # "source/util/source/ControlFactory/TextBox_Factory.cpp",
        # "source/util/source/ControlFactory/VerticalSplitter_Factory.cpp",
        # "source/util/source/ImportExport/Base.cpp",
        # "source/util/source/ImportExport/DesignerFormat.cpp",
        # "source/util/source/ImportExport/GworkUtil.cpp",
    ],
    hdrs = [
        # "attic/renderers/Direct2D/Direct2D.h",
        # "attic/renderers/GDIPlus/GDIPlus.h",
        # "attic/renderers/GDIPlus/GDIPlusRenderer.h",
        "source/gwork/include/Gwork/Align.h",
        "source/gwork/include/Gwork/Anim.h",
        "source/gwork/include/Gwork/ControlList.h",
        "source/gwork/include/Gwork/Controls.h",
        "source/gwork/include/Gwork/Controls/Base.h",
        "source/gwork/include/Gwork/Controls/Button.h",
        "source/gwork/include/Gwork/Controls/Canvas.h",
        "source/gwork/include/Gwork/Controls/CheckBox.h",
        "source/gwork/include/Gwork/Controls/CollapsibleCategory.h",
        "source/gwork/include/Gwork/Controls/CollapsibleList.h",
        "source/gwork/include/Gwork/Controls/ColorControls.h",
        "source/gwork/include/Gwork/Controls/ColorPicker.h",
        "source/gwork/include/Gwork/Controls/ComboBox.h",
        "source/gwork/include/Gwork/Controls/CrossSplitter.h",
        "source/gwork/include/Gwork/Controls/Dialogs/FileOpen.h",
        "source/gwork/include/Gwork/Controls/Dialogs/FileSave.h",
        "source/gwork/include/Gwork/Controls/Dialogs/FolderOpen.h",
        "source/gwork/include/Gwork/Controls/Dialogs/Query.h",
        "source/gwork/include/Gwork/Controls/DockBase.h",
        "source/gwork/include/Gwork/Controls/DockedTabControl.h",
        "source/gwork/include/Gwork/Controls/Dragger.h",
        "source/gwork/include/Gwork/Controls/FieldLabel.h",
        "source/gwork/include/Gwork/Controls/FilePicker.h",
        "source/gwork/include/Gwork/Controls/FolderPicker.h",
        "source/gwork/include/Gwork/Controls/GroupBox.h",
        "source/gwork/include/Gwork/Controls/HSVColorPicker.h",
        "source/gwork/include/Gwork/Controls/Highlight.h",
        "source/gwork/include/Gwork/Controls/HorizontalScrollBar.h",
        "source/gwork/include/Gwork/Controls/HorizontalSlider.h",
        "source/gwork/include/Gwork/Controls/ImagePanel.h",
        "source/gwork/include/Gwork/Controls/Label.h",
        "source/gwork/include/Gwork/Controls/LabelClickable.h",
        "source/gwork/include/Gwork/Controls/Layout/Position.h",
        "source/gwork/include/Gwork/Controls/Layout/Table.h",
        "source/gwork/include/Gwork/Controls/Layout/Tile.h",
        "source/gwork/include/Gwork/Controls/ListBox.h",
        "source/gwork/include/Gwork/Controls/Menu.h",
        "source/gwork/include/Gwork/Controls/MenuItem.h",
        "source/gwork/include/Gwork/Controls/MenuStrip.h",
        "source/gwork/include/Gwork/Controls/Modal.h",
        "source/gwork/include/Gwork/Controls/NumericUpDown.h",
        "source/gwork/include/Gwork/Controls/PageControl.h",
        "source/gwork/include/Gwork/Controls/ProgressBar.h",
        "source/gwork/include/Gwork/Controls/Properties.h",
        "source/gwork/include/Gwork/Controls/Property/BaseProperty.h",
        "source/gwork/include/Gwork/Controls/Property/Checkbox.h",
        "source/gwork/include/Gwork/Controls/Property/ColorSelector.h",
        "source/gwork/include/Gwork/Controls/Property/ComboBox.h",
        "source/gwork/include/Gwork/Controls/Property/File.h",
        "source/gwork/include/Gwork/Controls/Property/Folder.h",
        "source/gwork/include/Gwork/Controls/Property/Text.h",
        "source/gwork/include/Gwork/Controls/PropertyTree.h",
        "source/gwork/include/Gwork/Controls/RadioButton.h",
        "source/gwork/include/Gwork/Controls/RadioButtonController.h",
        "source/gwork/include/Gwork/Controls/Rectangle.h",
        "source/gwork/include/Gwork/Controls/ResizableControl.h",
        "source/gwork/include/Gwork/Controls/Resizer.h",
        "source/gwork/include/Gwork/Controls/RichLabel.h",
        "source/gwork/include/Gwork/Controls/ScrollBar.h",
        "source/gwork/include/Gwork/Controls/ScrollBarBar.h",
        "source/gwork/include/Gwork/Controls/ScrollBarButton.h",
        "source/gwork/include/Gwork/Controls/ScrollControl.h",
        "source/gwork/include/Gwork/Controls/Slider.h",
        "source/gwork/include/Gwork/Controls/SplitterBar.h",
        "source/gwork/include/Gwork/Controls/Splitters.h",
        "source/gwork/include/Gwork/Controls/StatusBar.h",
        "source/gwork/include/Gwork/Controls/TabButton.h",
        "source/gwork/include/Gwork/Controls/TabControl.h",
        "source/gwork/include/Gwork/Controls/TabStrip.h",
        "source/gwork/include/Gwork/Controls/TabTitleBar.h",
        "source/gwork/include/Gwork/Controls/Text.h",
        "source/gwork/include/Gwork/Controls/TextBox.h",
        "source/gwork/include/Gwork/Controls/ToolBar.h",
        "source/gwork/include/Gwork/Controls/TreeControl.h",
        "source/gwork/include/Gwork/Controls/TreeNode.h",
        "source/gwork/include/Gwork/Controls/VerticalScrollBar.h",
        "source/gwork/include/Gwork/Controls/VerticalSlider.h",
        "source/gwork/include/Gwork/Controls/WindowButtons.h",
        "source/gwork/include/Gwork/Controls/WindowCanvas.h",
        "source/gwork/include/Gwork/Controls/WindowControl.h",
        "source/gwork/include/Gwork/DragAndDrop.h",
        "source/gwork/include/Gwork/Events.h",
        "source/gwork/include/Gwork/Gwork.h",
        "source/gwork/include/Gwork/Hook.h",
        "source/gwork/include/Gwork/InputHandler.h",
        # "source/gwork/include/Gwork/Reflection.h",
        "source/gwork/include/Gwork/Skin.h",
        "source/gwork/include/Gwork/Skins/Simple.h",
        "source/gwork/include/Gwork/Skins/TexturedBase.h",
        "source/gwork/include/Gwork/Skins/Texturing.h",
        "source/gwork/include/Gwork/Tooltip.h",
        "source/gwork/include/Gwork/UiTypes.h",
        "source/gwork/include/Gwork/UserData.h",
        "source/platform/include/Gwork/BaseRender.h",
        "source/platform/include/Gwork/Config.h",
        "source/platform/include/Gwork/External/stb_image.h",
        "source/platform/include/Gwork/External/stb_image_write.h",
        "source/platform/include/Gwork/External/stb_truetype.h",
        # "source/platform/include/Gwork/Input/Allegro5.h",
        # "source/platform/include/Gwork/Input/GLFW3.h",
        # "source/platform/include/Gwork/Input/Irrlicht.h",
        # "source/platform/include/Gwork/Input/Null.h",
        "source/platform/include/Gwork/Input/SDL2.h",
        # "source/platform/include/Gwork/Input/SFML2.h",
        # "source/platform/include/Gwork/Input/Windows.h",
        "source/platform/include/Gwork/InputEventListener.h",
        "source/platform/include/Gwork/Platform.h",
        "source/platform/include/Gwork/PlatformCommon.h",
        "source/platform/include/Gwork/PlatformTypes.h",
        # "source/platform/include/Gwork/Renderers/Allegro5.h",
        # "source/platform/include/Gwork/Renderers/DirectX11.h",
        # "source/platform/include/Gwork/Renderers/DirectX9.h",
        # "source/platform/include/Gwork/Renderers/Irrlicht.h",
        # "source/platform/include/Gwork/Renderers/Null.h",
        # "source/platform/include/Gwork/Renderers/OpenGL.h",
        # "source/platform/include/Gwork/Renderers/OpenGLCore.h",
        # "source/platform/include/Gwork/Renderers/OpenGL_DebugFont.h",
        "source/platform/include/Gwork/Renderers/SDL2.h",
        # "source/platform/include/Gwork/Renderers/SFML2.h",
        # "source/platform/include/Gwork/Renderers/Software.h",
        "source/platform/include/Gwork/Utility.h",
        "source/platform/include/Gwork/WindowProvider.h",
        "source/platform/platforms/DebugBreak.h",
        # "source/platform/renderers/OpenGL/DebugFont/FontData.h",

        # "source/test/include/Gwork/Test/Test.h",
        # "source/test/include/Gwork/Test/TestAPI.h",
        # "source/test/include/Gwork/Test/TestReflect.h",
        
        # "source/util/include/Gwork/Util/ControlFactory.h",
        # "source/util/include/Gwork/Util/ImportExport.h",
        # "source/util/source/ImportExport/DesignerFormat.h",
        # "source/util/source/ImportExport/GworkUtil.h",
        # "source/util/source/ImportExport/rapidjson/allocators.h",
        # "source/util/source/ImportExport/rapidjson/document.h",
        # "source/util/source/ImportExport/rapidjson/encodedstream.h",
        # "source/util/source/ImportExport/rapidjson/encodings.h",
        # "source/util/source/ImportExport/rapidjson/filereadstream.h",
        # "source/util/source/ImportExport/rapidjson/filestream.h",
        # "source/util/source/ImportExport/rapidjson/filewritestream.h",
        # "source/util/source/ImportExport/rapidjson/internal/pow10.h",
        # "source/util/source/ImportExport/rapidjson/internal/stack.h",
        # "source/util/source/ImportExport/rapidjson/internal/strfunc.h",
        # "source/util/source/ImportExport/rapidjson/prettywriter.h",
        # "source/util/source/ImportExport/rapidjson/rapidjson.h",
        # "source/util/source/ImportExport/rapidjson/reader.h",
        # "source/util/source/ImportExport/rapidjson/stringbuffer.h",
        # "source/util/source/ImportExport/rapidjson/writer.h",
    ],
    defines = [
        # "GWK_REFLECT=1",
        # "PONDER_STATIC",
    ],
    includes = [
        "source/gwork/include",
        "source/platform/include",
        # "source/test/include",
        # "source/util/include",
    ],
    deps = [
        # ":ponder",
        "@sdl2",
        "@sdl2_image",
        "@sdl2_ttf",
    ],
    visibility = ["//visibility:public"],
)

cc_library(
    name = "testing",
    hdrs = [

    ],
    srcs = [

    ]
)

cc_binary(
    name = "SDL2Sample",
    srcs = ["source/samples/SDL2/SDL2Sample.cpp"],
    data = glob([
        "source/gwork/resource/*.*",
    ]),
    deps = [
        ":Gwork",
        "@sdl2",
        "@sdl2_ttf",
    ],
)