using UnityEditor;

public class WebGLBuilder
{
    static void build()
    {
        string[] scenes =
        {
            "Assets/Scenes/Scene1.unity"
        };

        var pathToDeploy = "builds/WebGL/";

        BuildPipeline.BuildPlayer(scenes, pathToDeploy, BuildTarget.WebGL, BuildOptions.None);
    }
}
