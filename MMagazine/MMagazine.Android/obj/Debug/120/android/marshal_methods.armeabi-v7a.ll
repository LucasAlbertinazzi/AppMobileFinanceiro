; ModuleID = 'obj\Debug\120\android\marshal_methods.armeabi-v7a.ll'
source_filename = "obj\Debug\120\android\marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 4
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [244 x i32] [
	i32 11257817, ; 0: OxyPlot.dll => 0xabc7d9 => 26
	i32 32687329, ; 1: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 75
	i32 34715100, ; 2: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 105
	i32 39109920, ; 3: Newtonsoft.Json.dll => 0x254c520 => 25
	i32 57263871, ; 4: Xamarin.Forms.Core.dll => 0x369c6ff => 100
	i32 88799905, ; 5: Acr.UserDialogs => 0x54afaa1 => 13
	i32 101534019, ; 6: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 89
	i32 120558881, ; 7: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 89
	i32 165246403, ; 8: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 56
	i32 182336117, ; 9: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 90
	i32 209399409, ; 10: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 54
	i32 220171995, ; 11: System.Diagnostics.Debug => 0xd1f8edb => 4
	i32 230216969, ; 12: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 70
	i32 231814094, ; 13: System.Globalization => 0xdd133ce => 8
	i32 232815796, ; 14: System.Web.Services => 0xde07cb4 => 112
	i32 261689757, ; 15: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 59
	i32 278686392, ; 16: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 74
	i32 280482487, ; 17: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 68
	i32 318968648, ; 18: Xamarin.AndroidX.Activity.dll => 0x13031348 => 46
	i32 321597661, ; 19: System.Numerics => 0x132b30dd => 41
	i32 342366114, ; 20: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 72
	i32 441335492, ; 21: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 58
	i32 442521989, ; 22: Xamarin.Essentials => 0x1a605985 => 99
	i32 442565967, ; 23: System.Collections => 0x1a61054f => 6
	i32 450948140, ; 24: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 67
	i32 465846621, ; 25: mscorlib => 0x1bc4415d => 23
	i32 469710990, ; 26: System.dll => 0x1bff388e => 39
	i32 476646585, ; 27: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 68
	i32 486930444, ; 28: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 79
	i32 525008092, ; 29: SkiaSharp.dll => 0x1f4afcdc => 34
	i32 526420162, ; 30: System.Transactions.dll => 0x1f6088c2 => 107
	i32 545304856, ; 31: System.Runtime.Extensions => 0x2080b118 => 116
	i32 605376203, ; 32: System.IO.Compression.FileSystem => 0x24154ecb => 110
	i32 627609679, ; 33: Xamarin.AndroidX.CustomView => 0x2568904f => 63
	i32 663517072, ; 34: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 95
	i32 666292255, ; 35: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 51
	i32 690569205, ; 36: System.Xml.Linq.dll => 0x29293ff5 => 45
	i32 691439157, ; 37: Acr.UserDialogs.dll => 0x29368635 => 13
	i32 775507847, ; 38: System.IO.Compression => 0x2e394f87 => 109
	i32 809851609, ; 39: System.Drawing.Common.dll => 0x30455ad9 => 2
	i32 843511501, ; 40: Xamarin.AndroidX.Print => 0x3246f6cd => 86
	i32 851180388, ; 41: Main => 0x32bbfb64 => 17
	i32 877678880, ; 42: System.Globalization.dll => 0x34505120 => 8
	i32 886248193, ; 43: Microcharts.Droid => 0x34d31301 => 19
	i32 902159924, ; 44: Rg.Plugins.Popup => 0x35c5de34 => 32
	i32 913382283, ; 45: Plugin.Settings => 0x36711b8b => 31
	i32 928116545, ; 46: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 105
	i32 948616524, ; 47: MR.Gestures => 0x388abd4c => 22
	i32 955402788, ; 48: Newtonsoft.Json => 0x38f24a24 => 25
	i32 967690846, ; 49: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 72
	i32 974778368, ; 50: FormsViewGroup.dll => 0x3a19f000 => 15
	i32 992768348, ; 51: System.Collections.dll => 0x3b2c715c => 6
	i32 1011788335, ; 52: MMagazine.Android.dll => 0x3c4eaa2f => 0
	i32 1012816738, ; 53: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 88
	i32 1035644815, ; 54: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 50
	i32 1042160112, ; 55: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 102
	i32 1052210849, ; 56: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 76
	i32 1098259244, ; 57: System => 0x41761b2c => 39
	i32 1175144683, ; 58: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 93
	i32 1178241025, ; 59: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 83
	i32 1186231468, ; 60: Newtonsoft.Json.Bson.dll => 0x46b474ac => 24
	i32 1201029973, ; 61: StarkbankEcdsa => 0x47964355 => 37
	i32 1204270330, ; 62: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 51
	i32 1267360935, ; 63: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 94
	i32 1293217323, ; 64: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 65
	i32 1324164729, ; 65: System.Linq => 0x4eed2679 => 117
	i32 1364015309, ; 66: System.IO => 0x514d38cd => 114
	i32 1365406463, ; 67: System.ServiceModel.Internals.dll => 0x516272ff => 113
	i32 1376866003, ; 68: Xamarin.AndroidX.SavedState => 0x52114ed3 => 88
	i32 1395363092, ; 69: Plugin.Settings.dll => 0x532b8d14 => 31
	i32 1395857551, ; 70: Xamarin.AndroidX.Media.dll => 0x5333188f => 80
	i32 1406073936, ; 71: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 60
	i32 1433687999, ; 72: SendGrid.dll => 0x557457bf => 33
	i32 1457743152, ; 73: System.Runtime.Extensions.dll => 0x56e36530 => 116
	i32 1460219004, ; 74: Xamarin.Forms.Xaml => 0x57092c7c => 103
	i32 1462112819, ; 75: System.IO.Compression.dll => 0x57261233 => 109
	i32 1469204771, ; 76: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 49
	i32 1543031311, ; 77: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 115
	i32 1550322496, ; 78: System.Reflection.Extensions.dll => 0x5c680b40 => 10
	i32 1565248321, ; 79: Plugin.Settings.Abstractions => 0x5d4bcb41 => 30
	i32 1582372066, ; 80: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 64
	i32 1582526884, ; 81: Microcharts.Forms.dll => 0x5e5371a4 => 20
	i32 1592978981, ; 82: System.Runtime.Serialization.dll => 0x5ef2ee25 => 12
	i32 1622152042, ; 83: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 78
	i32 1624863272, ; 84: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 97
	i32 1636350590, ; 85: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 62
	i32 1639515021, ; 86: System.Net.Http.dll => 0x61b9038d => 11
	i32 1639986890, ; 87: System.Text.RegularExpressions => 0x61c036ca => 115
	i32 1657153582, ; 88: System.Runtime => 0x62c6282e => 43
	i32 1658241508, ; 89: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 91
	i32 1658251792, ; 90: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 104
	i32 1670060433, ; 91: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 59
	i32 1701541528, ; 92: System.Diagnostics.Debug.dll => 0x656b7698 => 4
	i32 1722051300, ; 93: SkiaSharp.Views.Forms => 0x66a46ae4 => 36
	i32 1726116996, ; 94: System.Reflection.dll => 0x66e27484 => 118
	i32 1729485958, ; 95: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 55
	i32 1765942094, ; 96: System.Reflection.Extensions => 0x6942234e => 10
	i32 1766324549, ; 97: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 90
	i32 1776026572, ; 98: System.Core.dll => 0x69dc03cc => 38
	i32 1788241197, ; 99: Xamarin.AndroidX.Fragment => 0x6a96652d => 67
	i32 1808609942, ; 100: Xamarin.AndroidX.Loader => 0x6bcd3296 => 78
	i32 1813201214, ; 101: Xamarin.Google.Android.Material => 0x6c13413e => 104
	i32 1818569960, ; 102: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 84
	i32 1824175904, ; 103: System.Text.Encoding.Extensions => 0x6cbab720 => 9
	i32 1867746548, ; 104: Xamarin.Essentials.dll => 0x6f538cf4 => 99
	i32 1878053835, ; 105: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 103
	i32 1885316902, ; 106: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 52
	i32 1919157823, ; 107: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 81
	i32 1941715387, ; 108: Main.dll => 0x73bc39bb => 17
	i32 2019465201, ; 109: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 76
	i32 2055257422, ; 110: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 73
	i32 2069514766, ; 111: Newtonsoft.Json.Bson => 0x7b5a4a0e => 24
	i32 2079903147, ; 112: System.Runtime.dll => 0x7bf8cdab => 43
	i32 2090596640, ; 113: System.Numerics.Vectors => 0x7c9bf920 => 42
	i32 2097448633, ; 114: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 69
	i32 2126786730, ; 115: Xamarin.Forms.Platform.Android => 0x7ec430aa => 101
	i32 2201231467, ; 116: System.Net.Http => 0x8334206b => 11
	i32 2210798277, ; 117: SendGrid => 0x83c61ac5 => 33
	i32 2217644978, ; 118: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 93
	i32 2244775296, ; 119: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 79
	i32 2256548716, ; 120: Xamarin.AndroidX.MultiDex => 0x8680336c => 81
	i32 2261435625, ; 121: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 71
	i32 2279755925, ; 122: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 87
	i32 2306217607, ; 123: OxyPlot.Xamarin.Forms => 0x89761687 => 28
	i32 2315684594, ; 124: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 47
	i32 2368005991, ; 125: System.Xml.ReaderWriter.dll => 0x8d24e767 => 119
	i32 2392818924, ; 126: System.Net.Http.Formatting.dll => 0x8e9f84ec => 40
	i32 2409053734, ; 127: Xamarin.AndroidX.Preference.dll => 0x8f973e26 => 85
	i32 2454642406, ; 128: System.Text.Encoding.dll => 0x924edee6 => 5
	i32 2465532216, ; 129: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 58
	i32 2471841756, ; 130: netstandard.dll => 0x93554fdc => 1
	i32 2475788418, ; 131: Java.Interop.dll => 0x93918882 => 16
	i32 2501346920, ; 132: System.Data.DataSetExtensions => 0x95178668 => 108
	i32 2505896520, ; 133: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 75
	i32 2563143864, ; 134: AndHUD.dll => 0x98c678b8 => 14
	i32 2568748418, ; 135: OxyPlot.Xamarin.Forms.Platform.Android => 0x991bfd82 => 29
	i32 2581819634, ; 136: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 94
	i32 2585220780, ; 137: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 9
	i32 2620871830, ; 138: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 62
	i32 2624644809, ; 139: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 66
	i32 2633051222, ; 140: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 74
	i32 2689529426, ; 141: OxyPlot.Xamarin.Android => 0xa04ef652 => 27
	i32 2693849962, ; 142: System.IO.dll => 0xa090e36a => 114
	i32 2701096212, ; 143: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 91
	i32 2715334215, ; 144: System.Threading.Tasks.dll => 0xa1d8b647 => 3
	i32 2724373263, ; 145: System.Runtime.Numerics.dll => 0xa262a30f => 7
	i32 2732626843, ; 146: Xamarin.AndroidX.Activity => 0xa2e0939b => 46
	i32 2737747696, ; 147: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 49
	i32 2747619038, ; 148: OxyPlot.Xamarin.Android.dll => 0xa3c556de => 27
	i32 2766581644, ; 149: Xamarin.Forms.Core => 0xa4e6af8c => 100
	i32 2778768386, ; 150: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 96
	i32 2795602088, ; 151: SkiaSharp.Views.Android.dll => 0xa6a180a8 => 35
	i32 2810250172, ; 152: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 60
	i32 2819470561, ; 153: System.Xml.dll => 0xa80db4e1 => 44
	i32 2853208004, ; 154: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 96
	i32 2855708567, ; 155: Xamarin.AndroidX.Transition => 0xaa36a797 => 92
	i32 2861816565, ; 156: Rg.Plugins.Popup.dll => 0xaa93daf5 => 32
	i32 2901442782, ; 157: System.Reflection => 0xacf080de => 118
	i32 2903344695, ; 158: System.ComponentModel.Composition => 0xad0d8637 => 111
	i32 2905242038, ; 159: mscorlib.dll => 0xad2a79b6 => 23
	i32 2912489636, ; 160: SkiaSharp.Views.Android => 0xad9910a4 => 35
	i32 2916838712, ; 161: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 97
	i32 2919462931, ; 162: System.Numerics.Vectors.dll => 0xae037813 => 42
	i32 2921128767, ; 163: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 48
	i32 2974793899, ; 164: SkiaSharp.Views.Forms.dll => 0xb14fc0ab => 36
	i32 2978675010, ; 165: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 65
	i32 3024354802, ; 166: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 70
	i32 3036068679, ; 167: Microcharts.Droid.dll => 0xb4f6bb47 => 19
	i32 3044182254, ; 168: FormsViewGroup => 0xb57288ee => 15
	i32 3057625584, ; 169: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 82
	i32 3075834255, ; 170: System.Threading.Tasks => 0xb755818f => 3
	i32 3085392760, ; 171: OxyPlot => 0xb7e75b78 => 26
	i32 3111772706, ; 172: System.Runtime.Serialization => 0xb979e222 => 12
	i32 3147431871, ; 173: OxyPlot.Xamarin.Forms.dll => 0xbb99ffbf => 28
	i32 3204380047, ; 174: System.Data.dll => 0xbefef58f => 106
	i32 3211777861, ; 175: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 64
	i32 3220365878, ; 176: System.Threading => 0xbff2e236 => 120
	i32 3247949154, ; 177: Mono.Security => 0xc197c562 => 121
	i32 3258312781, ; 178: Xamarin.AndroidX.CardView => 0xc235e84d => 55
	i32 3267021929, ; 179: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 53
	i32 3271840132, ; 180: StarkbankEcdsa.dll => 0xc3045184 => 37
	i32 3299363146, ; 181: System.Text.Encoding => 0xc4a8494a => 5
	i32 3317135071, ; 182: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 63
	i32 3317144872, ; 183: System.Data => 0xc5b79d28 => 106
	i32 3340387945, ; 184: SkiaSharp => 0xc71a4669 => 34
	i32 3340431453, ; 185: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 52
	i32 3346324047, ; 186: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 83
	i32 3353484488, ; 187: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 69
	i32 3353544232, ; 188: Xamarin.CommunityToolkit.dll => 0xc7e30628 => 98
	i32 3362522851, ; 189: Xamarin.AndroidX.Core => 0xc86c06e3 => 61
	i32 3366347497, ; 190: Java.Interop => 0xc8a662e9 => 16
	i32 3374999561, ; 191: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 87
	i32 3404865022, ; 192: System.ServiceModel.Internals => 0xcaf21dfe => 113
	i32 3407215217, ; 193: Xamarin.CommunityToolkit => 0xcb15fa71 => 98
	i32 3429136800, ; 194: System.Xml => 0xcc6479a0 => 44
	i32 3430777524, ; 195: netstandard => 0xcc7d82b4 => 1
	i32 3441283291, ; 196: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 66
	i32 3442543374, ; 197: AndHUD => 0xcd310b0e => 14
	i32 3455791806, ; 198: Microcharts => 0xcdfb32be => 18
	i32 3476120550, ; 199: Mono.Android => 0xcf3163e6 => 21
	i32 3486231360, ; 200: Plugin.Settings.Abstractions.dll => 0xcfcbab40 => 30
	i32 3486566296, ; 201: System.Transactions => 0xcfd0c798 => 107
	i32 3493954962, ; 202: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 57
	i32 3501239056, ; 203: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 53
	i32 3509114376, ; 204: System.Xml.Linq => 0xd128d608 => 45
	i32 3536029504, ; 205: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 101
	i32 3567349600, ; 206: System.ComponentModel.Composition.dll => 0xd4a16f60 => 111
	i32 3608519521, ; 207: System.Linq.dll => 0xd715a361 => 117
	i32 3618140916, ; 208: Xamarin.AndroidX.Preference => 0xd7a872f4 => 85
	i32 3627220390, ; 209: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 86
	i32 3632359727, ; 210: Xamarin.Forms.Platform => 0xd881692f => 102
	i32 3633644679, ; 211: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 48
	i32 3641597786, ; 212: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 73
	i32 3668042751, ; 213: Microcharts.dll => 0xdaa1e3ff => 18
	i32 3672681054, ; 214: Mono.Android.dll => 0xdae8aa5e => 21
	i32 3676310014, ; 215: System.Web.Services.dll => 0xdb2009fe => 112
	i32 3682565725, ; 216: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 54
	i32 3684561358, ; 217: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 57
	i32 3689375977, ; 218: System.Drawing.Common => 0xdbe768e9 => 2
	i32 3718780102, ; 219: Xamarin.AndroidX.Annotation => 0xdda814c6 => 47
	i32 3724971120, ; 220: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 82
	i32 3736173093, ; 221: MR.Gestures.dll => 0xdeb17a25 => 22
	i32 3758932259, ; 222: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 71
	i32 3786282454, ; 223: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 56
	i32 3822602673, ; 224: Xamarin.AndroidX.Media => 0xe3d849b1 => 80
	i32 3829621856, ; 225: System.Numerics.dll => 0xe4436460 => 41
	i32 3854864648, ; 226: OxyPlot.Xamarin.Forms.Platform.Android.dll => 0xe5c49108 => 29
	i32 3885922214, ; 227: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 92
	i32 3896760992, ; 228: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 61
	i32 3903721208, ; 229: Microcharts.Forms => 0xe8ae0ef8 => 20
	i32 3920810846, ; 230: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 110
	i32 3921031405, ; 231: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 95
	i32 3928044579, ; 232: System.Xml.ReaderWriter => 0xea213423 => 119
	i32 3931092270, ; 233: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 84
	i32 3945713374, ; 234: System.Data.DataSetExtensions.dll => 0xeb2ecede => 108
	i32 3955647286, ; 235: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 50
	i32 4073602200, ; 236: System.Threading.dll => 0xf2ce3c98 => 120
	i32 4105002889, ; 237: Mono.Security.dll => 0xf4ad5f89 => 121
	i32 4131741489, ; 238: System.Net.Http.Formatting => 0xf6455f31 => 40
	i32 4151237749, ; 239: System.Core => 0xf76edc75 => 38
	i32 4182413190, ; 240: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 77
	i32 4265488002, ; 241: MMagazine.Android => 0xfe3e2e82 => 0
	i32 4274976490, ; 242: System.Runtime.Numerics => 0xfecef6ea => 7
	i32 4292120959 ; 243: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 77
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [244 x i32] [
	i32 26, i32 75, i32 105, i32 25, i32 100, i32 13, i32 89, i32 89, ; 0..7
	i32 56, i32 90, i32 54, i32 4, i32 70, i32 8, i32 112, i32 59, ; 8..15
	i32 74, i32 68, i32 46, i32 41, i32 72, i32 58, i32 99, i32 6, ; 16..23
	i32 67, i32 23, i32 39, i32 68, i32 79, i32 34, i32 107, i32 116, ; 24..31
	i32 110, i32 63, i32 95, i32 51, i32 45, i32 13, i32 109, i32 2, ; 32..39
	i32 86, i32 17, i32 8, i32 19, i32 32, i32 31, i32 105, i32 22, ; 40..47
	i32 25, i32 72, i32 15, i32 6, i32 0, i32 88, i32 50, i32 102, ; 48..55
	i32 76, i32 39, i32 93, i32 83, i32 24, i32 37, i32 51, i32 94, ; 56..63
	i32 65, i32 117, i32 114, i32 113, i32 88, i32 31, i32 80, i32 60, ; 64..71
	i32 33, i32 116, i32 103, i32 109, i32 49, i32 115, i32 10, i32 30, ; 72..79
	i32 64, i32 20, i32 12, i32 78, i32 97, i32 62, i32 11, i32 115, ; 80..87
	i32 43, i32 91, i32 104, i32 59, i32 4, i32 36, i32 118, i32 55, ; 88..95
	i32 10, i32 90, i32 38, i32 67, i32 78, i32 104, i32 84, i32 9, ; 96..103
	i32 99, i32 103, i32 52, i32 81, i32 17, i32 76, i32 73, i32 24, ; 104..111
	i32 43, i32 42, i32 69, i32 101, i32 11, i32 33, i32 93, i32 79, ; 112..119
	i32 81, i32 71, i32 87, i32 28, i32 47, i32 119, i32 40, i32 85, ; 120..127
	i32 5, i32 58, i32 1, i32 16, i32 108, i32 75, i32 14, i32 29, ; 128..135
	i32 94, i32 9, i32 62, i32 66, i32 74, i32 27, i32 114, i32 91, ; 136..143
	i32 3, i32 7, i32 46, i32 49, i32 27, i32 100, i32 96, i32 35, ; 144..151
	i32 60, i32 44, i32 96, i32 92, i32 32, i32 118, i32 111, i32 23, ; 152..159
	i32 35, i32 97, i32 42, i32 48, i32 36, i32 65, i32 70, i32 19, ; 160..167
	i32 15, i32 82, i32 3, i32 26, i32 12, i32 28, i32 106, i32 64, ; 168..175
	i32 120, i32 121, i32 55, i32 53, i32 37, i32 5, i32 63, i32 106, ; 176..183
	i32 34, i32 52, i32 83, i32 69, i32 98, i32 61, i32 16, i32 87, ; 184..191
	i32 113, i32 98, i32 44, i32 1, i32 66, i32 14, i32 18, i32 21, ; 192..199
	i32 30, i32 107, i32 57, i32 53, i32 45, i32 101, i32 111, i32 117, ; 200..207
	i32 85, i32 86, i32 102, i32 48, i32 73, i32 18, i32 21, i32 112, ; 208..215
	i32 54, i32 57, i32 2, i32 47, i32 82, i32 22, i32 71, i32 56, ; 216..223
	i32 80, i32 41, i32 29, i32 92, i32 61, i32 20, i32 110, i32 95, ; 224..231
	i32 119, i32 84, i32 108, i32 50, i32 120, i32 121, i32 40, i32 38, ; 232..239
	i32 77, i32 0, i32 7, i32 77 ; 240..243
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="all" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 4
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 4
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ 797e2e13d1706ace607da43703769c5a55c4de60"}
!llvm.linker.options = !{}
