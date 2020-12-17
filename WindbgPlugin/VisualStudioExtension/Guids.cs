// Guids.cs
// MUST match guids.h
using System;

namespace VSPackage.BsodSurvivorPlugin
{
    static class GuidList
    {
        public const string guidBsodSurvivorPluginPkgString = "127d8bdd-8cd7-491a-9a63-9b4e89118da9";
        public const string guidBsodSurvivorPluginCmdSetString = "7fcb87e9-4f0c-4713-8217-5bef43dc0de4";
        public const string guidBsodSurvivorPluginProjectCmdSetString = "9019df3e-c4aa-499b-b46a-0bcb43d006db";
        public const string guidBsodSurvivorPluginMultiProjectCmdSetString = "a21f0124-e59b-4ac6-8db6-fc01601237d7";
        public const string guidBsodSurvivorPluginMultiItemProjectCmdSetString = "6db8495b-52d3-45d8-ba02-09a3938aa893";

        public static readonly Guid guidBsodSurvivorPluginCmdSet = new Guid(guidBsodSurvivorPluginCmdSetString);
        public static readonly Guid guidBsodSurvivorPluginProjectCmdSet = new Guid(guidBsodSurvivorPluginProjectCmdSetString);
        public static readonly Guid guidBsodSurvivorPluginMultiProjectCmdSet = new Guid(guidBsodSurvivorPluginMultiProjectCmdSetString);
        public static readonly Guid guidBsodSurvivorPluginMultiItemProjectCmdSet = new Guid(guidBsodSurvivorPluginMultiItemProjectCmdSetString);
    };
}